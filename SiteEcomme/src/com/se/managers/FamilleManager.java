package com.se.managers;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import com.se.beans.Famille;


public class FamilleManager {
	
	private Famille famille;
	  private static Connection db;

	  public FamilleManager(Connection connection, Famille famille) {
	    this.setFamille(famille);
	    FamilleManager.setDb(connection);
	  }

	  public void delete() {
	    try {
	      PreparedStatement statement;
	      String query = "DELETE FROM `famille` WHERE `numFam` = ?";
	      System.out.println(query);
	      statement = db.prepareStatement(query);
	      statement.setInt(1, famille.getNumFam());
	      statement.execute();
	    } catch (SQLException e) {
	      e.printStackTrace();
	      System.exit(-1);
	    }
	  }

	  public void update() {
	    try {
	      PreparedStatement statement;
	      String query = "UPDATE `famille` SET `nomFam`=?  WHERE `numFam` = ?";
	      System.out.println(query);
	      statement = db.prepareStatement(query);
	      statement.setString(1, famille.getNomFam());
	      statement.setInt(2, famille.getNumFam());
	      statement.execute();
	    } catch (SQLException e) {
	      e.printStackTrace();
	      System.exit(-1);
	    }
	  }


	  public void insert() {
	    try {
	      PreparedStatement statement;
	      String query = "INSERT INTO `famille`(`nomFam`, `image`) VALUES (?,?);";
	      System.out.println(query);
	      statement = db.prepareStatement(query);
	      statement.setString(1, famille.getNomFam());
	      statement.setString(2, famille.getImage());
	      statement.execute();
	    } catch (SQLException e) {
	      e.printStackTrace();
	    }
	  }

	  public ArrayList<Famille> getList() {
	    ArrayList<Famille> familles = new ArrayList<Famille>();
	    try {
	      Statement statement = db.createStatement();
	      String query = "SELECT * FROM `famille`";
	      System.out.println(query);
	      ResultSet rs = null;
	      rs = statement.executeQuery(query);
	      while (rs.next()) {
	        Famille tmpFamille = new Famille();
	        tmpFamille.setNumFam(rs.getInt("numFam"));
	        tmpFamille.setNomFam(rs.getString("nomFam"));
	        tmpFamille.setImage(rs.getString("image"));
	        familles.add(tmpFamille);
	      }
	    } catch (SQLException e) {
	      e.printStackTrace();
	      System.exit(-1);
	    }

	    return familles;
	  }

	  public Famille select() {
	    Famille fam = new Famille();
	    try {
	      PreparedStatement statement = null;
	      String query = "SELECT `nomFam`, `image` FROM `famille` WHERE `numFam` = ?";
	      System.out.println(query);
	      statement = db.prepareStatement(query);
	      statement.setInt(1, famille.getNumFam());
	      ResultSet rs = null;
	      rs = statement.executeQuery();
	      if (!rs.isBeforeFirst())
	        return new Famille();
	      rs.next();
	      fam.setNomFam(rs.getString("nomFam"));
	      fam.setImage(rs.getString("image"));
	    } catch (SQLException e) {
	      e.printStackTrace();
	      System.exit(-1);
	    }
	    return fam;

	  }
	  
	  public static boolean familleExistes(int id) {
	    try {
	      PreparedStatement statement = null;
	      String query = "SELECT * FROM `famille` WHERE `numFam`=?";
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
	  
	  public Famille getFamille() {
	    return famille;
	  }

	  public void setFamille(Famille famille) {
	    this.famille = famille;
	  }

	  public static Connection getDb() {
	    return db;
	  }

	  public static void setDb(Connection db) {
	    FamilleManager.db = db;
	  }

}
