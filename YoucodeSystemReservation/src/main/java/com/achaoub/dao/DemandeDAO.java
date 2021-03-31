package com.achaoub.dao;


import java.util.ArrayList;

import com.achaoub.model.Demande;
import com.mysql.cj.x.protobuf.MysqlxDatatypes.Array;


public interface DemandeDAO {
	
	public boolean saveDemande(Demande demande);
	public ArrayList<Demande> getAllDemandes();
	public Demande getDemandeById(int id);
	public ArrayList<Demande> getDemandesByApp(int id);
	public void approuverDemande(int idDemande);
	public ArrayList<Demande> getDemandesByAppHebdo(int id,int semaine);
	public ArrayList<Demande> getDemandesHebdo(int semaine);

}
