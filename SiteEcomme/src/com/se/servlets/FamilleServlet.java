package com.se.servlets;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.se.beans.Famille;
import com.se.beans.Produit;
import com.se.managers.FamilleManager;
import com.se.managers.ProduitManager;

@SuppressWarnings("serial")
public class FamilleServlet extends HttpServlet  {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
		      throws ServletException, IOException {
		    String id = (request.getParameter("famille") != null) ? request.getParameter("famille") : "1";
		    int famille = 1;
		    System.out.println(id);
		    try {
		      famille = Integer.parseInt(id);
		    } catch (NumberFormatException e) {
		      e.printStackTrace();
		    }
		    String URL = "jdbc:mysql://localhost/ecommerce";
		    String userName = "root";
		    String passWord = "";
		    Connection connection = null;
		    try {
		      Class.forName("com.mysql.jdbc.Driver");
		      connection = DriverManager.getConnection(URL, userName, passWord);
		    } catch (ClassNotFoundException | SQLException e) {
		      // TODO Auto-generated catch block
		      e.printStackTrace();
		      response.sendRedirect("familles?famille=1");
		    }
		    
		    ArrayList<Famille> familles = new FamilleManager(connection, new Famille()).getList();
		    request.setAttribute("listeFamilles", familles);
		    request.setAttribute("nombreFamilles", familles.size());
		    
		    ProduitManager pm = new ProduitManager(new Produit(), connection);
		    ArrayList<Produit> listeProduits = pm.getList(famille);
		    if (listeProduits.size() == 0) {
		      response.sendRedirect("familles?famille=1");
		    } else {
		      Famille fam = new Famille();
		      fam.setNumFam(famille);
		      FamilleManager fm = new FamilleManager(connection, fam);
		      System.out.println(fam.getNomFam());
		      request.setAttribute("nomFamille", fm.select().getNomFam());
		      request.setAttribute("produits", listeProduits);
		      
		      request.getRequestDispatcher("shop/familles.jsp").forward(request, response);
		    }
		  }

		  @Override
		  protected void doPost(HttpServletRequest request, HttpServletResponse response)
		      throws ServletException, IOException {}


}
