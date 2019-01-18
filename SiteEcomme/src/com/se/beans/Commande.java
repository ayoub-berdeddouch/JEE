package com.se.beans;

import org.joda.time.DateTime;

public class Commande {
	
	private int numPro;
	  private DateTime dateCde;
	  
	  public Commande(){
	    this.setNumPro(-1);
	    this.setDateCde(new DateTime());
	  }
	  
	  public Commande(int numPro, DateTime dateCde){
	    this.setNumPro(numPro);
	    this.setDateCde(dateCde);
	  }
	  
	  public int getNumPro() {
	    return numPro;
	  }
	  public void setNumPro(int numPro) {
	    this.numPro = numPro;
	  }
	  public DateTime getDateCde() {
	    return dateCde;
	  }
	  public void setDateCde(DateTime dateCde) {
	    this.dateCde = dateCde;
	  }

}
