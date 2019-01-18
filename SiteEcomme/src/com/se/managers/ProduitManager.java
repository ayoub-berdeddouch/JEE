package com.se.managers;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import com.se.beans.Client;
import com.se.beans.Produit;

public class ProduitManager {
	private static Connection db;
	  private Produit produit;
	  
	  public ProduitManager(Produit produit, Connection db){
	    setProduit(produit);
	    setDb(db);
	  }
	  
	  public Produit select() {
	    Produit pro = new Produit();
	    try {
	      PreparedStatement statement = null;
	      String query = "SELECT `numPro`, `puPro`, `nomPro`, `famPro`, `image` FROM `produit` WHERE `numPro`= ?";
	      System.out.println(query);
	      statement = db.prepareStatement(query);
	      statement.setInt(1, produit.getNumPro());
	      ResultSet rs = null;
	      rs = statement.executeQuery();
	      if (!rs.isBeforeFirst())
	        return new Produit();
	      rs.next();
	     pro.setNumPro(rs.getInt(1));
	     pro.setPuProd(rs.getDouble(2));
	     pro.setNomPro(rs.getString(3));
	     pro.setFamPro(rs.getInt(4));
	     pro.setImage(rs.getString(5));
	    } catch (SQLException e) {
	      e.printStackTrace();
	      System.exit(-1);
	    }
	    return pro;

	  

	  }
	  public ArrayList<Produit> getList(int cat){
	    ArrayList<Produit> produits = new ArrayList<Produit>();
	    try {
	      PreparedStatement statement = null;
	      String query = "SELECT * FROM `produit` WHERE `famPro` = ?";
	      System.out.println(query);
	      ResultSet rs = null;
	      statement = db.prepareStatement(query);
	      statement.setInt(1, cat);
	      rs = statement.executeQuery();
	      while (rs.next()) {
	        Produit tmpProduit = new Produit();
	        tmpProduit.setNumPro(rs.getInt(1));
	        tmpProduit.setPuProd(rs.getInt(2));
	        tmpProduit.setNomPro(rs.getString(3));
	        tmpProduit.setFamPro(rs.getInt(4));
	        tmpProduit.setImage(rs.getString(5));
	        produits.add(tmpProduit);
	      }
	    } catch (SQLException e) {
	      e.printStackTrace();
	      System.exit(-1);
	    }
	    return produits;
	  }
	  public ArrayList<Produit> getList(){
	    ArrayList<Produit> produits = new ArrayList<Produit>();
	    try {
	      Statement statement = db.createStatement();
	      String query = "SELECT * FROM `produit`";
	      System.out.println(query);
	      ResultSet rs = null;
	      rs = statement.executeQuery(query);
	      while (rs.next()) {
	        Produit tmpProduit = new Produit();
	        produit.setNumPro(rs.getInt(1));
	        produit.setPuProd(rs.getInt(2));
	        produit.setNomPro(rs.getString(3));
	        produit.setFamPro(rs.getInt(4));
	        produit.setImage(rs.getString(5));
	        produits.add(tmpProduit);
	      }
	    } catch (SQLException e) {
	      e.printStackTrace();
	      System.exit(-1);
	    }
	    return produits;
	  }
	  
	  public void update(){
	    if(!FamilleManager.familleExistes(produit.getFamPro())){
	      System.out.println("Can not update cause' famille doest existe!");
	      return;
	    }
	    try {
	      PreparedStatement statement = null;
	      String query =
	          "UPDATE `produit` SET `puPro`=?,`nomPro`=?,`famPro`=? WHERE `numPro`=?";
	      System.out.println(query);
	      statement = db.prepareStatement(query);

	      statement.setDouble(1, produit.getPuProd());
	      statement.setString(2, produit.getNomPro());
	      statement.setInt(3, produit.getFamPro());
	      statement.setInt(4, produit.getNumPro());
	      statement.execute();
	    } catch (SQLException e) {
	      e.printStackTrace();
	      System.exit(-1);
	    }
	  }
	  
	  public void insert(){
	    if(!FamilleManager.familleExistes(produit.getFamPro())){
	      System.out.println("error fam doesnt existe");
	      return;
	    }
	    try {
	      PreparedStatement statement;
	      String query =
	          "INSERT INTO `produit`(`numPro`, `puPro`, `nomPro`, `famPro`, `image`) VALUES (?,?,?,?,?)";
	      System.out.println(query);
	      statement = db.prepareStatement(query);
	      statement.setInt(1, produit.getNumPro());
	      statement.setDouble(2, produit.getPuProd());
	      statement.setString(3, produit.getNomPro());
	      statement.setInt(4, produit.getFamPro());
	      statement.setString(5, produit.getImage());
	      statement.execute();
	    } catch (SQLException e) {
	      e.printStackTrace();
	      System.exit(-1);
	    }
	  }
	  
	  public static boolean produitExistes(int id) {
	    try {
	      PreparedStatement statement = null;
	      String query = "SELECT * FROM `produit` WHERE `numPro` = ?";
	      System.out.println(query);
	      statement = db.prepareStatement(query);
	      statement.setInt(1, id);
	      ResultSet rs = null;
	      rs = statement.executeQuery();
	      if (!rs.isBeforeFirst())
	        return false;
	    } catch (SQLException e) {
	      e.printStackTrace();
	      System.exit(-1);
	    }
	    return true;
	  }
	  
	  public Produit getProduit() {
	    return produit;
	  }
	  public void setProduit(Produit produit) {
	    this.produit = produit;
	  }
	  public static Connection getDb() {
	    return db;
	  }
	  public static void setDb(Connection db) {
	    ProduitManager.db = db;
	  }

}
