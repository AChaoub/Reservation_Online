package com.achaoub.model;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;

import lombok.Data;


@Entity
public @Data class Referenciel {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int idRef;

	@Column(name = "Libelle_Referenciel", nullable = false)
	private String libelle;
	
	@OneToMany(mappedBy = "referenciel", cascade = {CascadeType.PERSIST,CascadeType.REMOVE})
	private List<Personne> listesApprenants = new ArrayList<Personne>();
	
	

	public Referenciel() {
		super();
	}

	public Referenciel(String libelle, List<Personne> listesApprenants) {
		super();
		this.libelle = libelle;
		this.listesApprenants = listesApprenants;
	}
	public Referenciel(String libelle) {
		super();
		this.libelle = libelle;
	}

//	public int getIdRef() {
//		return idRef;
//	}
//
//	public void setIdRef(int idRef) {
//		this.idRef = idRef;
//	}
//
//	public String getLibelle() {
//		return libelle;
//	}
//
//	public void setLibelle(String libelle) {
//		this.libelle = libelle;
//	}
//
//	public List<Personne> getListesApprenants() {
//		return listesApprenants;
//	}
//
//	public void setListesApprenants(List<Personne> listesApprenants) {
//		this.listesApprenants = listesApprenants;
//	}
//
//	@Override
//	public String toString() {
//		return "Referenciel [idRef=" + idRef + ", libelle=" + libelle + "]";
//	}
	
	
	
	

	
	
	

}
