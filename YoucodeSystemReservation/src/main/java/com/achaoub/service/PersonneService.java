package com.achaoub.service;

import java.util.ArrayList;

import org.springframework.stereotype.Repository;

import com.achaoub.model.Personne;


public interface PersonneService {
	
	public boolean savePersonne(Personne personne);
//	public Student getStudentDetailsByEmailAndPassword(String email,String password);
	public Personne validatePersonne(String email,String password);
	public Personne getPersonne(int id);
	public ArrayList<Personne> getAllPersonnes();
	public ArrayList<Personne> search(String mot);
	public ArrayList<Personne> deserialisationPersonnes();
	public void serialisationPersonnes();

}
