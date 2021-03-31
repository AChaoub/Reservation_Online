package com.achaoub.dao.impl;

import java.util.ArrayList;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;

import com.achaoub.dao.DemandeDAO;
import com.achaoub.dao.OffreAccesDAO;
import com.achaoub.model.Demande;
import com.achaoub.model.OffreAcces;

@Repository("DemandeDAO")
public class DemandeDAOImpl implements DemandeDAO {

	@Autowired
	private HibernateTemplate HibernateUtil;

	public void setHibernateTemplate(HibernateTemplate HibernateUtil) {
		this.HibernateUtil = HibernateUtil;
	}

	public HibernateTemplate getHibernateTemplate() {
		return HibernateUtil;
	}

	@Override
	public boolean saveDemande(Demande demande) {
		int id = (Integer) HibernateUtil.save(demande);
		if (id > 0)
			return true;
		return false;
	}
	
	

	@Override
	public ArrayList<Demande> getAllDemandes() {
		Transaction transaction = null;
		ArrayList<Demande> listDemandes = new ArrayList<Demande>();
		Session session = HibernateUtil.getSessionFactory().openSession();
		// start a transaction
		transaction = session.beginTransaction();
		Query en = session.createQuery("FROM Demande", Demande.class);
		listDemandes = (ArrayList<Demande>) en.getResultList();
		return listDemandes;
	}

	@Override
	public Demande getDemandeById(int id) {

		Demande demandeR = null;
		ArrayList<Demande> listDemandes = this.getAllDemandes();
		for (Demande demande : listDemandes) {
			if (demande.getIdDemande() == id) {
				demandeR = demande;
			}
		}
		return demandeR;
	}

	@Override
	public ArrayList<Demande> getDemandesByApp(int id) {
		Transaction transaction = null;
		ArrayList<Demande> listDemandes = new ArrayList<Demande>();
		Session session = HibernateUtil.getSessionFactory().openSession();
		Query query1 = session.createQuery("from Demande Where id_Personne = :id");
		query1.setParameter("id",id);

		listDemandes = (ArrayList<Demande>) query1.list();
		return listDemandes;
	}

	@Override
	public void approuverDemande(int idDemande) {

		Transaction transaction = null;
		
		try (Session session = HibernateUtil.getSessionFactory().openSession()) {
			// start a transaction
			transaction = session.beginTransaction();
			// save the student object
			String hql = "UPDATE Demande SET isStatus=1 WHERE idDemande="+idDemande;
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

	@Override
	public ArrayList<Demande> getDemandesByAppHebdo(int id, int semaine) {
		Transaction transaction = null;
		ArrayList<Demande> listDemandes = new ArrayList<Demande>();
		Session session = HibernateUtil.getSessionFactory().openSession();
		Query query1 = session.createQuery("from Demande Where id_Personne = :id AND nombreSemaine=:semaine");
		query1.setParameter("id",id);
		query1.setParameter("semaine",semaine);

		listDemandes = (ArrayList<Demande>) query1.list();
		return listDemandes;
	}

	@Override
	public ArrayList<Demande> getDemandesHebdo(int semaine) {
		Transaction transaction = null;
		ArrayList<Demande> listDemandes = new ArrayList<Demande>();
		Session session = HibernateUtil.getSessionFactory().openSession();
		Query query1 = session.createQuery("from Demande Where nombreSemaine=:semaine");
		query1.setParameter("semaine",semaine);

		listDemandes = (ArrayList<Demande>) query1.list();
		return listDemandes;
	}

}
