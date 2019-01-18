package com.se.validators;

import java.util.ArrayList;

import com.se.beans.Client;
import com.se.managers.ClientManager;

public class ClientValidator {
	
	private Client client = new Client();
	  ClientManager clientManager;
	  private boolean isValidate = true;
	  private ArrayList<String> errors = new ArrayList<String>();
	  
	  public ArrayList<String> getErrors() {
	    return errors;
	  }

	  public void setErrors(ArrayList<String> errors) {
	    this.errors = errors;
	  }

	  public ClientValidator(ClientManager manager){
	    this.clientManager=manager;
	  }
	  
	  public void run(String nom, String prenom, String adresse, String mdp, String mdpV){
	    String nomClient = nom;
	    String prenomClient = prenom;
	    String adresseClient = adresse;
	    String motDePasse = mdp;
	    String motDePasseVerify = mdpV;
	    if(nomClient.length()< 3 ){
	      errors.add("Nom trés court! Merci de le verifier");
	      isValidate = false;
	    }

	    if(!nomClient.matches("^[a-zA-Z0-9\\._\\-]+")){
	      errors.add("Nom Invalide ! Merci de le verifier");
	      isValidate = false;
	    }
	    if(prenomClient.length() < 3){
	      errors.add("Prénom trés court! Merci de le verifier");
	      isValidate = false;
	    }

	    if(adresseClient.length()<5){
	      errors.add("Adresse tres courte! Merci de la verifier");
	      isValidate = false;
	    }
	    if(motDePasse.length()<6){
	      errors.add("Mot de passe trés courte! Au moins 6 caracteres Merci de le verifier");
	      isValidate = false;
	    }
	    if(!motDePasse.equals(motDePasseVerify)){
	      errors.add("Les deux mots de passe ne sont pas identiques! Merci de les verifier");
	      isValidate = false;
	    }
	    if(ClientManager.userExists(nomClient, motDePasse)){
	      errors.add("utilisateur existe déja!");
	      isValidate = false;
	    }
	    if(isValidate){
	      client.setNomCli(nomClient);
	      client.setPrenomCli(prenomClient);
	      client.setAdrCli(adresseClient);
	      client.setPass(motDePasse);
	      
	    }
	  }
	  
	  public Client getClient() {
	    return client;
	  }

	  public void setClient(Client client) {
	    this.client = client;
	  }



	  public boolean isValidate() {
	    return isValidate;
	  }



	  public void setValidate(boolean isValidate) {
	    this.isValidate = isValidate;
	  } 

}
