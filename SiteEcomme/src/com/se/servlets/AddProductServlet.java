package com.se.servlets;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.se.beans.Client;
import com.se.beans.Panier;
import com.se.beans.Produit;
import com.se.managers.ProduitManager;

@SuppressWarnings("serial")
public class AddProductServlet  extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
		      throws ServletException, IOException {
		    HttpSession session = request.getSession();
		    Client clt = null;
		    clt = (Client)session.getAttribute("client");
		    if (clt == null) {
		      request.getRequestDispatcher("login").forward(request, response);
		    } else {
		      Panier panier = new Panier();
		      panier=(Panier)session.getAttribute("panier");
		      int id = 0;
		      int quantite = 1;
		      System.out.println(request.getParameter("quantite"));
		      String sQuantity =
		          (request.getParameter("quantite") == null) ? "1" : request.getParameter("quantite");
		      try {
		        id = Integer.parseInt(request.getParameter("produit"));
		        quantite = Integer.parseInt(sQuantity);
		      } catch (NumberFormatException e) {
		        e.printStackTrace();

		      }
		      System.out.println(id);
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
		      }

		      ProduitManager pm = new ProduitManager(new Produit(), connection);
		      Produit p = new Produit();
		      p.setNumPro(id);
		      pm.setProduit(p);
		      p = pm.select();
		      p.setQantite(quantite);
		      //System.out.println(panier.getTotal());
		      panier.ajouterProduit(p);
		      session.setAttribute("panier", panier);
		      response.sendRedirect("familles");
		    }

		  }

		  @Override
		  protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException,
		      IOException {
		    doGet(req, resp);
		  }


}
