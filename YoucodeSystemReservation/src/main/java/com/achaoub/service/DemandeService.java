package com.achaoub.service;

import java.util.ArrayList;

import org.springframework.stereotype.Repository;

import com.achaoub.model.Demande;

@Repository
public interface DemandeService {

	public boolean saveDemande(Demande demande);

	public ArrayList<Demande> getAllDemandes();

	public Demande getDemandeById(int id);

	public ArrayList<Demande> getDemandesByApp(int id);

	public void approuverDemande(int idDemande);

	public ArrayList<Demande> getDemandesByAppHebdo(int id, int semaine);

	public ArrayList<Demande> getDemandesHebdo(int semaine);

}
