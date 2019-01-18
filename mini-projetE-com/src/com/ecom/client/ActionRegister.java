package com.ecom.client;

import java.sql.Connection;
import java.sql.DriverManager;

import com.mysql.jdbc.PreparedStatement;
import com.opensymphony.xwork2.ActionSupport;

@SuppressWarnings("serial")
public class ActionRegister extends ActionSupport{
	
	private int numCli;
	private String nomCli;
	private String prenomCli;
	private String address;
	private String password;
	private String cpassword;
	
	
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
	         PreparedStatement ps = (PreparedStatement) conn.prepareStatement("insert into `client` (`nomCli`, `prenomCli`, `adrCli`, `pass`) values(?,?,?,?)");
	         ps.setString(1,getNomCli());
	         ps.setString(2,getPrenomCli());
	         ps.setString(3,getAddress());
	         ps.setString(4,getPassword());
	         
	         
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
	
	
	
	public String getNomCli() {
		return nomCli;
	}

	public void setNomCli(String nomCli) {
		this.nomCli = nomCli;
	}

	public String getPrenomCli() {
		return prenomCli;
	}

	public void setPrenomCli(String prenomCli) {
		this.prenomCli = prenomCli;
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

	public int getNumCli() {
		return numCli;
	}

	public void setNumCli(int numCli) {
		this.numCli = numCli;
	}
	
	

}
