package com.achaoub.model;

import java.time.LocalDate;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import lombok.Data;



@Entity
public @Data class Demande {
	
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int idDemande;
	

	private boolean isStatus =false;
	
	private boolean choisi = false;
	
	private LocalDate dateDemande;
	
	private LocalDate dateOffre;
	
	private int nombreSemaine;
	
	
	@ManyToOne(cascade = {CascadeType.PERSIST,CascadeType.REMOVE})
	@JoinColumn(name = "id_Personne")
	private Personne personne;
	
	
	public Demande(LocalDate dateDemande ,LocalDate dateOffre,Personne p) {
		this.isStatus = false;
		this.choisi = true;
		this.dateDemande = dateDemande;
		this.dateOffre = dateOffre;
		this.personne = p;
		this.nombreSemaine = (dateOffre.getDayOfYear()-4)/7;
	}


	public Demande(LocalDate dateDemande ,LocalDate dateOffre) {
		this.isStatus = false;
		this.choisi = true;
		this.dateDemande = dateDemande;
		this.dateOffre = dateOffre;
		this.nombreSemaine = (dateOffre.getDayOfYear()-4)/7;
	}


	
	


	public Demande() {
		super();
		// TODO Auto-generated constructor stub
	}
	


	@Override
	public String toString() {
		return "Demande [idDemande=" + idDemande + ", isStatus=" + isStatus + ", choisi=" + choisi + ", dateDemande="
				+ dateDemande + ", dateOffre=" + dateOffre + "]";
	}
	
	


}
