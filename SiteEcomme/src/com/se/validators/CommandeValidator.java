package com.se.validators;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.se.beans.Client;
import com.se.beans.Panier;
import com.se.beans.Produit;

public class CommandeValidator {
	private Panier panier;
	  private Client client;
	  public static Connection db;

	  public CommandeValidator() {
	    panier = new Panier();
	    client = new Client();
	  }
	  
	  public void validate(Panier panier){
	    for(int i = 0; i<panier.getProduits().size() ; i++){
	      validate(panier.getProduits().get(i));
	    }
	  }
	  
	  public void validate(Produit p) {
	    try {
	      PreparedStatement statement;
	      // insert into the cdecli liaison client commande
	      String query = "INSERT INTO `cdecli`(`numcde`, `numcli`) VALUES (?,?)";
	      System.out.println(query);
	      statement = db.prepareStatement(query);
	      statement.setInt(1, getLastId()+1);
	      statement.setInt(2, client.getNumCli());
	      statement.execute();

	      // insertion prod cde

	      query = "INSERT INTO `procde`(`numpro`, `numcde`, `qte`) VALUES (?,?,?)";
	      System.out.println(query);
	      statement = db.prepareStatement(query);
	      statement.setInt(1, p.getNumPro());
	      statement.setInt(2, getLastId()+1);
	      statement.setInt(3, p.getQantite());
	      statement.execute();
	      // insertion d'une nouvelle commande
	      
	      query = "INSERT INTO `commande`(`numCde`, `dateCde`) VALUES (?,CURRENT_DATE)";
	      System.out.println(query);
	      statement = db.prepareStatement(query);
	      statement.setInt(1, getLastId()+1);
	      statement.execute();
	      
	      System.out.println("done!!");
	      
	    } catch (SQLException e) {
	      e.printStackTrace();
	      System.exit(-1);
	    }
	  }

	  public int getLastId() {
	    int id = 0;
	    try {
	      Statement statement = db.createStatement();
	      String query = "SELECT MAX(`numCde`) FROM `commande`";
	      System.out.println(query);
	      ResultSet rs = null;
	      rs = statement.executeQuery(query);
	      //System.out.println(rs.isBeforeFirst());
	      rs.next();
	      if(!rs.isBeforeFirst()){
	        id = rs.getInt(1);
	      }

	    } catch (SQLException e) {
	      e.printStackTrace();
	      System.exit(-1);
	    }
	    return id;
	  }

	  public Panier getPanier() {
	    return panier;
	  }

	  public void setPanier(Panier panier) {
	    this.panier = panier;
	  }

	  public Client getClient() {
	    return client;
	  }

	  public void setClient(Client client) {
	    this.client = client;
	  }

}
