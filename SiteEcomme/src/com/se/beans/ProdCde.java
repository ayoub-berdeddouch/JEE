package com.se.beans;

public class ProdCde {
	private int numPro;
	  private int numCde;
	  private int qteCde;
	  
	  public ProdCde(){
	    this.setNumCde(-1);
	    this.setNumPro(-1);
	    this.setQteCde(0);
	  }
	  
	  public ProdCde(int numPro, int numCde, int qteCde){
	    this.setNumPro(numPro);
	    this.setNumCde(numCde);
	    this.setQteCde(qteCde);
	  }
	  
	  public int getNumPro() {
	    return numPro;
	  }
	  public void setNumPro(int numPro) {
	    this.numPro = numPro;
	  }
	  public int getNumCde() {
	    return numCde;
	  }
	  public void setNumCde(int numCde) {
	    this.numCde = numCde;
	  }
	  public int getQteCde() {
	    return qteCde;
	  }
	  public void setQteCde(int qteCde) {
	    this.qteCde = qteCde;
	  }

}
