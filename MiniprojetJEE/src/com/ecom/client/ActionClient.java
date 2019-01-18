package com.ecom.client;

import java.sql.Connection;
import java.sql.DriverManager;

import com.mysql.jdbc.PreparedStatement;
import com.opensymphony.xwork2.ActionSupport;

@SuppressWarnings("serial")
public class ActionClient extends ActionSupport {
	
	private String user;
	private int age;
	private String email;
	private String password;
	private String cpassword;
	private String address;
	
	public String execute()throws Exception {
   	 
   	if (getPassword().equals(getCpassword()) && save()>0){
   		return SUCCESS; 
   } 
   	else{
   		addFieldError("cpassword", getText("mot de passe incorrect !"));
   		return INPUT;
   	}
   }
   
   public int save(){
   	int rs=0;
		try {
	         String URL = "jdbc:mysql://localhost/ecomme";
	         Class.forName("com.mysql.jdbc.Driver");
	         Connection conn = DriverManager.getConnection(URL, "root", "");
	         PreparedStatement ps = (PreparedStatement) conn.prepareStatement("insert into utilisateur values(?,?,?,?,?)");
	         ps.setString(1,getUser());
	         ps.setString(2,getPassword());
	         ps.setInt(3,getAge());
	         ps.setString(4,getEmail());
	         ps.setString(5,getAddress());
	         
	          rs = ps.executeUpdate();
			}
			catch(Exception e){e.printStackTrace();}
			return rs;
   }
   
   public void validate() {  
		
		if(cpassword.equals(getPassword())){
			addActionMessage("votre compte est valide !");
		}else{
			addActionError("votre compte invalide !!");
		}
		
	
   }

	
	// Setters & Getters
	public String getUser() {
		return user;
	}
	public void setUser(String user) {
		this.user = user;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getCpassword() {
		return cpassword;
	}
	public void setCpassword(String cpassword) {
		this.cpassword = cpassword;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	
	
	

}
