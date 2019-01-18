package com.se.beans;

public class Client {
	
	private int numCli;
	  private String nomCli;
	  private String prenomCli;
	  private String adrCli;
	  private String pass;
	  public Client (){
	    this.setNumCli(-1);
	    this.setNomCli("");
	    this.setPrenomCli("");
	    this.setAdrCli("");
	    this.setPass("");
	  }
	  
	  public Client (int numCli, String nomCli, String prenomCli, String adrCli){
	    this.setNumCli(numCli);
	    this.setNomCli(nomCli);
	    this.setPrenomCli(prenomCli);
	    this.setAdrCli(adrCli);
	  }
	  
	  public int getNumCli() {
	    return numCli;
	  }
	  public void setNumCli(int numCli) {
	    this.numCli = numCli;
	  }
	  public String getPrenomCli() {
	    return prenomCli;
	  }
	  public void setPrenomCli(String prenomCli) {
	    this.prenomCli = prenomCli;
	  }
	  public String getNomCli() {
	    return nomCli;
	  }
	  public void setNomCli(String nomCli) {
	    this.nomCli = nomCli;
	  }
	  public String getAdrCli() {
	    return adrCli;
	  }
	  public void setAdrCli(String adrCli) {
	    this.adrCli = adrCli;
	  }

	  public String getPass() {
	    return pass;
	  }

	  public void setPass(String pass) {
	    this.pass = pass;
	  }

}
