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
		Query en = session.createQuery("FROM OffreAcces", OffreAcces.class);
		listOffreAcces = (ArrayList<OffreAcces>) en.getResultList();
		return listOffreAcces;
	}

	@Override
	public OffreAcces getOffreAccesByDate(int nbrSemaine) {

		OffreAcces offreA = null;
		ArrayList<OffreAcces> listOffresAcces = this.getAllOffresAcces();
		for (OffreAcces offre : listOffresAcces) {
			if (offre.getNbrSemaine() == nbrSemaine) {
				offreA = offre;
			}
		}
		return offreA;
	}

	@Override
	public void updateNbrPlaces(int idOffre) {
		// recuperer le nbr des places de la semaine courante
		int nbrJours = LocalDate.now().getDayOfYear() - 4;
		int nbrSemaine = nbrJours / 7;
		OffreAcces offreSemaine = this.getOffreAccesByDate(nbrSemaine);

		int nbrPlaces = offreSemaine.getNbrApprenants() - 1;

		Transaction transaction = null;

		try (Session session = HibernateUtil.getSessionFactory().openSession()) {
			// start a transaction
			transaction = session.beginTransaction();
			// save the student object
			String hql = "UPDATE offreacces SET Nombre_Apprenants_Semaine=110 WHERE idOffre="+idOffre;
			Query query = session.createQuery(hql);
			query.executeUpdate();

			// commit transaction
			transaction.commit();
		} catch (Exception e) {
			if (transaction != null) {
				transaction.rollback();
			}
			e.printStackTrace();
		}
	}

}
