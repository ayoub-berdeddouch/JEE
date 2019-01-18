package com.se.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.se.beans.Client;

@SuppressWarnings("serial")
public class PanierServlet   extends HttpServlet {
	
	@Override
	  protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException,
	      IOException {
	    Client clt = null;
	    HttpSession session = request.getSession();
	    clt = (Client)session.getAttribute("client");
	    if(clt== null){
	      System.out.println("here");
	      request.getRequestDispatcher("login").forward(request, response);
	    }else
	    request.getRequestDispatcher("shop/panier.jsp").forward(request, response);
	  }

	  @Override
	  protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException,
	      IOException {

	  }



}
