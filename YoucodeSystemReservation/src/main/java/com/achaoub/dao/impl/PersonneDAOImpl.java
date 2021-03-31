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
import org.springframework.context.annotation.Bean;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

import com.achaoub.dao.PersonneDAO;
import com.achaoub.model.Personne;
import com.achaoub.model.Referenciel;

//@Repository("PersonneDAO")
@Component("PersonneDAO")
public class PersonneDAOImpl implements PersonneDAO {

	@Autowired
	private HibernateTemplate HibernateUtil; 


	public void setHibernateTemplate(HibernateTemplate HibernateUtil) {
		this.HibernateUtil = HibernateUtil;
	}

	public HibernateTemplate getHibernateTemplate() {
		return this.HibernateUtil;
	}

	@Override
	public boolean savePersonne(Personne personne) {
		int id = (Integer) HibernateUtil.save(personne);
		if (id > 0) {
			return true;
		}
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
				.setParameter("emailPersonne", email).uniqueResult();

		if (personne != null && personne.getPasswordPersonne().equals(password)) {
			return personne;
		}
		// commit transaction
		transaction.commit();

		if (transaction != null) {
			transaction.rollback();
		}

		return null;
	}

	@Override
	public Personne getPersonne(int id) {
		return HibernateUtil.get(Personne.class, id);
	}

	@Override
	public ArrayList<Personne> getAllPersonnes() {
		Transaction transaction = null;
		ArrayList<Personne> listPersonnes = new ArrayList<Personne>();
		Session session = HibernateUtil.getSessionFactory().openSession();
		// start a transaction
		transaction = session.beginTransaction();
		Query en = session.createQuery("FROM Personne", Personne.class);
		listPersonnes = (ArrayList<Personne>) en.getResultList();
		return listPersonnes;
	}

	@Override
	public ArrayList<Personne> search(String mot) {
		ArrayList<Personne> listPersonnesByMot = new ArrayList<Personne>();
		try (Session session = HibernateUtil.getSessionFactory().openSession()) {
//			 (ArrayList<Personne>) session.createQuery("from Personne where email_Personne like :mot", Personne.class).setParameter("mot", mot).list();
			String QUERY = "FROM Personne as p WHERE p.EmailPersonne LIKE :mots";
			listPersonnesByMot = (ArrayList<Personne>) session.createQuery(QUERY).setString("mots", "%" + mot + "%")
					.list();
		}

//		String query = "from personne p where p.Email_Personne like :mots";
//		HibernateUtil.findByNamedParam(query, "mots", '%' + mot + '%');

		return listPersonnesByMot;
	}

	@Override
	public ArrayList<Personne> deserialisationPersonnes() {
		ArrayList<Personne> list = new ArrayList<Personne>();
		Personne p = new Personne();
		int cpt = p.getCpt();
		System.out.println(cpt);
		try {
			FileInputStream fistr = new FileInputStream("C:\\Users\\Admin\\Desktop\\Personne.xml");
			XMLDecoder xd = new XMLDecoder(fistr);
			while (cpt > 0) {
				p = (Personne) xd.readObject();
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

		Personne p1 = new Personne("Chaoub", "Achraf", "achraf.chaoub1@gmail.com", "1234", r1);
		Personne p2 = new Personne("Boutayb", "Ahmed", "ahmed.boutayb1@gmail.com", "1234", r1);
		Personne p3 = new Personne("Amimi", "Jamal", "jamal.amimi1@gmail.com", "1234", r1);

		Personne p4 = new Personne("Chaoub", "Achraf", "achraf.chaoub2@gmail.com", "1234", r2);
		Personne p5 = new Personne("Boutayb", "Ahmed", "ahmed.boutayb2@gmail.com", "1234", r2);
		Personne p6 = new Personne("Amimi", "Jamal", "jamal.amimi2@gmail.com", "1234", r2);

		FileOutputStream fos = null;

		try {
			fos = new FileOutputStream("C:\\Users\\Admin\\Desktop\\Personne.xml");
			// ObjectOutputStream ostr = new ObjectOutputStream(fos);
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

	@Override
	public void updateStatusPersonne(Personne p) {

		Transaction transaction = null;
		try (Session session = HibernateUtil.getSessionFactory().openSession()) {
			// start a transaction
			transaction = session.beginTransaction();

			// save the student object
			String hql = "UPDATE Personne set Status_Personne = true WHERE idPersonne =" + p.getIdPersonne();
			Query query = session.createQuery(hql);
			query.executeUpdate();
			System.out.println("modifié avec succes !!!!!!");

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
	public ArrayList<Personne> getAllPersonnesStatus() {
		Transaction transaction = null;
		ArrayList<Personne> listPersonnes = new ArrayList<Personne>();
		Session session = HibernateUtil.getSessionFactory().openSession();
		// start a transaction
		transaction = session.beginTransaction();
		Query en = session.createQuery("FROM Personne p where p.statusPersonne = false", Personne.class);
		listPersonnes = (ArrayList<Personne>) en.getResultList();
		return listPersonnes;
	}


	@Override
	public ArrayList<Personne> getPersonnesInternes(ArrayList<Personne> listPersonnes) {
		ArrayList<Personne> listPersonnesXml = this.deserialisationPersonnes();
		ArrayList<Personne> listPersonnesInternes = new ArrayList<Personne>();
		for (Personne personneXml : listPersonnesXml) {
			for (Personne personne : listPersonnes) {
				if (personne.getEmailPersonne().equals(personneXml.getEmailPersonne())&&(!personne.isStatusPersonne())&&(personne.getDate()!=null)
						&& (personne.getRolePersonne().equals("Apprenant"))) {
					listPersonnesInternes.add(personne);
				}
			}
		}

		return listPersonnesInternes;
	}

	@Override
	public ArrayList<Personne> getPersonnesExternes() {
		// TODO Auto-generated method stub
		ArrayList<Personne> listPersonnesXml = this.deserialisationPersonnes();
		ArrayList<Personne> listPersonnes = this.getAllPersonnes();
		ArrayList<Personne> listPersonnesExternes = new ArrayList<Personne>();
		ArrayList<String> emails = new ArrayList<String>();
		
		//remplissage tableaux emails youcode
		for (Personne personne : listPersonnesXml) {
			emails.add(personne.getEmailPersonne());
		}
		int i = 0;

		for (Personne p : listPersonnes) {
			for (String email : emails) {
				if (!p.getEmailPersonne().equals(email)&&(p.getDate()!=null)&&(!p.isStatusPersonne())) {
					i++;
				}
			}
			if(i==emails.size()) {
				listPersonnesExternes.add(p);
			}
			i=0;
		}
		return listPersonnesExternes;
	}

	@Override
	public void deletePersonne(Personne p) {
		Transaction transaction = null;
		try (Session session = HibernateUtil.getSessionFactory().openSession()) {
			// start a transaction
			transaction = session.beginTransaction();

			// save the student object
			String hql = "UPDATE Personne set Date_inscription = null WHERE idPersonne =" + p.getIdPersonne();
			Query query = session.createQuery(hql);
			query.executeUpdate();
			System.out.println("supprimé !!!!!!");

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
