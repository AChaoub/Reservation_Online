package com.achaoub.testing;



import org.junit.Test;

import com.achaoub.dao.impl.PersonneDAOImpl;
import com.achaoub.model.Personne;
import com.achaoub.service.impl.PersonneServiceImpl;


public class PersonneFunctionsTest {

	private PersonneDAOImpl personneImpl = new PersonneDAOImpl(); 

	@Test
	public void testLogin() {
		System.out.println(personneImpl.getPersonne(1).toString());
	}

	

}
