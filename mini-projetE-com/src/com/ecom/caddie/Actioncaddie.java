package com.ecom.caddie;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import org.apache.struts2.interceptor.SessionAware;

import java.util.Map;

import com.mysql.jdbc.PreparedStatement;
import com.opensymphony.xwork2.ActionSupport;

public class Actioncaddie extends ActionSupport implements SessionAware {
	private static final long serialVersionUID = 1L;
	private List<String> prodNom = new ArrayList<String>();
	private List<String> prodPrix = new ArrayList<String>();
	private List<String> prodNum = new ArrayList<String>();
	private List<String> qte = new ArrayList<String>();
	private int somme;
	
	
	private int []tab = new int [nbr_pr()];
	private   Map<String, Object> sessionMap ;
	
	@SuppressWarnings("unchecked")
	public String execute() throws Exception{
		if (sessionMap.containsKey("panierNum")) {
			System.out.println("votre session est ouvert");
			List<String> prodNumtmp = new ArrayList<String>();
			List<String> prodNomtmp = new ArrayList<String>();
			List<String> prodPrixtmp = new ArrayList<String>();
			
			//List<String> prodQtetmp = new ArrayList<String>();
			
			prodNumtmp = (List<String>) sessionMap.get("panierNum");
			prodNomtmp = (List<String>) sessionMap.get("panierNom");
			prodPrixtmp = (List<String>) sessionMap.get("panierPrix");
			
			//prodQtetmp = (List<String>) sessionMap.get("panierQte");
			
			prodNum.addAll(prodNumtmp);
	        prodPrix.addAll(prodPrixtmp);
	        prodNom.addAll(prodNomtmp);
	     
	        sessionMap.put("nbr",prodNum.size());
	        sessionMap.put("panierNum",prodNum);
	        sessionMap.put("panierNom",prodNom);
	        sessionMap.put("panierPrix",prodPrix);
	        
	       
	        
	       return save();// stocké nouveau produit quand charge une nouvelle page des produit
		}
		else
					 if(save().equals("success")){
					 sessionMap.put("logged-in","true");
					 sessionMap.put("panierNum",prodNum);
					 sessionMap.put("panierNom",prodNom);
					 sessionMap.put("panierPrix",prodPrix);
					 
					 
					 return SUCCESS ;
					 }
		 return INPUT;
			 } 
	
	 //########### Méthode execute Qte ()
	
	public String executeqte(){
		
			sessionMap.put("panierQte",qte);
			return SUCCESS;
		
	}
	
	//#################
	//########### Méthode execute TTC () 
	
    @SuppressWarnings("unchecked")
	public String executettc(){
		if(sessionMap.containsKey("panierNum")){ 
		List<String> prodQtetmp = new ArrayList<String>();
		prodQtetmp = (List<String>) sessionMap.get("panierQte");
		List<String> prodprixtmp = new ArrayList<String>();
		prodprixtmp = (List<String>) sessionMap.get("panierPrix");
		  somme=0;
		  Iterator<String> itr = prodprixtmp.iterator();
		  Iterator<String> it = prodQtetmp.iterator();
	      while(itr.hasNext() && it.hasNext()) {
	          somme += Integer.parseInt(it.next())*Integer.parseInt(itr.next());
	      }
	      return SUCCESS;
		}
		return INPUT;
	  }
	
	
	
	 
	
	/*******/
	public int nbr_pr(){
        int retu = 0;
         Connection conn = null;
         try {
            String URL = "jdbc:mysql://localhost/ecomme";
            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection(URL, "root", "");
            String sql1 = " SELECT COUNT(*) FROM produit";
            PreparedStatement ps1 = (PreparedStatement) conn.prepareStatement(sql1);
            
            ResultSet rs = ps1.executeQuery();
            
            while (rs.next() ) {
                
                retu = rs.getInt(1);
                System.out.println(retu);
            }
         
         } catch (Exception e) {
            retu = 0;
         } finally {
            if (conn != null) {
               try {
                  conn.close();
               } catch (Exception e) {
               }
            }
         }
         
         return retu;
      }
	/**********/
    //############## Méthode Save() 
	public String save(){
    	 String ret = INPUT;
	      Connection conn = null;
	     
	      try {
	         String URL = "jdbc:mysql://localhost/ecomme";
	         Class.forName("com.mysql.jdbc.Driver");
	         conn = DriverManager.getConnection(URL, "root", "");
	         
	         for( int i=0; i<tab.length ; i++){
	         String sql = "SELECT * FROM produit WHERE numPro = ? ";
	         PreparedStatement ps = (PreparedStatement) conn.prepareStatement(sql);
	         ps.setInt(1,tab[i]);
	         ResultSet rs = ps.executeQuery();
	         while (rs.next() ) {
	        	 prodNum.add(rs.getString(1));
	        	 prodPrix.add(rs.getString(2)); 
	        	 prodNom.add(rs.getString(3)); 
	             ret = SUCCESS;
	         }
	      }sessionMap.put("paniernbr",prodNum.size()); 
	      } catch (Exception e) {
	         ret = INPUT;
	      } finally {
	         if (conn != null) {
	            try {
	               conn.close();
	            } catch (Exception e) {
	            }
	         }
	      }
	      
	      return ret;
	   }
	/**/
	
	
	//############ Méthodes Vider 
	
	public String vider_caddie() {
		sessionMap.remove("panierNum");
		sessionMap.remove("panierNom");
		sessionMap.remove("panierPrix");
		sessionMap.remove("panierQte");
		sessionMap.remove("paniernbr");
		
	return SUCCESS;
}

	
	
	
	// Setters & Getters
	
	public List<String> getProdNom() {
		return prodNom;
	}

	public void setProdNom(List<String> prodNom) {
		this.prodNom = prodNom;
	}

	public List<String> getProdPrix() {
		return prodPrix;
	}

	public void setProdPrix(List<String> prodPrix) {
		this.prodPrix = prodPrix;
	}

	public List<String> getProdNum() {
		return prodNum;
	}

	public void setProdNum(List<String> prodNum) {
		this.prodNum = prodNum;
	}
	
	@Override
	public void setSession(Map<String, Object> sessionMap) {
		this.sessionMap = sessionMap;
	}

	public List<String> getQte() {
		return qte;
	}

	public void setQte(List<String> qte) {
		this.qte = qte;
	}
	public int getSomme() {
		return somme;
	}
	public void setSomme(int somme) {
		this.somme = somme;
	}
	
	public int [] getTab() {
		return tab;
	}
	public void setTab(int [] tab) {
		this.tab = tab;
	}
	

	
	
	
  }// end Class ActionCaddie
	



	
	 


