package com.achaoub.service;

import java.util.ArrayList;
import org.springframework.stereotype.Repository;
import com.achaoub.model.Personne;

@Repository
public interface PersonneService {
	
	public boolean savePersonne(Personne personne);
	public Personne validatePersonne(String email,String password);
	public Personne getPersonne(int id);
	public ArrayList<Personne> getAllPersonnes();
	public ArrayList<Personne> search(String mot);
	public ArrayList<Personne> deserialisationPersonnes();
	public void serialisationPersonnes();
	public void updateStatusPersonne(Personne p);
	public ArrayList<Personne> getAllPersonnesStatus();
	public void deletePersonne(Personne p);
	public ArrayList<Personne> getPersonnesInternes(ArrayList<Personne> listPersonnesXml);
	public ArrayList<Personne> getPersonnesExternes();
}
