package org.reservation.entities;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToMany;

import lombok.Data;

import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;



@Entity
public @Data class Demande {
	
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int idDemande;
	

	private String motif;
	

	private Date dateDemande;
	
	
	@ManyToMany
	@JoinTable(name = "Demandes_Apprenants", joinColumns = @JoinColumn(name = "idDemande"), 
	inverseJoinColumns = @JoinColumn(name = "idPersonne"))
	private List<Personne> listesAppr = new ArrayList<Personne>();
	
	
	


	public Demande(String motif, Date dateDemande) {
		this.motif = motif;
		this.dateDemande = dateDemande;
	}


	public Demande() {
		super();
		// TODO Auto-generated constructor stub
	}

//
//	public String getMotif() {
//		return motif;
//	}
//
//
//	public void setMotif(String motif) {
//		this.motif = motif;
//	}
//
//
//	public Date getDateDemande() {
//		return dateDemande;
//	}
//
//
//	public void setDateDemande(Date dateDemande) {
//		this.dateDemande = dateDemande;
//	}
//
//
////	public List<Personne> getListesAppr() {
////		return listesAppr;
////	}
////
////
////	public void setListesAppr(List<Personne> listesAppr) {
////		this.listesAppr = listesAppr;
////	}
//	
//	@Override
//	public String toString() {
//		return "Demande [motif=" + motif + ", dateDemande=" + dateDemande +"]";
//	}


}
