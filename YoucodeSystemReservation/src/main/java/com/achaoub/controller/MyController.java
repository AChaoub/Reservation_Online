package com.achaoub.controller;

import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.achaoub.model.OffreAcces;
import com.achaoub.model.Personne;
import com.achaoub.model.Referenciel;
import com.achaoub.service.OffreAccesService;
import com.achaoub.service.PersonneService;
import com.achaoub.service.ReferencielService;

import jakarta.validation.Valid;

@Controller
public class MyController {

	@Autowired
	private PersonneService servicePersonne;

	@Autowired
	private ReferencielService serviceReferenciel;

	@Autowired
	private OffreAccesService serviceOffreAcces;

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

	public OffreAccesService getServiceOffreAcces() {
		return serviceOffreAcces;
	}

	public void setServiceOffreAcces(OffreAccesService serviceOffreAcces) {
		this.serviceOffreAcces = serviceOffreAcces;
	}

//	public void donneesPageAdmin() {
//		ModelAndView modelAndView = new ModelAndView("Admin_Page");
//		getServicePersonne().serialisationPersonnes();
//		ArrayList<Personne> list = getServicePersonne().deserialisationPersonnes();
//		ArrayList<Personne> listPers = getServicePersonne().getAllPersonnesStatus();
//		ArrayList<Personne> listPersInternes = getServicePersonne().getPersonnesInternes(listPers);
//		ArrayList<Personne> listPersExternes  = getServicePersonne().getPersonnesExternes();
//		modelAndView.addObject("listApp",list);
//		modelAndView.addObject("listAppDB",listPers);
//		modelAndView.addObject("listAppInternes",listPersInternes);
//		modelAndView.addObject("listAppExternes",listPersExternes);
//	}

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String getDefaultHomePage() {

		return "Login_Personne";
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
	public String getDefaultDeconnexionPersonePage(Model model, HttpServletRequest request) {
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
		personne.setDate(LocalDate.now());
		getServicePersonne().savePersonne(personne);
		ModelAndView modelAndView = new ModelAndView("welcome");
		modelAndView.addObject("student", personne);

		return modelAndView;
	}

	@RequestMapping(value = "/Login", method = RequestMethod.POST)
	public ModelAndView loginSuccess(@Valid @ModelAttribute("personne") Personne personne, HttpServletRequest request) {
		ModelAndView modelAndView = new ModelAndView("Admin_Page");
		HttpSession session = request.getSession(true);

		Date date = Calendar.getInstance().getTime();
		SimpleDateFormat formatDate = new SimpleDateFormat("dd-MM-yyyy");
		String dateConvetit = formatDate.format(date);

		// recuperer nbrSemaine du date current
		OffreAcces offreAcc = getServiceOffreAcces().getOffreAccesByDate(LocalDate.now().getDayOfYear() / 7);
		ArrayList<OffreAcces> listOff = getServiceOffreAcces().getAllOffresAcces();

		
		for(OffreAcces o : listOff) {
			System.out.println(o.getNbrApprenants());
		}

		Personne pers = getServicePersonne().validatePersonne(personne.getEmailPersonne(),
				personne.getPasswordPersonne());
		if ((pers != null) && (pers.getRolePersonne().equals("Admin"))) {
			session.setAttribute("Session_ADMIN", pers);
			getServicePersonne().serialisationPersonnes();
			ArrayList<Personne> list = getServicePersonne().deserialisationPersonnes();
			ArrayList<Personne> listPers = getServicePersonne().getAllPersonnesStatus();
			ArrayList<Personne> listPersInternes = getServicePersonne().getPersonnesInternes(listPers);
			ArrayList<Personne> listPersExternes = getServicePersonne().getPersonnesExternes();
			
			if (pers.isStatusPersonne()) {
				modelAndView.addObject("student", personne);
				modelAndView.addObject("session", session.getAttribute("Session_ADMIN"));
				// donneesPageAdmin();
				modelAndView.addObject("listApp", list);
				modelAndView.addObject("listAppDB", listPers);
				modelAndView.addObject("listAppInternes", listPersInternes);
				modelAndView.addObject("listAppExternes", listPersExternes);
				modelAndView.addObject("date", dateConvetit);
				modelAndView.addObject("semaine", offreAcc);
				//System.out.println(getServiceOffreAcces().getOffreAccesByDate(11));
				
				
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

	@RequestMapping(value = "/Update", method = RequestMethod.POST)
	public ModelAndView UpdateStatusPersonne(@RequestParam String idPersonne, HttpServletRequest request) {
		ModelAndView modelAndView = new ModelAndView("Admin_Page");
		HttpSession session = request.getSession(true);

		Date date = Calendar.getInstance().getTime();
		SimpleDateFormat formatDate = new SimpleDateFormat("dd-m-yyyy");
		String dateConvetit = formatDate.format(date);

		// recuperer nbrSemaine du date current
		OffreAcces offreAcc = getServiceOffreAcces().getOffreAccesByDate(LocalDate.now().getDayOfYear() / 7);

		int id = Integer.parseInt(idPersonne);
		Personne p = getServicePersonne().getPersonne(id);
		getServicePersonne().updateStatusPersonne(p);
		ArrayList<Personne> list = getServicePersonne().deserialisationPersonnes();
		ArrayList<Personne> listPers = getServicePersonne().getAllPersonnesStatus();
		ArrayList<Personne> listPersInternes = getServicePersonne().getPersonnesInternes(listPers);
		ArrayList<Personne> listPersExternes = getServicePersonne().getPersonnesExternes();

		modelAndView.addObject("student", getServicePersonne().getPersonne(id));
		modelAndView.addObject("session", session.getAttribute("Session_ADMIN"));
		modelAndView.addObject("listApp", list);
		modelAndView.addObject("listAppDB", listPers);
		modelAndView.addObject("listAppInternes", listPersInternes);
		modelAndView.addObject("listAppExternes", listPersExternes);
		modelAndView.addObject("date", dateConvetit);
		modelAndView.addObject("semaine", offreAcc);
		return modelAndView;
	}

	@RequestMapping(value = "/delete", method = RequestMethod.POST)
	public ModelAndView DeletePersonne(@RequestParam String idPersonneR, HttpServletRequest request) {
		ModelAndView modelAndView = new ModelAndView("Admin_Page");
		HttpSession session = request.getSession(true);

		// recuperer nbrSemaine du date current
		OffreAcces offreAcc = getServiceOffreAcces().getOffreAccesByDate(LocalDate.now().getDayOfYear() / 7);

		Date date = Calendar.getInstance().getTime();
		// SimpleDateFormat formatDate = new SimpleDateFormat("dd-mm-yyyy");
		// String dateConvetit = formatDate.format(date);

		int id = Integer.parseInt(idPersonneR);
		Personne p = getServicePersonne().getPersonne(id);
		getServicePersonne().deletePersonne(p);
		ArrayList<Personne> list = getServicePersonne().deserialisationPersonnes();
		ArrayList<Personne> listPers = getServicePersonne().getAllPersonnesStatus();
		ArrayList<Personne> listPersInternes = getServicePersonne().getPersonnesInternes(listPers);
		ArrayList<Personne> listPersExternes = getServicePersonne().getPersonnesExternes();
		modelAndView.addObject("student", getServicePersonne().getPersonne(id));
		modelAndView.addObject("session", session.getAttribute("Session_ADMIN"));
		modelAndView.addObject("listApp", list);
		modelAndView.addObject("listAppDB", listPers);
		modelAndView.addObject("listAppInternes", listPersInternes);
		modelAndView.addObject("listAppExternes", listPersExternes);
		modelAndView.addObject("date", date);
		return modelAndView;
	}

	@RequestMapping(value = "/AjouterOffreAcces", method = RequestMethod.POST)
	public ModelAndView AjouterOffreAccesPersonne(@RequestParam String NbrApprOffreSemaine,
			@RequestParam String dateOffreAcces, HttpServletRequest request) {
		ModelAndView modelAndView = new ModelAndView("Admin_Page");

		// envoie SessionAdmin
		HttpSession session = request.getSession(true);

		DateTimeFormatter formatter = DateTimeFormatter.ofPattern("dd-MM-yyyy");
		// convert String to LocalDate
		LocalDate localDate_Offre = LocalDate.parse(dateOffreAcces, formatter);

		OffreAcces OffreA = new OffreAcces(localDate_Offre, Integer.parseInt(NbrApprOffreSemaine));
		getServiceOffreAcces().saveOffreAcces(OffreA);

		int semaine = localDate_Offre.getDayOfYear() / 7;

		// Envoie Des donnees vers Page jsp Admin
		ArrayList<Personne> list = getServicePersonne().deserialisationPersonnes();
		ArrayList<Personne> listPers = getServicePersonne().getAllPersonnesStatus();
		ArrayList<Personne> listPersInternes = getServicePersonne().getPersonnesInternes(listPers);
		ArrayList<Personne> listPersExternes = getServicePersonne().getPersonnesExternes();
		ArrayList<OffreAcces> listOffreAcces = getServiceOffreAcces().getAllOffresAcces();
		OffreAcces offreLiAcces = getServiceOffreAcces().getOffreAccesByDate(semaine);
		modelAndView.addObject("session", session.getAttribute("Session_ADMIN"));
		modelAndView.addObject("listApp", list);
		modelAndView.addObject("listAppDB", listPers);
		modelAndView.addObject("listAppInternes", listPersInternes);
		modelAndView.addObject("listAppExternes", listPersExternes);
		modelAndView.addObject("semaine", offreLiAcces);

		return modelAndView;

	}

}
