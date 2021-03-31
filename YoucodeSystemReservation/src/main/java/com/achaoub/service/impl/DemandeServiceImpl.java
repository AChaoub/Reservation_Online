package com.achaoub.service.impl;

import java.util.ArrayList;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.achaoub.dao.DemandeDAO;
import com.achaoub.model.Demande;
import com.achaoub.service.DemandeService;


@Service("serviceDemande")
public class DemandeServiceImpl implements DemandeService{
	
	
	@Autowired
	private DemandeDAO demandeDAO;
	
	

	public DemandeDAO getDemandeDAO() {
		return demandeDAO;
	}

	public void setOffreAccesDAO(DemandeDAO demandeDAO) {
		this.demandeDAO = demandeDAO;
	}

	@Override
//	@Transactional
	public boolean saveDemande(Demande demande) {	
		// TODO Auto-generated method stub
		return getDemandeDAO().saveDemande(demande);
	}
	
	@Override
	@Transactional
	public ArrayList<Demande> getAllDemandes() {
		// TODO Auto-generated method stub
		return getDemandeDAO().getAllDemandes();
	}

	@Override
	public Demande getDemandeById(int id) {
		// TODO Auto-generated method stub

		return getDemandeDAO().getDemandeById(id);
	}

	@Override
	public ArrayList<Demande> getDemandesByApp(int id) {
		// TODO Auto-generated method stub
		return getDemandeDAO().getDemandesByApp(id);
	}

	@Override
	public void approuverDemande(int idDemande) {
		getDemandeDAO().approuverDemande(idDemande);
		
	}

	@Override
	public ArrayList<Demande> getDemandesByAppHebdo(int id, int semaine) {
		// TODO Auto-generated method stub
		return getDemandeDAO().getDemandesByAppHebdo(id, semaine);
	}

	@Override
	public ArrayList<Demande> getDemandesHebdo(int semaine) {
		// TODO Auto-generated method stub
		return getDemandeDAO().getDemandesHebdo(semaine);
	}

}
