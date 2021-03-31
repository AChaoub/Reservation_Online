package com.achaoub.model;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.Data;

@Entity
@Table(name = "OffreAcces")
public @Data class OffreAcces {
	

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int idOffre;

	@Column(name = "Date_Offre", nullable = true,unique = true)
	private LocalDate dateOffre;

	@Column(name = "Nombre_Semaine",unique = true)
	private int nbrSemaine;
	
	@Column(name = "Nombre_Apprenants_Semaine")
	private int nbrApprenants;
	
	public OffreAcces() {
		
	}
	
	public OffreAcces(LocalDate dateOffre,int nbrSemaine,int nbrApprenants) {
		this.dateOffre = dateOffre;
		this.nbrSemaine = nbrSemaine;
		this.nbrApprenants = nbrApprenants;
	}

	public OffreAcces(LocalDate dateOffre,int nbrApprenants) {
		
		//recuperer justeDate dd-mm-yyyy et pas toute la date 
		LocalDate d = dateOffre;
		DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
		// convert String to LocalDate
		LocalDate localDate = LocalDate.parse(d.toString(), formatter);
		this.dateOffre = localDate;
		this.nbrSemaine = (dateOffre.getDayOfYear()-4)/7;
		this.nbrApprenants = nbrApprenants;
		
	}
}
