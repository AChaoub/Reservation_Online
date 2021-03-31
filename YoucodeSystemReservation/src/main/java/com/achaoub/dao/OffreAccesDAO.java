package com.achaoub.dao;


import java.util.ArrayList;

import com.achaoub.model.OffreAcces;

public interface OffreAccesDAO {
	
	public boolean saveOffreAcces(OffreAcces offreA);

	public ArrayList<OffreAcces> getAllOffresAcces();

	public OffreAcces getOffreAccesByDate(int nbrSemaine);
	
	
	public void updateNbrPlaces(int idOffre);
	


}
