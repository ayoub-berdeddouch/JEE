package com.se.beans;

public class Famille {
	
	private int numFam;
	  private String nomFam;
	  private String image;

	  public Famille() {
	    numFam = -1;
	    nomFam = "";
	    image = "";
	  }
	  
	  public Famille(int numFam, String nomFam, String image){
	    this.setNumFam(numFam);
	    this.setNomFam(nomFam);
	    this.setImage(image);
	  }

	  public int getNumFam() {
	    return numFam;
	  }

	  public void setNumFam(int numFam) {
	    this.numFam = numFam;
	  }

	  public String getNomFam() {
	    return nomFam;
	  }

	  public void setNomFam(String nomFam) {
	    this.nomFam = nomFam;
	  }

	  public String getImage() {
	    return image;
	  }

	  public void setImage(String image) {
	    this.image = image;
	  }

}
