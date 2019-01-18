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

import com.se.beans.Panier;

@SuppressWarnings("serial")
public class RemoveProductServlet extends HttpServlet {
	
	@Override
	  protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException,
	      IOException {
	    HttpSession session = request.getSession();
	    if (session.isNew()) {
	      request.getRequestDispatcher("login").forward(request, response);
	    } else {
	      Panier panier = new Panier();
	      panier=(Panier)session.getAttribute("panier");
	      int id = 0;
	      int quantite = 1;
	      System.out.println(request.getParameter("quantite"));
	      try {
	        id = Integer.parseInt(request.getParameter("produit"));
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
	      }
	      panier.suprimerProduit(id);
	      session.setAttribute("panier", panier);
	      response.sendRedirect("panier");
	    }

	  }

	  @Override
	  protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException,
	      IOException {
	    
	  }


}
