package com.ecom.produit;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;

import com.mysql.jdbc.PreparedStatement;

public class Produit  {
	private int recherche = 1;
	int i;
	
	int prix ;
	private String[] nom_produit = new String[9];
	
	public String execute() {
		//ResultSet rs[] = new ResultSet[10];
		
		String ret = "error";
		Connection conn = null;

		String sql = null;
		try {
			String URL = "jdbc:mysql://localhost/ecomme";
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(URL, "root", "");

				sql = "SELECT  * FROM produit   ";

			PreparedStatement ps = (PreparedStatement) conn.prepareStatement(sql);
			//ps.setInt(1, recherche);

			ResultSet rs = ps.executeQuery();

			//while (rs.next()) { 
				for(i=0 ; i < 10 && rs.next();i++){
				nom_produit[i] = rs.getString(3);
				//i++;
				//prix = rs.getInt(2);
				
				ret = "success";
			}
		} catch (Exception e) {
			ret = "error";
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
	public int getRecherche() {
		return recherche;
	}
	public void setRecherche(int recherche) {
		this.recherche = recherche;
	}
	public int getPrix() {
		return prix;
	}
	public void setPrix(int prix) {
		this.prix = prix;
	}
	
	public String[] getNom_produit() {
		return nom_produit;
	}
	public void setNom_produit(String[] nom_produit) {
		this.nom_produit = nom_produit;
	}
	public int getI() {
		return i;
	}
	public void setI(int i) {
		this.i = i;
	}
	
}
