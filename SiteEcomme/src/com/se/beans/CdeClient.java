package com.se.beans;

public class CdeClient {
	private int numCde;
	  private int numCli;
	  
	  public CdeClient(){
	    this.setNumCde(-1);
	    this.setNumCli(-1);
	  }
	  
	  public CdeClient( int numCli, int numCde){
	    this.setNumCde(numCde);
	    this.setNumCli(numCli);
	  }
	  
	  public int getNumCde() {
	    return numCde;
	  }
	  public void setNumCde(int numCde) {
	    this.numCde = numCde;
	  }
	  public int getNumCli() {
	    return numCli;
	  }
	  public void setNumCli(int numCli) {
	    this.numCli = numCli;
	  }

}
