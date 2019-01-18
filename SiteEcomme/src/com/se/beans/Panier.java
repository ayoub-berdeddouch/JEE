package com.se.beans;

import java.util.ArrayList;

public class Panier {
	
	private float total;
	  private int nombreArticles = 0;
	  private ArrayList<Produit> produits = new ArrayList<Produit>();
	  
	  public void update(){
	    total = 0;
	    for(int i = 0; i<produits.size(); i++){
	      total += produits.get(i).getPuProd() * produits.get(i).getQantite();
	    }
	    nombreArticles = produits.size();
	  }
	  
	  public void ajouterProduit(Produit p){
	    this.getProduits().add(p);
	    update();
	  }
	  
	  public void suprimerProduit(int id){
	    for(int i = 0; i<produits.size(); i++){
	      if(produits.get(i).getNumPro() == id){
	        produits.remove(i);
	      }
	    }
	    update();
	  }
	  
	  public float getTotal() {
	    return total;
	  }

	  public void setTotal(float total) {
	    this.total = total;
	  }

	  public ArrayList<Produit> getProduits() {
	    return produits;
	  }

	  public void setProduits(ArrayList<Produit> produits) {
	    this.produits = produits;
	  }

	  public int getNombreArticles() {
	    return nombreArticles;
	  }

	  public void setNombreArticles(int nombreArticles) {
	    this.nombreArticles = nombreArticles;
	  }

}
