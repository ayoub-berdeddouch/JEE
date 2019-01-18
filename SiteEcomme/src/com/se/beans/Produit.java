package com.se.beans;

public class Produit {
	
	private int numPro;
	  private double puProd;
	  private String nomPro;
	  private int famPro;
	  private String image;
	  private int qantite;

	  public Produit() {
	    this.setNumPro(-1);
	    this.setPuProd(-1);
	    this.setNomPro("");
	    this.setFamPro(-1);
	    this.setQantite(1);
	  }
	  
	  public Produit(int numPro, double puProd, String nomPro, int famPro, String image){
	    this.setNumPro(numPro);
	    this.setPuProd(puProd);
	    this.setNomPro(nomPro);
	    this.setFamPro(famPro);
	    this.setImage(image);
	  }

	  public int getNumPro() {
	    return numPro;
	  }

	  public void setNumPro(int numPro) {
	    this.numPro = numPro;
	  }

	  public String getNomPro() {
	    return nomPro;
	  }

	  public void setNomPro(String nomPro) {
	    this.nomPro = nomPro;
	  }

	  public double getPuProd() {
	    return puProd;
	  }

	  public void setPuProd(double puProd) {
	    this.puProd = puProd;
	  }

	  public int getFamPro() {
	    return famPro;
	  }

	  public void setFamPro(int famPro) {
	    this.famPro = famPro;
	  }

	  public String getImage() {
	    return image;
	  }

	  public void setImage(String image) {
	    this.image = image;
	  }

	  public int getQantite() {
	    return qantite;
	  }

	  public void setQantite(int qantite) {
	    this.qantite = qantite;
	  }


}
