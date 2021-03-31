package com.achaoub.dao;

import java.util.ArrayList;

import org.springframework.stereotype.Component;

import com.achaoub.model.Personne;


public interface PersonneDAO {
	public boolean savePersonne(Personne personne);
	public Personne validatePersonne(String email,String password);
	public Personne getPersonne(int id);
	public ArrayList<Personne> getAllPersonnes();
	public ArrayList<Personne> getAllPersonnesStatus();
	public ArrayList<Personne> search(String mot);
	public ArrayList<Personne> deserialisationPersonnes();
	public void serialisationPersonnes();
	public void updateStatusPersonne(Personne p);
	public void deletePersonne(Personne p);
	public ArrayList<Personne> getPersonnesInternes(ArrayList<Personne> listPersonnesXml);
	public ArrayList<Personne> getPersonnesExternes();
	
	
}
