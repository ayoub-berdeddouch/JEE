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
import com.se.managers.ClientManager;
import com.se.validators.ClientValidator;

@SuppressWarnings("serial")
public class EnregistrerServlet  extends HttpServlet {
	
	@Override
	  public void doGet(HttpServletRequest request, HttpServletResponse response)
	      throws ServletException, IOException {
	    request.getRequestDispatcher("shop/signupClt.jsp").forward(request, response);

	  }

	  @Override
	  public void doPost(HttpServletRequest request, HttpServletResponse response)
	      throws ServletException, IOException {
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
	    
	    String nom = request.getParameter("nom");
	    String prenom = request.getParameter("prenom");
	    String adresse = request.getParameter("adresse");
	    String motDePasse = request.getParameter("passWord");
	    String motDePasseVerify = request.getParameter("passWordVerify");
	    HttpSession session = request.getSession();
	    session.removeAttribute("client");
	    Client client = new Client();
	    ClientManager manager = new ClientManager(client, connection);
	    ClientValidator validator = new ClientValidator(manager);
	    validator.run(nom, prenom, adresse, motDePasse, motDePasseVerify);
	    if (validator.isValidate()) {
	      manager.setClient(validator.getClient());
	      manager.insert();
	      session.setAttribute("client", validator.getClient());
	      session.setAttribute("panier", new Panier());
	      request.getRequestDispatcher("shop/signupClt.jsp").forward(request, response);
	      
	    } else {
	      request.setAttribute("errors", validator.getErrors());
	      request.getRequestDispatcher("shop/signupClt.jsp").forward(request, response);
	      System.out.println("errors");
	      
//	      Iterator<String> it = validator.getErrors().listIterator();
//	      while(it.hasNext()){
//	        System.out.println(it.next());
//	      }
	    }
	    
	  }

}
