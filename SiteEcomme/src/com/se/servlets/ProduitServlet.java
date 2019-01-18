package com.se.servlets;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.se.beans.Famille;
import com.se.beans.Produit;
import com.se.managers.FamilleManager;
import com.se.managers.ProduitManager;

@SuppressWarnings("serial")
public class ProduitServlet extends HttpServlet{
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException,
    IOException {
  int id = 0;
  try{
    id = Integer.parseInt(request.getParameter("produit"));
  }catch(NumberFormatException e){
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
  System.out.println("num: "+p.getNumPro());
  request.setAttribute("produit", p);
  Famille f = new Famille();
  f.setNumFam(p.getFamPro());
  FamilleManager fm = new FamilleManager(connection,f);
  System.out.println(fm.select().getNomFam());
  request.setAttribute("nomFamille", fm.select().getNomFam());
  request.getRequestDispatcher("shop/produit.jsp").forward(request, response);
  
}

@Override
protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException,
    IOException {
  doGet(request, response);
  
}


}
