package com.achaoub.dao.impl;

import java.time.LocalDate;
import java.util.ArrayList;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;

import com.achaoub.dao.OffreAccesDAO;
import com.achaoub.model.OffreAcces;



@Repository("OffreAccesDAO")
public class OffreAccesDAOImpl implements OffreAccesDAO {
	
	
	@Autowired
	private HibernateTemplate HibernateUtil;

	public void setHibernateTemplate(HibernateTemplate HibernateUtil) {
		this.HibernateUtil = HibernateUtil;
	}

	public HibernateTemplate getHibernateTemplate() {
		return HibernateUtil;
	}

	@Override
	public boolean saveOffreAcces(OffreAcces offreA) {
		int id = (Integer) HibernateUtil.save(offreA);
		if (id > 0)
			return true;
		return false;
	}

	@Override
	public ArrayList<OffreAcces> getAllOffresAcces() {
		Transaction transaction = null;
		ArrayList<OffreAcces> listOffreAcces = new ArrayList<OffreAcces>();
		Session session = HibernateUtil.getSessionFactory().openSession();
		// start a transaction
		transaction = session.beginTransaction();
		Query en = session.createQuery("FROM OffreAcces",OffreAcces.class);
		listOffreAcces = (ArrayList<OffreAcces>) en.getResultList();
		return listOffreAcces;
	}

	@Override
	public OffreAcces getOffreAccesByDate(int nbrSemaine) {
//		Transaction transaction = null;
//		Session session = HibernateUtil.getSessionFactory().openSession();
//		
//		transaction = session.beginTransaction();
//
//		OffreAcces offreA = (OffreAcces) session.get(OffreAcces.class, nbrSemaine);
//
//		transaction.commit();
		
        OffreAcces offreA = null;
		ArrayList<OffreAcces> listOffresAcces = this.getAllOffresAcces();
		for(OffreAcces offre : listOffresAcces) {
			if(offre.getNbrSemaine()==nbrSemaine) {
				offreA = offre;
				//System.out.println(offre.toString());
			}
		}
		return offreA;
	}

}
