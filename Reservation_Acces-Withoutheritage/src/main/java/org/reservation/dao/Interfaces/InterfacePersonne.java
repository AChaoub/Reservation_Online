package org.reservation.dao.Interfaces;

import java.util.ArrayList;

import org.reservation.entities.Personne;
import org.springframework.data.repository.CrudRepository;

public interface InterfacePersonne extends CrudRepository<Personne, Integer> {
	
	public void savePersonne(Personne p);
	public Personne validePersonne(String email,String password);
	public Personne getPersonneById(int id);
	public ArrayList<Personne> getAllPersonnes();

}
