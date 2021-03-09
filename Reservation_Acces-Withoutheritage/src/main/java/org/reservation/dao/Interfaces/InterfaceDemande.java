package org.reservation.dao.Interfaces;

import java.util.ArrayList;

import org.reservation.entities.Demande;

public interface InterfaceDemande {
	public void savePersonne(Demande d);

	public Demande getDemandeById(int id);
	
	public ArrayList<Demande> getAllDemandes();

}
