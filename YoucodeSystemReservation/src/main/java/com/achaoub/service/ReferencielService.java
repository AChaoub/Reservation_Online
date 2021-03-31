package com.achaoub.service;

import java.util.ArrayList;

import org.springframework.stereotype.Repository;

import com.achaoub.model.Referenciel;


@Repository
public interface ReferencielService {
	
	public boolean saveReferenciel(Referenciel ref);
	public ArrayList<Referenciel> getAllReferenciel();
	public Referenciel getReferencielByID(int id);

}
