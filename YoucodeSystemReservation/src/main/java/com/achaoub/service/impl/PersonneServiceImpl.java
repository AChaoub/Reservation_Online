package com.achaoub.service.impl;

import java.util.ArrayList;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.achaoub.dao.PersonneDAO;
import com.achaoub.model.Personne;
import com.achaoub.service.EmailService;
import com.achaoub.service.PersonneService;

@Service("servicePersonne")
public class PersonneServiceImpl implements PersonneService {

	@Autowired
	private PersonneDAO personneDAO;

	@Autowired
	private EmailService serviceEmail;

	public EmailService getServiceEmail() {
		return serviceEmail;
	}

	public void setServiceEmail(EmailService serviceEmail) {
		this.serviceEmail = serviceEmail;
	}

	public PersonneDAO getPersonneDAO() {
		return personneDAO;
	}

	public void setPersonneDAO(PersonneDAO personneDAO) {
		this.personneDAO = personneDAO;
	}
	
	
	

	@Override
	public boolean savePersonne(Personne personne) {
		return getPersonneDAO().savePersonne(personne);
	}

	@Override
	public Personne validatePersonne(String email, String password) {
		// TODO Auto-generated method stub
		Personne personne = getPersonneDAO().validatePersonne(email, password);
		return personne;
	}

	
	@Override
	public Personne getPersonne(int id) {
		// TODO Auto-generated method stub
		return getPersonneDAO().getPersonne(id);
	}

	@Override
	public ArrayList<Personne> getAllPersonnes() {
		// TODO Auto-generated method stub
		return getPersonneDAO().getAllPersonnes();
	}

	@Override
	public ArrayList<Personne> search(String mot) {
		ArrayList<Personne> list = getPersonneDAO().search(mot);
		return list;
	}

	@Override
	public ArrayList<Personne> deserialisationPersonnes() {
		return getPersonneDAO().deserialisationPersonnes();

	}

	@Override
	public void serialisationPersonnes() {
		getPersonneDAO().serialisationPersonnes();
	}

	@Override
	public void updateStatusPersonne(Personne p) {
		String contenu = "Vous étes un membre Youcoude Familly, vous pouvez des maintenant acceder a votre espace Apprenant.Cordialement";
		String sujet = "Bienvenue à la Famille Youcode";
		getPersonneDAO().updateStatusPersonne(p);
		getServiceEmail().envoyerEmail(p.getEmailPersonne(), sujet, contenu);
		System.out.println("OKOKOKOKOKOKOKOKOKOKOK");

	}

	@Override
	public ArrayList<Personne> getAllPersonnesStatus() {
		// TODO Auto-generated method stub
		return getPersonneDAO().getAllPersonnesStatus();
	}

	@Override
	public ArrayList<Personne> getPersonnesInternes(ArrayList<Personne> listPersonnesXml) {
		// TODO Auto-generated method stub
		return getPersonneDAO().getPersonnesInternes(getAllPersonnes());
	}

	@Override
	public ArrayList<Personne> getPersonnesExternes() {
		// TODO Auto-generated method stub
		return getPersonneDAO().getPersonnesExternes();
	}

	@Override
	public void deletePersonne(Personne p) {
		String contenu = "Malheureusement,suite a un avis defavorable d'apres l'admin Youcode, je vous annonce que votre demande a été rejectée.Cordialement";
		String sujet = "Important !!";
		getPersonneDAO().deletePersonne(p);
		getServiceEmail().envoyerEmail(p.getEmailPersonne(), sujet, contenu);
	}
}
