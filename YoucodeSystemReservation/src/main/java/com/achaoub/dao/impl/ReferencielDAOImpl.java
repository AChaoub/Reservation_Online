package com.achaoub.dao.impl;

import java.util.ArrayList;


import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;

import com.achaoub.dao.ReferencielDAO;
import com.achaoub.model.Referenciel;




@Repository("ReferencielDAO")
public class ReferencielDAOImpl implements ReferencielDAO{

	
	@Autowired
	private HibernateTemplate HibernateUtil;
	
	public void setHibernateTemplate(HibernateTemplate HibernateUtil) {
		this.HibernateUtil = HibernateUtil;
	}
	public HibernateTemplate getHibernateTemplate() {
		return HibernateUtil;
	}
	
	@Override
	public boolean saveReferenciel(Referenciel ref) {
		int id = (Integer)HibernateUtil.save(ref);
		if(id>0)
			return true;
		return false;
	}
	@Override
	public ArrayList<Referenciel> getAllReferenciel() {
		Transaction transaction = null;
		ArrayList<Referenciel> listreferenciel = new ArrayList<Referenciel>();
		Session session = HibernateUtil.getSessionFactory().openSession();
		// start a transaction
		transaction = session.beginTransaction();
		Query en = session.createQuery("FROM Referenciel",Referenciel.class);
		listreferenciel = (ArrayList<Referenciel>) en.getResultList();
		return listreferenciel;
	}
	@Override
	public Referenciel getReferencielByID(int id) {
		Transaction transaction = null;
		Session session = HibernateUtil.getSessionFactory().openSession();
		
		transaction = session.beginTransaction();

		Referenciel ref = (Referenciel) session.get(Referenciel.class, id );

		transaction.commit();
		return ref;
	}

}
