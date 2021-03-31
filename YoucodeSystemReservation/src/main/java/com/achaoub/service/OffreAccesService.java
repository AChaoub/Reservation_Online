package com.achaoub.service;

import java.util.ArrayList;

import org.springframework.stereotype.Repository;


import com.achaoub.model.OffreAcces;

@Repository
public interface OffreAccesService {
	public boolean saveOffreAcces(OffreAcces offreA);

	public ArrayList<OffreAcces> getAllOffresAcces();

	public OffreAcces getOffreAccesByDate(int nbrSemaine);

	public void updateNbrPlaces(int idOffre);
}
