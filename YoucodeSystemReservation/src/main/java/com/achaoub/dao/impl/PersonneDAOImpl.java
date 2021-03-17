package com.achaoub.dao.impl;

import java.beans.XMLDecoder;
import java.beans.XMLEncoder;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.util.ArrayList;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;

import com.achaoub.dao.PersonneDAO;
import com.achaoub.model.Personne;
import com.achaoub.model.Referenciel;







@Repository("PersonneDAO")
public class PersonneDAOImpl implements PersonneDAO {
	
	@Autowired
	private HibernateTemplate HibernateUtil;
	
	public void setHibernateTemplate(HibernateTemplate HibernateUtil) {
		this.HibernateUtil = HibernateUtil;
	}
	public HibernateTemplate getHibernateTemplate() {
		return HibernateUtil;
	}
	
	
	@Override
	public boolean savePersonne(Personne personne) {
		int id = (Integer)HibernateUtil.save(personne);
		if(id>0)
			return true;
		return false;
		
	}
	@Override
	public Personne validatePersonne(String email, String password) {

		Transaction transaction = null;
		Personne personne = null;

		Session session1 = HibernateUtil.getSessionFactory().openSession();
		// start a transaction
		transaction = session1.beginTransaction();
		// get an user object
		personne = (Personne) session1.createQuery("FROM Personne P WHERE P.emailPersonne = :emailPersonne")
				.setParameter("emailPersonne",email).uniqueResult();

		if (personne != null && personne.getPasswordPersonne().equals(password)) {
			return personne;
		}
		// commit transactiono
		transaction.commit();

		if (transaction != null) {
			transaction.rollback();
		}

		return null;
	}
	@Override
	public Personne getPersonne(int id) {
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	public ArrayList<Personne> getAllPersonnes() {
		Transaction transaction = null;
		ArrayList<Personne> listPersonnes = new ArrayList<Personne>();
		Session session = HibernateUtil.getSessionFactory().openSession();
		// start a transaction
		transaction = session.beginTransaction();
		Query en = session.createQuery("FROM Personne",Personne.class);
		listPersonnes= (ArrayList<Personne>) en.getResultList();
		return listPersonnes;
	}
	
	@Override
	public ArrayList<Personne> search(String mot) {
		ArrayList<Personne> listPersonnesByMot = new ArrayList<Personne>();
		try (Session session = HibernateUtil.getSessionFactory().openSession()) {
//			 (ArrayList<Personne>) session.createQuery("from Personne where email_Personne like :mot", Personne.class).setParameter("mot", mot).list();
		String QUERY = "FROM personne as p WHERE p.Email_Personne LIKE :mots)";
		listPersonnesByMot = (ArrayList<Personne>) session.createQuery(QUERY).setString("mots", "%" + mot + "%").list();
		}
//		String query = "from personne p where p.Email_Personne like :mots";
//		HibernateUtil.findByNamedParam(query, "mots", '%' + mot + '%');
		return listPersonnesByMot;
	}
	@Override
	public ArrayList<Personne> deserialisationPersonnes() {
		//Personne p = new Personne();
		ArrayList<Personne> list = new ArrayList<Personne>();
		Personne p = new Personne();
		int cpt = p.getCpt();
		System.out.println(cpt);
		try {
			FileInputStream fistr = new FileInputStream("C:\\Users\\Admin\\Desktop\\Personne.xml");
			XMLDecoder xd = new XMLDecoder(fistr);
			while(cpt>0) {
				p =(Personne) xd .readObject();
				list.add(p);
				cpt--;
			}
			xd.close();
			fistr.close();
			System.out.println("Objects Désérialisés !!");

			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;

	}
	@Override
	public void serialisationPersonnes() {
		Referenciel r1 = new Referenciel("Developpeur Web & Mobile");
		Referenciel r2 = new Referenciel("Concepteur Web & Mobile");
		
		Personne p1 = new Personne("Chaoub", "Achraf", "achraf.chaoub@gmail.com", "1234", r1);
		Personne p2 = new Personne("Boutayb", "Ahmed", "ahmed.boutayb@gmail.com", "1234", r1);
		Personne p3 = new Personne("Amimi", "Jamal", "jamal.amimi@gmail.com", "1234", r1);
		
		Personne p4 = new Personne("Chaoub", "Achraf", "achraf.chaoub1@gmail.com", "1234", r2);
		Personne p5 = new Personne("Boutayb", "Ahmed", "ahmed.boutayb2@gmail.com", "1234", r2);
		Personne p6 = new Personne("Amimi", "Jamal", "jamal.amimi3@gmail.com", "1234", r2);

		FileOutputStream fos=null;

		try {
			fos = new FileOutputStream("C:\\Users\\Admin\\Desktop\\Personne.xml");
			//ObjectOutputStream ostr = new ObjectOutputStream(fos);
			XMLEncoder xe = new XMLEncoder(fos);
			xe.writeObject(p1);
			xe.writeObject(p2);
			xe.writeObject(p3);
			xe.writeObject(p4);
			xe.writeObject(p5);
			xe.writeObject(p6);
			System.out.println("Objets Sérialisés");
			xe.close();
			fos.close();
			System.out.println("Fermeture!!!!!");
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}


}
