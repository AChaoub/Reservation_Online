package com.achaoub.testing;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import com.achaoub.model.Personne;
import com.achaoub.model.Referenciel;
import com.achaoub.service.PersonneService;
import com.achaoub.service.ReferencielService;


public class test {

	@Autowired
	private PersonneService servicePersonne;

	@Autowired
	private ReferencielService serviceReferenciel;

	public PersonneService getServicePersonne() {
		return servicePersonne;
	}

	public void setServicePersonne(PersonneService servicePersonne) {
		this.servicePersonne = servicePersonne;
	}

	public ReferencielService getServiceReferenciel() {
		return serviceReferenciel;
	}

	public void setServiceReferenciel(ReferencielService serviceReferenciel) {
		this.serviceReferenciel = serviceReferenciel;
	}

	Referenciel r = new Referenciel("Developpeur Web & Mobile");
	Personne p1 = new Personne("Chaoub", "Kamal", "Achraf@gmail.com", "1234", r);
	
	// getServiceReferenciel().saveReferenciel(r);

	// getServicePersonne().savePersonne(p1);

//		ArrayList<Personne> listSearch = getServicePers().search("Ach");
//
//		for (Personne p : listSearch) {
//			System.out.println(p.toString());
//		}
	
	

}
