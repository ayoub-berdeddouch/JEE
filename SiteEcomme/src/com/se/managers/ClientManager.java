package com.se.managers;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import com.se.beans.Client;

public class ClientManager {
	
	private Client client;
	  public static Connection db;

	  public ClientManager(Client client, Connection db) {
	    this.setClient(client);
	    this.setDb(db);
	  }

	  public void insert() {
	    try {
	      PreparedStatement statement;
	      /* String query =
		          "INSERT INTO `client`(`numCli`,`nomCli`, `prenomCli`, `adrCli`, `pass`) 
		          SELECT IFNULL(MAX(`numCli`)+1 , ?,?,?,?) FROM `client`";*/
	      String query =
	          "INSERT INTO `client`(`nomCli`, `prenomCli`, `adrCli`, `pass`) VALUES (?,?,?,?)";
	      System.out.println(query);
	      statement = db.prepareStatement(query);
	      statement.setString(1, client.getNomCli());
	      statement.setString(2, client.getPrenomCli());
	      statement.setString(3, client.getAdrCli());
	      statement.setString(4, client.getPass());
	      statement.execute();
	    } catch (SQLException e) {
	      e.printStackTrace();
	      System.exit(-1);
	    }
	  }

	  public void update() {
	    try {
	      PreparedStatement statement;
	      String query =
	          "UPDATE `client` SET `nomCli`=?,`prenomCli`=?,`adrCli`=?,`pass`=? WHERE `numCli`=?";
	      System.out.println(query);
	      statement = db.prepareStatement(query);

	      statement.setString(1, client.getNomCli());
	      statement.setString(2, client.getPrenomCli());
	      statement.setString(3, client.getAdrCli());
	      statement.setString(4, client.getPass());
	      statement.setInt(5, client.getNumCli());
	      statement.execute();
	    } catch (SQLException e) {
	      e.printStackTrace();
	      System.exit(-1);
	    }
	  }

	  public void delete() {
	    try {
	      PreparedStatement statement;
	      String query = "DELETE FROM `client` WHERE `numCli`=?";
	      System.out.println(query);
	      statement = db.prepareStatement(query);

	      statement.setInt(1, client.getNumCli());

	      statement.execute();
	    } catch (SQLException e) {
	      e.printStackTrace();
	      System.exit(-1);
	    }
	  }

	  public ArrayList<Client> getList() {
	    ArrayList<Client> clients = new ArrayList<Client>();
	    try {
	      Statement statement = db.createStatement();
	      String query = "SELECT * FROM `client`";
	      System.out.println(query);
	      ResultSet rs = null;
	      rs = statement.executeQuery(query);
	      while (rs.next()) {
	        Client tmpClient = new Client();
	        tmpClient.setNumCli(rs.getInt("numCli"));
	        tmpClient.setNomCli(rs.getString("nomCli"));
	        tmpClient.setPrenomCli(rs.getString("prenomCli"));
	        tmpClient.setAdrCli(rs.getString("adrCli"));
	        clients.add(tmpClient);
	      }
	    } catch (SQLException e) {
	      e.printStackTrace();
	      System.exit(-1);
	    }

	    return clients;
	  }
	  public Client getClientForConnexion(String name, String pass){
	    Client cli = new Client();
	      try {
	        PreparedStatement statement = null;
	        String query = "SELECT `numCli`, `nomCli`, `prenomCli`, `adrCli`, `pass` "
	                        + "FROM `client` "
	                        + "WHERE `nomCli` = ? AND `pass` = ? ";
	        System.out.println(query);
	        statement = db.prepareStatement(query);
	        statement.setString(1, name);
	        statement.setString(2, pass);
	        ResultSet rs = null;
	        rs = statement.executeQuery();
	        if (!rs.isBeforeFirst())
	          return new Client();
	        rs.next();
	        cli.setNumCli(rs.getInt("numCli"));
	        cli.setNomCli(rs.getString("nomCli"));
	        cli.setPrenomCli(rs.getString("prenomCli"));
	        cli.setAdrCli(rs.getString("adrCli"));
	        cli.setPass(rs.getString("pass"));
	      } catch (SQLException e) {
	        e.printStackTrace();
	        System.exit(-1);
	    }
	    return cli;
	  }


	  public Client select() {
	    Client cli = new Client();
	    try {
	      PreparedStatement statement = null;
	      String query = "SELECT * FROM `client` WHERE `numCli`=?";
	      System.out.println(query);
	      statement = db.prepareStatement(query);
	      statement.setInt(1, client.getNumCli());
	      ResultSet rs = null;
	      rs = statement.executeQuery();
	      if (!rs.isBeforeFirst())
	        return new Client();
	      rs.next();
	      cli.setNumCli(rs.getInt("numCli"));
	      // `numCli`, `nomCli`, `prenomCli`, `adrCli`, `pass`
	      cli.setNomCli(rs.getString("nomCli"));
	      cli.setPrenomCli(rs.getString("prenomCli"));
	      cli.setAdrCli(rs.getString("adrCli"));
	      cli.setPass(rs.getString("pass"));
	    } catch (SQLException e) {
	      e.printStackTrace();
	      System.exit(-1);
	    }
	    return cli;

	  }

	  public static boolean userExists(int id) {
	    try {
	      PreparedStatement statement = null;
	      String query = "SELECT * FROM `client` WHERE `numCli`=?";
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

	  public static boolean userExists(String userName, String passwd) {
	    try {
	      PreparedStatement statement = null;
	      String query = "SELECT * FROM `client` WHERE `nomCli`=? AND `pass` = ?";
	      System.out.println(query);
	      statement = db.prepareStatement(query);
	      statement.setString(1, userName);
	      statement.setString(2, passwd);
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

	  public Client getClient() {
	    return client;
	  }

	  public void setClient(Client client) {
	    this.client = client;
	  }

	  public Connection getDb() {
	    return db;
	  }

	  public void setDb(Connection db) {
	    this.db = db;
	  }

}
