package org.reservation.serviceRepository;

import java.util.ArrayList;
import java.util.Optional;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.reservation.dao.Interfaces.InterfacePersonne;
import org.reservation.entities.Personne;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.jpa.repository.Query;



public class ServicePersonneRepository implements InterfacePersonne{
	
	@Autowired
	InterfacePersonne dao ;

	@Override
	public <S extends Personne> S save(S entity) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public <S extends Personne> Iterable<S> saveAll(Iterable<S> entities) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Optional<Personne> findById(Integer id) {
		// TODO Auto-generated method stub
		return dao.findById(id);
	}

	@Override
	public boolean existsById(Integer id) {
		// TODO Auto-generated method stub
		if(dao.existsById(id))
			return true;
		else
		return false;
	}

	@Override
	public Iterable<Personne> findAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Iterable<Personne> findAllById(Iterable<Integer> ids) {
		// TODO Auto-generated method stub
		return dao.findAll();
	}

	@Override
	public long count() {
		// TODO Auto-generated method stub
		return dao.count();
	}

	@Override
	public void deleteById(Integer id) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void delete(Personne entity) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deleteAll(Iterable<? extends Personne> entities) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deleteAll() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void savePersonne(Personne p) {
		dao.save(p);	
	}

	@Override
	public Personne validePersonne(String email, String password) {
		// TODO Auto-generated method stub
		Personne personne = null;
		
		
		return null ;
	}

	@Override
	public Personne getPersonneById(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ArrayList<Personne> getAllPersonnes() {
		// TODO Auto-generated method stub
		return null;
	}

}
