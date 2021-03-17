package com.achaoub.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.achaoub.model.Personne;
import com.achaoub.model.Referenciel;
import com.achaoub.service.PersonneService;
import com.achaoub.service.ReferencielService;

import jakarta.validation.Valid;

@Controller
public class MyController {

	@Autowired
	private PersonneService servicePersonne;

	@Autowired
	private ReferencielService serviceReferenciel;

	public PersonneService getServicePersonne() {
		return servicePersonne;
	}

	public void setServicePersonne(PersonneService servicePersonne) {
		this.servicePersonne = servicePersonne;
	}

	public ReferencielService getServiceReferenciel() {
		return serviceReferenciel;
	}

	public void setServiceReferenciel(ReferencielService serviceReferenciel) {
		this.serviceReferenciel = serviceReferenciel;
	}

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String getDefaultHomePage() {
		return "home";
	}

	@RequestMapping(value = "/registration_form", method = RequestMethod.GET)
	public String getDefaultRegistrationPage(Model model) {
		model.addAttribute("referenciels", getServiceReferenciel().getAllReferenciel());
		return "Inscription_Personne";
	}

	@RequestMapping(value = "/login_form", method = RequestMethod.GET)
	public String getDefaultLoginPage() {
		return "Login_Personne";
	}
	
	@RequestMapping(value = "/deconnexion", method = RequestMethod.GET)
	public String getDefaultDeconnexionPersonePage(Model model,HttpServletRequest request) {
		HttpSession session = request.getSession();
		session.removeAttribute("Session_ADMIN");
		session.removeAttribute("Session_APPRENANT");
		return "Login_Personne";
	}

	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public String getDefaultListPersonePage(Model model) {
		model.addAttribute("list", getServicePersonne().search("Ach"));
		return "welcome";
	}

	@RequestMapping(value = "/Inscription", method = RequestMethod.POST)
	public ModelAndView registerSuccess(@ModelAttribute("personne") Personne personne, @RequestParam String Refer) {

		Integer ref = Integer.parseInt(Refer);
		Referenciel refId = getServiceReferenciel().getReferencielByID(ref);
		personne.setReferenciel(refId);
		
		getServicePersonne().savePersonne(personne);
		ModelAndView modelAndView = new ModelAndView("welcome");
		modelAndView.addObject("student", personne);
		
		return modelAndView;
	}

	@RequestMapping(value = "/Login", method = RequestMethod.POST)
	public ModelAndView loginSuccess(@Valid @ModelAttribute("personne") Personne personne, HttpServletRequest request) {
		ModelAndView modelAndView = new ModelAndView("Admin_Page");
		HttpSession session = request.getSession(true);
		Personne pers = getServicePersonne().validatePersonne(personne.getEmailPersonne(),
				personne.getPasswordPersonne());
		if ((pers != null) && (pers.getRolePersonne().equals("Admin"))) {
			session.setAttribute("Session_ADMIN", pers);
			getServicePersonne().serialisationPersonnes();
			ArrayList<Personne> list = getServicePersonne().deserialisationPersonnes();
			ArrayList<Personne> listPers = getServicePersonne().getAllPersonnes();
		
			if (pers.isStatusPersonne()) {
				modelAndView.addObject("student", personne);
				modelAndView.addObject("session", session.getAttribute("Session_ADMIN"));
				modelAndView.addObject("listApp",list);
				modelAndView.addObject("listAppDB",listPers);
				
				return modelAndView;
			} else
				modelAndView = new ModelAndView("Att_Page");

		} else if ((pers != null) && (pers.getRolePersonne().equals("Apprenant"))) {
			session.setAttribute("Session_Apprenant", pers);
			if (pers.isStatusPersonne()) {
				System.out.println(pers.toString());
				modelAndView.addObject("student", personne);
				modelAndView.addObject("session", session.getAttribute("Session_APPRENANT"));
				modelAndView = new ModelAndView("welcome");
			} else
				modelAndView = new ModelAndView("Att_Page");

		} else {
			modelAndView = new ModelAndView("notFound");
		}
		return modelAndView;
	}
}
