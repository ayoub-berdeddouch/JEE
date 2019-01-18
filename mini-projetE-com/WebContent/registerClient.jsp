<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@taglib uri="/struts-tags" prefix="s" %>
    
<!DOCTYPE html>
<html class=" js no-touch rgba backgroundsize borderimage borderradius csstransforms csstransforms3d csstransitions svg">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Création Utilisateur</title>
 
    <!--Styles-->
    <link href="./utils/styles.css" rel="stylesheet" media="screen">

</head>
<body>

	<!--Header-->
    <header data-offset-top="500" data-stuck="600"><!--data-offset-top is when header converts to small variant and data-stuck when it becomes visible. Values in px represent position of scroll from top. Make sure there is at least 100px between those two values for smooth animation-->
    
     
    	<!--Mobile Menu Toggle-->
      <div class="menu-toggle"><i class="fa fa-list"></i></div>

      <div class="container">
        <a class="logo" href="acceuile.jsp"><img src="./pics/eCommerce.png" alt="acceuile"></a>
      </div>
      
      <!--Main Menu-->
      <nav class="menu">
        <div class="container">
          
         <ul class="main">
          	<li class="has-submenu"><a href="acceuile.jsp"><span>A</span>cceuile<i class="fa fa-chevron-down"></i></a>
            	
            </li>
          	<li class="has-submenu"><a href="previewcaddie.jsp"><span>C</span>addie<i class="fa fa-chevron-down"></i></a>
            	
            </li>
			
          </ul>
        </div>
		<div class="toolbar-container">
        <div class="container">  
          <!--Toolbar-->
          <div class="toolbar group">
            
            <div class="cart-btn">
              <a class="btn btn-outlined-invert" href="previewcaddie.jsp"><i class="icon-shopping-cart-content"></i><span>Total</span><s:property value="#session.paniernbr"/>Produit(s)</a>
              
              <!--Cart Dropdown-->
              <div class="cart-dropdown">
                <span></span><!--Small rectangle to overlap Cart button-->
               
                <div class="footer group">
                  <div class="buttons">
                    <a class="btn btn-outlined-invert" href="previewcaddie.jsp"><i class="icon-shopping-cart-content"></i>Voir Panier</a>
                  </div>
                </div>
              </div><!--Cart Dropdown Close-->
            </div>

          </div><!--Toolbar Close-->
        </div>
      </div>
      </nav>
    </header><!--Header Close-->




<!--  Hereeee My cooodeeeeeeeeeeeeeeeeeee -->
		<br>
		<br>
		<br>
		<br>
		<br>
		
	
      <div class="modal-dialog">
     	<div class="modal-content">
	    	<div class="modal-body">
	    	
		
		<s:form action="ActionRegister" method ="post" theme="css_xhtml">  
		    	<div align="center"><h2>* Création d'un compte utilisateur * </h2></div>
		    <div class="form-group group">
              	<label for="nomCli">Nom du Clien</label>
		    <s:textfield name = "nomCli"  class="form-control" placeholder="Entrer votre Nom *" />
		    </div>
		    <div class="form-group group">
              	<label for="prenomCli">Prénom du Client</label>
		   	<s:textfield name = "prenomCli"  class="form-control" placeholder="Entrer votre Prenom*"/>
		   	</div>
		   	
		   	<div class="form-group group">
              	<label for="address">Address du Client</label>
		   	<s:textarea name = "address" class="form-control" placeholder="Entrer votre Address*"/>
		   	</div>
		   	<div class="form-group group">
              	<label for="password">Password</label>  
		    <s:password  name = "password"  class="form-control" placeholder="Entrer votre Password *"/>
		    </div>
		    <div class="form-group group">
              	<label for="cpassword">Repeat Password</label> 
		    <s:password  name = "cpassword" class="form-control" placeholder="Re-entrer votre Password *"/>
		    </div>
		   <!--  -->
		     <s:if test="hasActionErrors()">
		   			<div class="errors">
		      		<s:actionerror/>
		   	</s:if>
		   	<!--  -->
		   	
		   <div align="center">
		   <table >	
		   	<tr>
		   	<td><s:submit class="btn btn-black"    value= "Creer"  /></td> 	
		   	<td><s:reset  class="btn btn-primary"  value= "Effacer"/></td>
		   	</tr>
		   	</table>
		   	</div>		    
		</s:form>
	   </div>
  	 </div>
   </div>
 

<!-- heeeeeeeeeeeereeeeeeeeeee end of my coooooooooodeeee -->

<!--Footer-->
    <footer class="footer">
    	<div class="container">
      	<div class="row">
		<div class="col-lg-4 col-md-4 col-sm-4">
          	<h2>Contact Us At </h2>
            <ul class="list-unstyled">
            	<li><span>BERDEDDOUCH</span> Ayoub  <a>ayoub.berd@gmail.com</a></li>
                <li><span>FILALI</span>      Adnane <a>filali.adnane@gmail.com</a></li>
                
            </ul>
          </div>
          <div class="contacts col-lg-3 col-md-3 col-sm-3">
          	<h2>Contacts</h2>
            <p class="p-style3">
            	Université Moulay Ismail<br>
                Faculté des Sciences<br>
				Meknes <br>
              <a href="mailto:mail@umi.ac.ma">mail@umi.ac.ma</a><br>
              +212 XXX XXX XXX <br>
              +212 XXX XXX XXX <br>
            </p>
          </div>
        </div>
        <div class="copyright">
        	<div class="row">
          	<div class="col-lg-7 col-md-7 col-sm-7">
              <p>© 2016 <span>BERDEDDOUCH</span> & <span>FILALI</span> All Rights Reserved.</p>
            </div>
          	<div class="col-lg-5 col-md-5 col-sm-5">
            	<div class="payment">
                <img src="./pics/visa.png" alt="Visa">
                <img src="./pics/paypal.png" alt="PayPal">
                <img src="./pics/master.png" alt="Master Card">
                <img src="./pics/discover.png" alt="Discover">
				</div>
            </div>
          </div>
        </div>
      </div>
    </footer><!--Footer Close-->
	<!--Javascript (jQuery) Libraries and Plugins-->
		<script src="./utils/jquery-1.11.1.min.js"></script>
		<script src="./utils/jquery-ui-1.10.4.custom.min.js"></script>
    	<script src="./utils/jquery.easing.min.js"></script>
		<script src="./utils/bootstrap.min.js"></script>
		<script src="./utils/smoothscroll.js"></script>
		<script src="./utils/jquery.placeholder.js"></script>
		<script src="./utils/jquery.stellar.min.js"></script>
		<script src="./utils/jquery.touchSwipe.min.js"></script>
		<script src="./utils/jquery.shuffle.min.js"></script>
    	<script src="./utils/lightGallery.min.js"></script>
    	<script src="./utils/owl.carousel.min.js"></script>
		<script src="./utils/scripts.js"></script>

    	
</body><!--Body Close-->
</html>