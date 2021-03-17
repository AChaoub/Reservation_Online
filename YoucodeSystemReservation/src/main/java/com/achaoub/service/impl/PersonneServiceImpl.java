package com.achaoub.service.impl;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.achaoub.dao.PersonneDAO;
import com.achaoub.model.Personne;
import com.achaoub.service.PersonneService;

@Service("servicePersonne")
public class PersonneServiceImpl implements PersonneService {

	@Autowired
	private PersonneDAO personneDAO;

	public PersonneDAO getPersonneDAO() {
		return personneDAO;
	}

	public void setPersonneDAO(PersonneDAO personneDAO) {
		this.personneDAO = personneDAO;
	}

	@Override
	public boolean savePersonne(Personne personne) {
		boolean isRegister=false;
		boolean saveStudent = getPersonneDAO().savePersonne(personne);
		if(saveStudent)
			isRegister=true;
		return isRegister;
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
}
