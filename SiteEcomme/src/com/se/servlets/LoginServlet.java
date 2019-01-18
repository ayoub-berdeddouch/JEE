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

@SuppressWarnings("serial")
public class LoginServlet extends HttpServlet {
	
	@Override
	  public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException,
	      IOException {
	    request.getRequestDispatcher("shop/login.jsp").forward(request, response);
	  }

	  @Override
	  protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException,
	      IOException {
	    String URL = "jdbc:mysql://localhost/ecommerce";
	    String userName = "root";
	    String passWord = "";
	    Connection connection = null;
	    
	    
	    try {
	      Class.forName("com.mysql.jdbc.Driver");
	      connection = DriverManager.getConnection(URL, userName, passWord);
	      System.out.println("trruuuuueee");
	    } catch (ClassNotFoundException | SQLException e) {
	      // TODO Auto-generated catch block
	      e.printStackTrace();
	    }    
	    
	    String login = request.getParameter("nom");
	    String pass = request.getParameter("motDePasse");
	    ClientManager.db = connection;
	    System.out.println(ClientManager.userExists(login, pass));
	    HttpSession session = request.getSession();
	    if(ClientManager.userExists(login, pass)){
	      Client clt = new Client();
	      ClientManager manager = new ClientManager(clt, connection);
	      clt= manager.getClientForConnexion(login, pass);
	      session.setAttribute("client", clt);
	      session.setAttribute("panier", new Panier());
	      response.sendRedirect("familles");
	    }
	    else{
	      request.setAttribute("errors", true);
	      request.getRequestDispatcher("shop/login.jsp").forward(request, response);
	    }
	    System.out.println(login);
	    System.out.println(pass);
	    
	  }

}
