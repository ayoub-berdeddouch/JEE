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
import com.se.validators.CommandeValidator;

public class ValiderCommandeServlet extends HttpServlet {

	@Override
	  public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException,
	      IOException {
	    Client clt = null;
	    HttpSession session = request.getSession();
	    clt = (Client)session.getAttribute("client");
	    if(clt== null){
	      request.getRequestDispatcher("login").forward(request, response);
	    }else{
	    
	    
	    Panier panier = new Panier();
	    panier=(Panier)session.getAttribute("panier");
	    
	    
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
	    CommandeValidator validator = new CommandeValidator();
	    CommandeValidator.db = connection;
	    validator.setClient(clt);
	    validator.validate(panier);
	    request.setAttribute("client", (Client)session.getAttribute("client"));
	    session.invalidate();
	    request.getRequestDispatcher("shop/cmdvalider.jsp").forward(request, response);
	    }

	  }

	  @Override
	  public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException,
	      IOException {
	    doGet(request, response);
	  }
}
