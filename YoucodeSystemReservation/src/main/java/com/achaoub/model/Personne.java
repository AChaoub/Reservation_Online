package com.achaoub.model;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.Table;



import lombok.Data;


@Entity
@Table(name= "Personne")
public @Data class Personne {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int idPersonne;
	
	@Column(name = "Nom_Personne", nullable = true)
	private String nomPersonne;
	
	@Column(name = "Prenom_Personne", nullable = true)
	private String prenomPersonne;
	
	@Column(name = "Email_Personne",unique = true) 
	private String emailPersonne;
	 
	@Column(name = "Password_Personne", nullable = true)
	private String passwordPersonne;
	 
	@Column(name = "Role_Personne", nullable = false,columnDefinition = "varchar(255) default 'Apprenant'")
	private String rolePersonne ="Apprenant";
	
	@Column(name = "Status_Personne", nullable = false,columnDefinition = "varchar(255) default false")
	private boolean statusPersonne =false;
	
	@Column(name="Date_inscription")
	private LocalDate date;
	
	@ManyToOne
	@JoinColumn(name = "idRef")
	private Referenciel referenciel;
	
	
	@ManyToMany
	@JoinTable(name = "Demandes_Apprenants", joinColumns = @JoinColumn(name = "idPersonne"), 
	inverseJoinColumns = @JoinColumn(name = "idDemande"))
	private List<Demande> listesAppr = new ArrayList<Demande>();
	
	
	private static int cpt = 0;
	
	public Personne(String nomPersonne, String prenomPersonne, String emailPersonne, String passwordPersonne,String role,Referenciel ref) {
		this.nomPersonne = nomPersonne;
		this.prenomPersonne = prenomPersonne;
		this.emailPersonne = emailPersonne;
		this.passwordPersonne = passwordPersonne;
		this.rolePersonne = role;
		this.referenciel = ref;
		cpt++;
	}
	public Personne(String nomPersonne, String prenomPersonne, String emailPersonne, String passwordPersonne,Referenciel ref) {
		this.nomPersonne = nomPersonne;
		this.prenomPersonne = prenomPersonne;
		this.emailPersonne = emailPersonne;
		this.passwordPersonne = passwordPersonne;
		this.rolePersonne = "Apprenant";
		this.statusPersonne = false;
		this.referenciel = ref;
		cpt++;
	}
	public Personne(String nomPersonne, String prenomPersonne, String emailPersonne, String passwordPersonne) {
		
		this.nomPersonne = nomPersonne;
		this.prenomPersonne = prenomPersonne;
		this.emailPersonne = emailPersonne;
		this.passwordPersonne = passwordPersonne;
		this.rolePersonne = "Apprenant";
		this.statusPersonne = false;
		this.referenciel = new Referenciel("Dev");
		cpt++;
	}
	public Personne() {
	}
	
	
	
	public int getCpt() {
		return this.cpt;
	}
	
	
//	public int getIdPersonne() {
//		return idPersonne;
//	}
//	public void setIdPersonne(int idPersonne) {
//		this.idPersonne = idPersonne;
//	}
//	public String getNomPersonne() {
//		return nomPersonne;
//	}
//	public void setNomPersonne(String nomPersonne) {
//		this.nomPersonne = nomPersonne;
//	}
//	public String getPrenomPersonne() {
//		return prenomPersonne;
//	}
//	public void setPrenomPersonne(String prenomPersonne) {
//		this.prenomPersonne = prenomPersonne;
//	}
//	public String getEmailPersonne() {
//		return emailPersonne;
//	}
//	public void setEmailPersonne(String emailPersonne) {
//		this.emailPersonne = emailPersonne;
//	}
//	public String getPasswordPersonne() {
//		return passwordPersonne;
//	}
//	public void setPasswordPersonne(String passwordPersonne) {
//		this.passwordPersonne = passwordPersonne;
//	}
//	public String getRole() {
//		return role;
//	}
//	public void setRole(String role) {
//		this.role = role;
//	}
//	public Referenciel getReferenciel() {
//		return referenciel;
//	}
//	public void setReferenciel(Referenciel referenciel) {
//		this.referenciel = referenciel;
//	}
//	
//	
//	public List<Demande> getListesAppr() {
//		return listesAppr;
//	}
//	public void setListesAppr(List<Demande> listesAppr) {
//		this.listesAppr = listesAppr;
//	}
//	@Override
//	public String toString() {
//		return "Personne [idPersonne=" + idPersonne + ", nomPersonne=" + nomPersonne + ", prenomPersonne="
//				+ prenomPersonne + ", emailPersonne=" + emailPersonne + ", passwordPersonne=" + passwordPersonne
//				+ ", role=" + role + ", referenciel=" + referenciel + "]";
//	}
	
	

}
