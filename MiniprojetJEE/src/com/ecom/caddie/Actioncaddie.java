package com.ecom.caddie;
import com.ecom.caddie.Caddie;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.util.ArrayList;
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
	private List<Double> qte = new ArrayList<Double>();
	private List<Caddie> cd = new ArrayList<Caddie>();
	
	List<String> prodNumfinal = new ArrayList<String>();


	private int []tab = new int [nbr_pr()];
	private   Map<String, Object> sessionMap ;
	 
	@SuppressWarnings("unchecked")
	public String execute() throws Exception{
		if (sessionMap.containsKey("panierNum")) {
			System.out.println("votre session est ouvert");
			List<String> prodNumtmp = new ArrayList<String>();
			List<String> prodNomtmp = new ArrayList<String>();
			List<String> prodPrixtmp = new ArrayList<String>();
			prodNumtmp = (List<String>) sessionMap.get("panierNum");
			prodNomtmp = (List<String>) sessionMap.get("panierNom");
			prodPrixtmp = (List<String>) sessionMap.get("panierPrix");
	        prodNum.addAll(prodNumtmp);
	        prodPrix.addAll(prodPrixtmp);
	        prodNom.addAll(prodNomtmp);
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
					 sessionMap.put("qte",qte);
					 return SUCCESS ;
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
	      }
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
	public String vider_caddie() {
		sessionMap.remove("panierNum");
		sessionMap.remove("panierNom");
		sessionMap.remove("panierPrix");
	return SUCCESS;
}
	

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
	public List<Double> getQte() {
		return qte;
	}

	public void setQte(List<Double> qte) {
		this.qte = qte;
	}
	@Override
	public void setSession(Map<String, Object> sessionMap) {
		this.sessionMap = sessionMap;
	}
	
	public int [] getTab() {
		return tab;
	}
	public void setTab(int [] tab) {
		this.tab = tab;
	}
	
	

	public List<Caddie> getCd() {
		return cd;
	}

	public void setCd(List<Caddie> cd) {
		this.cd = cd;
	}
		
  }
	



	
	 


