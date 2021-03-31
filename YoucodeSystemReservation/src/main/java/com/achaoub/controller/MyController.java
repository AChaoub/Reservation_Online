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

import com.achaoub.model.Demande;
import com.achaoub.model.OffreAcces;
import com.achaoub.model.Personne;
import com.achaoub.model.Referenciel;
import com.achaoub.service.DemandeService;
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

	@Autowired
	private DemandeService serviceDemande;

	public DemandeService getServiceDemande() {
		return serviceDemande;
	}

	public void setServiceDemande(DemandeService serviceDemande) {
		this.serviceDemande = serviceDemande;
	}

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

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String getDefaultHomePage(HttpServletRequest request) {
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
		ModelAndView modelAndView = new ModelAndView("Login_Personne");
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
		int nbrJours = LocalDate.now().getDayOfYear() - 4;
		int nbrSemaine = nbrJours / 7;

		OffreAcces offreAcc = getServiceOffreAcces().getOffreAccesByDate(nbrSemaine);
		
		//Pour rajouter une zone historiques offreAcces ----> Version 2 du brief
		//ArrayList<OffreAcces> listOff = getServiceOffreAcces().getAllOffresAcces();

		Personne pers = getServicePersonne().validatePersonne(personne.getEmailPersonne(),
				personne.getPasswordPersonne());

		if ((pers != null) && (pers.isStatusPersonne())) {
			// traitement si user est Admin
			if (pers.getRolePersonne().equals("Admin")) {
				session.setAttribute("Session_ADMIN", pers);
				getServicePersonne().serialisationPersonnes();
				ArrayList<Personne> list = getServicePersonne().deserialisationPersonnes();
				ArrayList<Personne> listPers = getServicePersonne().getAllPersonnesStatus();
				ArrayList<Personne> listPersInternes = getServicePersonne().getPersonnesInternes(listPers);
				ArrayList<Personne> listPersExternes = getServicePersonne().getPersonnesExternes();
				ArrayList<Demande> listDemandes = getServiceDemande().getAllDemandes();
				ArrayList<Demande> listDemandesHebdo = getServiceDemande().getDemandesHebdo(nbrSemaine);

				modelAndView.addObject("session", session.getAttribute("Session_ADMIN"));
				// donneesPageAdmin();
				modelAndView.addObject("listApp", list);
				modelAndView.addObject("listAppDB", listPers);
				modelAndView.addObject("listAppInternes", listPersInternes);
				modelAndView.addObject("listAppExternes", listPersExternes);
				modelAndView.addObject("date", dateConvetit);
				modelAndView.addObject("semaine", offreAcc);
				modelAndView.addObject("demandes", listDemandes);
				modelAndView.addObject("demandesH", listDemandesHebdo);
				return modelAndView;

			}
			// traitement user est Apprenant
			else if (pers.getRolePersonne().equals("Apprenant")) {
				session.setAttribute("Session_Apprenant", pers);
				modelAndView = new ModelAndView("Apprenant_Page");

				int dateAuj = (LocalDate.now().getDayOfYear());
				int numJours = date.getDay();
				Personne appLoggé = (Personne) session.getAttribute("Session_Apprenant");
				int id = appLoggé.getIdPersonne();
				// ArrayList<Demande> liste = getServiceDemande().getAllDemandes();
				ArrayList<Demande> listeDeApp = getServiceDemande().getDemandesByApp(id);
				ArrayList<Demande> listeDeAppHebdo = getServiceDemande().getDemandesByAppHebdo(id, nbrSemaine);
//				
				modelAndView.addObject("demandeSemaine", listeDeAppHebdo);
				modelAndView.addObject("historique", listeDeApp);
				modelAndView.addObject("sessionApp", session.getAttribute("Session_Apprenant"));
				modelAndView.addObject("OffreSemaine", offreAcc);
				modelAndView.addObject("jour", numJours);
				modelAndView.addObject("jourCourant", dateAuj);
				modelAndView.addObject("demandeSemaine", listeDeAppHebdo);

			}

		}
		// si user est introuvable
		else if (pers == null)
			modelAndView = new ModelAndView("notFound");
		// si User est non validé par l 'admin
		else if (!pers.isStatusPersonne() && (pers != null)) {
			modelAndView = new ModelAndView("Att_Page");
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
		int nbrJours = LocalDate.now().getDayOfYear() - 4;
		int nbrSemaine = nbrJours / 7;
		OffreAcces offreAcc = getServiceOffreAcces().getOffreAccesByDate(nbrSemaine);

		int id = Integer.parseInt(idPersonne);
		Personne p = getServicePersonne().getPersonne(id);
		getServicePersonne().updateStatusPersonne(p);
		
		ArrayList<Personne> list = getServicePersonne().deserialisationPersonnes();
		ArrayList<Personne> listPers = getServicePersonne().getAllPersonnesStatus();
		ArrayList<Personne> listPersInternes = getServicePersonne().getPersonnesInternes(listPers);
		ArrayList<Personne> listPersExternes = getServicePersonne().getPersonnesExternes();
		ArrayList<OffreAcces> listOffreAcces = getServiceOffreAcces().getAllOffresAcces();
		ArrayList<Demande> listDemandes = getServiceDemande().getAllDemandes();
		ArrayList<Demande> listDemandesHebdo = getServiceDemande().getDemandesHebdo(nbrSemaine);

		modelAndView.addObject("student", getServicePersonne().getPersonne(id));
		modelAndView.addObject("session", session.getAttribute("Session_ADMIN"));
		modelAndView.addObject("listApp", list);
		modelAndView.addObject("listAppDB", listPers);
		modelAndView.addObject("listAppInternes", listPersInternes);
		modelAndView.addObject("listAppExternes", listPersExternes);
		modelAndView.addObject("date", dateConvetit);
		modelAndView.addObject("semaine", offreAcc);
		modelAndView.addObject("offres", listOffreAcces);
		modelAndView.addObject("demandes", listDemandes);
		modelAndView.addObject("demandesH", listDemandesHebdo);

		return modelAndView;
	}

	@RequestMapping(value = "/delete", method = RequestMethod.POST)
	public ModelAndView DeletePersonne(@RequestParam String idPersonneR, HttpServletRequest request) {
		ModelAndView modelAndView = new ModelAndView("Admin_Page");
		HttpSession session = request.getSession(true);

		// recuperer nbrSemaine du date current
		int nbrJours = LocalDate.now().getDayOfYear() - 4;
		int nbrSemaine = nbrJours / 7;
		OffreAcces offreAcc = getServiceOffreAcces().getOffreAccesByDate(nbrSemaine);

		Date date1 = Calendar.getInstance().getTime();
		
		Date date = Calendar.getInstance().getTime();
		SimpleDateFormat formatDate = new SimpleDateFormat("dd-MM-yyyy");
		String dateConvetit = formatDate.format(date);

		int id = Integer.parseInt(idPersonneR);
		Personne p = getServicePersonne().getPersonne(id);
		getServicePersonne().deletePersonne(p);
		ArrayList<Personne> list = getServicePersonne().deserialisationPersonnes();
		ArrayList<Personne> listPers = getServicePersonne().getAllPersonnesStatus();
		ArrayList<Personne> listPersInternes = getServicePersonne().getPersonnesInternes(listPers);
		ArrayList<Personne> listPersExternes = getServicePersonne().getPersonnesExternes();
		ArrayList<OffreAcces> listOffreAcces = getServiceOffreAcces().getAllOffresAcces();
		ArrayList<Demande> listDemandes = getServiceDemande().getAllDemandes();
		ArrayList<Demande> listDemandesHebdo = getServiceDemande().getDemandesHebdo(nbrSemaine);
		modelAndView.addObject("session", session.getAttribute("Session_ADMIN"));
		modelAndView.addObject("listApp", list);
		modelAndView.addObject("listAppDB", listPers);
		modelAndView.addObject("listAppInternes", listPersInternes);
		modelAndView.addObject("listAppExternes", listPersExternes);
		modelAndView.addObject("date", date1);
		modelAndView.addObject("semaine", offreAcc);
		modelAndView.addObject("offres", listOffreAcces);
		modelAndView.addObject("date", dateConvetit);
		modelAndView.addObject("demandes", listDemandes);
		modelAndView.addObject("demandesH", listDemandesHebdo);
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

		// Instanciation du OffreAcces + Ajout au DB
		OffreAcces OffreA = new OffreAcces(localDate_Offre, Integer.parseInt(NbrApprOffreSemaine));
		try {
			getServiceOffreAcces().saveOffreAcces(OffreA);
		} catch (Exception e) {
			modelAndView = new ModelAndView("OffreExistant");

		}

		int nbrJours = LocalDate.now().getDayOfYear() - 4;
		int nbrSemaine = nbrJours / 7;
		OffreAcces offreAcc = getServiceOffreAcces().getOffreAccesByDate(nbrSemaine);

		// Envoie Des donnees vers Page jsp Admin
		

		modelAndView.addObject("session", session.getAttribute("Session_ADMIN"));
	
		Date date = Calendar.getInstance().getTime();
		SimpleDateFormat formatDate = new SimpleDateFormat("dd-MM-yyyy");
		String dateConvetit = formatDate.format(date);
		
		ArrayList<Personne> list = getServicePersonne().deserialisationPersonnes();
		ArrayList<Personne> listPers = getServicePersonne().getAllPersonnesStatus();
		ArrayList<Personne> listPersInternes = getServicePersonne().getPersonnesInternes(listPers);
		ArrayList<Personne> listPersExternes = getServicePersonne().getPersonnesExternes();
		ArrayList<OffreAcces> listOffreAcces = getServiceOffreAcces().getAllOffresAcces();
		ArrayList<Demande> listDemandes = getServiceDemande().getAllDemandes();
		ArrayList<Demande> listDemandesHebdo = getServiceDemande().getDemandesHebdo(nbrSemaine);

		modelAndView.addObject("semaine", offreAcc);
		modelAndView.addObject("listApp", list);
		modelAndView.addObject("listAppDB", listPers);
		modelAndView.addObject("listAppInternes", listPersInternes);
		modelAndView.addObject("listAppExternes", listPersExternes);
		modelAndView.addObject("semaine", offreAcc);
		modelAndView.addObject("offres", listOffreAcces);
		modelAndView.addObject("date", dateConvetit);
		modelAndView.addObject("demandes", listDemandes);
		modelAndView.addObject("demandesH", listDemandesHebdo);

		return modelAndView;

	}

	@RequestMapping(value = "/ApprouverDemande", method = RequestMethod.POST)
	public ModelAndView UpdateStatusDemande(@RequestParam String idDemande, HttpServletRequest request) {

		ModelAndView modelAndView = new ModelAndView("Admin_Page");

		HttpSession session = request.getSession(true);

		Date date = Calendar.getInstance().getTime();
		SimpleDateFormat formatDate = new SimpleDateFormat("dd-MM-yyyy");
		String dateConvetit = formatDate.format(date);

		 //recuperer nbrSemaine du date current
		int nbrJours = LocalDate.now().getDayOfYear() - 4;
		int nbrSemaine = nbrJours / 7;
		OffreAcces offreAcc = getServiceOffreAcces().getOffreAccesByDate(nbrSemaine);
		
		int idD = Integer.parseInt(idDemande);

		getServiceDemande().approuverDemande(idD);

		// TODO Erreur requete Sql a revoir
		
		// recuperer nbrSemaine du date current
		//int nbrJours = LocalDate.now().getDayOfYear() - 4;
		//int nbrSemaine = nbrJours / 7;
		//OffreAcces offreAcc = getServiceOffreAcces().getOffreAccesByDate(nbrSemaine);
		// int idOff = offreAcc.getIdOffre();
		// getServiceOffreAcces().updateNbrPlaces(idOff);

		ArrayList<Personne> list = getServicePersonne().deserialisationPersonnes();
		ArrayList<Personne> listPers = getServicePersonne().getAllPersonnesStatus();
		ArrayList<Personne> listPersInternes = getServicePersonne().getPersonnesInternes(listPers);
		ArrayList<Personne> listPersExternes = getServicePersonne().getPersonnesExternes();
		ArrayList<OffreAcces> listOffreAcces = getServiceOffreAcces().getAllOffresAcces();
		ArrayList<Demande> listDemandes = getServiceDemande().getAllDemandes();
		ArrayList<Demande> listDemandesHebdo = getServiceDemande().getDemandesHebdo(nbrSemaine);

		modelAndView.addObject("semaine", offreAcc);
		modelAndView.addObject("session", session.getAttribute("Session_ADMIN"));
		modelAndView.addObject("listApp", list);
		modelAndView.addObject("listAppDB", listPers);
		modelAndView.addObject("listAppInternes", listPersInternes);
		modelAndView.addObject("listAppExternes", listPersExternes);
		modelAndView.addObject("semaine", offreAcc);
		modelAndView.addObject("offres", listOffreAcces);
		modelAndView.addObject("date", dateConvetit);
		modelAndView.addObject("demandes", listDemandes);
		modelAndView.addObject("demandesH", listDemandesHebdo);
		
		return modelAndView;
	}
	@RequestMapping(value = "/Reserver", method = RequestMethod.POST)
	public ModelAndView AjouterOffreAccesPersonne(@RequestParam String Heure, HttpServletRequest request) {
		ModelAndView modelAndView = new ModelAndView("Apprenant_Page");

		// Recuperation session
		HttpSession session = request.getSession(true);
		Personne appLoggé = (Personne) session.getAttribute("Session_Apprenant");
		int id = appLoggé.getIdPersonne();

		// Formatter Date courante
		Date date = Calendar.getInstance().getTime();
		SimpleDateFormat formatDate = new SimpleDateFormat("dd-MM-yyyy");
		String dateConvetit = formatDate.format(date);

		// Date Courante de type LocalDate
		LocalDate dateCourante = LocalDate.now();

		// Recuperer nbrSemaine du date current
		int nbrJours = LocalDate.now().getDayOfYear() - 4;
		int nbrSemaine = nbrJours / 7;

		// Convertir un nombre du jour en LocalDate "0 equivalent a 01-01-2021"
		int dateOffreInt = Integer.parseInt(Heure);
		LocalDate dateOffre = LocalDate.ofYearDay(2021, dateOffreInt);

		// methode pour recuperer le nombre equivalent du courant jour "0 equivalent
		// Dimanche ,1 Lundi..."
		int dateAuj = (LocalDate.now().getDayOfYear());
		int numJours = date.getDay();

		
		// Instanciation Personne et Demande pour les preparer.
		Demande demande = new Demande(dateCourante, dateOffre,appLoggé);

		// Donnes utilisées en page jsp
		OffreAcces offreAcc = getServiceOffreAcces().getOffreAccesByDate(nbrSemaine);
		ArrayList<Demande> listeDeApp = getServiceDemande().getDemandesByApp(id);
		ArrayList<Demande> listeDeAppHebdo = getServiceDemande().getDemandesByAppHebdo(id, nbrSemaine);
		

		// Sauvgarder Demande
		getServiceDemande().saveDemande(demande);

		// Envoie des donnees vers Page Jsp
		modelAndView.addObject("sessionApp", appLoggé);
		modelAndView.addObject("historique", listeDeApp);
		modelAndView.addObject("OffreSemaine", offreAcc);
		modelAndView.addObject("jour", numJours);
		modelAndView.addObject("jourCourant", dateAuj);
		modelAndView.addObject("demandeSemaine", listeDeAppHebdo);

		modelAndView.addObject("demandeSemaine", listeDeAppHebdo);
		modelAndView.addObject("historique", listeDeApp);
		modelAndView.addObject("session", session.getAttribute("Session_Apprenant"));

		return modelAndView;
	}

}
