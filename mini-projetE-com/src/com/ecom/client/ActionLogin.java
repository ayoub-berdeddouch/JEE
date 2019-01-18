package com.ecom.client;

import java.sql.DriverManager;
import java.sql.Connection;
import java.sql.ResultSet;
import com.mysql.jdbc.PreparedStatement;
import com.opensymphony.xwork2.ActionSupport;

@SuppressWarnings("serial")
public class ActionLogin extends ActionSupport {
	private String adrCli;

	
	   private String user_1;
	   private String password_1;
	   
	   public String execute() {
		   
	      String ret = INPUT;
	      Connection conn = null;
	     
	      
	      try {
	         String URL = "jdbc:mysql://localhost/ecomme";
	         Class.forName("com.mysql.jdbc.Driver");
	         conn = DriverManager.getConnection(URL, "root", "");
	         String sql = "SELECT adrCli FROM client WHERE nomCli = ? AND pass = ?";
	         
	         PreparedStatement ps = (PreparedStatement) conn.prepareStatement(sql);
	         ps.setString(1, user_1);
	         ps.setString(2, password_1);
	         
	         ResultSet rs = ps.executeQuery();
	         
	         
	         while (rs.next()) {
	        	 adrCli = rs.getString(1); 
	            ret = SUCCESS;
	         }
	      } catch (Exception e) {
	         ret = INPUT;
	      } finally {
	         if (conn != null) {
	            try {
	               conn.close();
	            } catch (Exception e) {
	            }
	         }
	      }
	      return ret;
	   }

	   public String getUser_1() {
	      return user_1;
	   }

	   public void setUser_1(String user_1) {
	      this.user_1 = user_1;
	   }

	   public String getPassword_1() {
	      return password_1;
	   }

	   public void setPassword_1(String password_1) {
	      this.password_1 = password_1;
	   }

	public String getAdrCli() {
		return adrCli;
	}

	public void setAdrCli(String adrCli) {
		this.adrCli = adrCli;
	}


}
