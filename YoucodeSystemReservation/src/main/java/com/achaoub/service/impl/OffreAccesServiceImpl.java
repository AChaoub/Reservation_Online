package com.achaoub.service.impl;

import java.util.ArrayList;
import javax.transaction.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.achaoub.dao.OffreAccesDAO;
import com.achaoub.model.OffreAcces;
import com.achaoub.service.OffreAccesService;

@Service("serviceOffreAcces")
public class OffreAccesServiceImpl implements OffreAccesService{
	
	
	@Autowired
	private OffreAccesDAO offreAccesDAO;
	
	

	public OffreAccesDAO getOffreAccesDAO() {
		return offreAccesDAO;
	}

	public void setOffreAccesDAO(OffreAccesDAO offreAccesDAO) {
		this.offreAccesDAO = offreAccesDAO;
	}

	@Override
	@Transactional
	public boolean saveOffreAcces(OffreAcces offreA) {
		// TODO Auto-generated method stub
		return getOffreAccesDAO().saveOffreAcces(offreA);
	}

	@Override
	public ArrayList<OffreAcces> getAllOffresAcces() {
		// TODO Auto-generated method stub
		return getOffreAccesDAO().getAllOffresAcces();
	}

	@Override
	public OffreAcces getOffreAccesByDate(int id) {
		// TODO Auto-generated method stub

		return getOffreAccesDAO().getOffreAccesByDate(id);
	}

	@Override
	public void updateNbrPlaces(int idOffre) {
		getOffreAccesDAO().updateNbrPlaces(idOffre);	
	}

}

