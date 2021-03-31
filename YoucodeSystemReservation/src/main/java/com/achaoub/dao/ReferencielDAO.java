package com.achaoub.dao;

import java.util.ArrayList;

import com.achaoub.model.Referenciel;

public interface ReferencielDAO {

	public boolean saveReferenciel(Referenciel ref);
	public ArrayList<Referenciel> getAllReferenciel();
	public Referenciel getReferencielByID(int id);
}
