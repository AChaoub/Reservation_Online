package com.achaoub.dao;

import java.time.LocalDate;
import java.util.ArrayList;

import com.achaoub.model.OffreAcces;

public interface OffreAccesDAO {
	
	public boolean saveOffreAcces(OffreAcces offreA);

	public ArrayList<OffreAcces> getAllOffresAcces();

	public OffreAcces getOffreAccesByDate(int nbrSemaine);

}
