<%@taglib uri="/struts-tags" prefix="s" %> 
<!DOCTYPE html>
<html class=" js no-touch rgba backgroundsize borderimage borderradius csstransforms csstransforms3d csstransitions svg">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    
    <title>E-Commerce Shope</title>
    <!--Styles-->
    <link href="./utils/styles.css" rel="stylesheet" media="screen">

</head>
<body>
<!--Login Modal-->
    <div class="modal fade" id="loginModal" tabindex="-1" role="dialog" aria-hidden="true">
      <div class="modal-dialog">
        <div class="modal-content">
          <div class="modal-header">
            <div class="modal-footer">
		          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
		        </div>
            <h2>Login or <a href="registerClient.jsp">Register</a></h2>
			          </div>
          <div class="modal-body">
            <form class="login-form" action="ActionLogin" method ="post" >
              <div class="form-group group">
              	<label for="user_1">Login</label>
                <s:textfield name="user_1" class="form-control" placeholder="Enter your login" />
                
              </div>
              <div class="form-group group">
              	<label for="password_1">Password</label>
                <s:password name="password_1" class="form-control"   placeholder="Enter your password" />
              </div>
              
              <input class="btn btn-black" type="submit" value="Login">
            </form>
          </div>
        </div><!-- /.modal-content -->
      </div><!-- /.modal-dialog -->
    </div><!-- /.modal -->
	<!--Header-->
    <header data-offset-top="500" data-stuck="600"><!--data-offset-top is when header converts to small variant and data-stuck when it becomes visible. Values in px represent position of scroll from top. Make sure there is at least 100px between those two values for smooth animation-->
    
    	<!--Mobile Menu Toggle-->
      <div class="menu-toggle"><i class="fa fa-list"></i></div>

      <div class="container">
        <a class="logo" href="acceuile.jsp"><img src="./pics/eCommerce.png" alt="index"></a>
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
            <a class="login-btn btn-outlined-invert" data-toggle="modal" data-target="#loginModal"><i class="icon-profile"></i> <span><b>L</b>ogin</span></a>
            <div class="cart-btn">
              <a class="btn btn-outlined-invert" href="previewcaddie.jsp"><i class="icon-shopping-cart-content"></i><span>TTC</span><s:property value="somme"/>DH(s)</a>
              
              <!--Cart Dropdown-->
              <div class="cart-dropdown">
                <span></span><!--Small rectangle to overlap Cart button-->
               
                <div class="footer group">
                  <div class="buttons" align="center">
                  <button type="button" class="btn btn-outlined-invert" data-toggle="modal" data-target="#loginModal">Valider votre commande</button>
                  
                  </div>
                </div>
              </div><!--Cart Dropdown Close-->
            </div>

            
            
          </div><!--Toolbar Close-->
        </div>
      </div>
      </nav>
    </header><!--Header Close-->





<br/>
<br/>
<br>
<br>
<br>
<br>
<!--Shopping Cart-->
      <section class="shopping-cart">
      	<div class="container">
      	<s:form action="Actiontotal" theme="css_xhtml" method = "post"> 
        	<div class="row">
          
          	<!--Items List  -->
		<div class="col-xs-12 .col-sm-6 .col-lg-8">
    		<h2 class="title">Votre Commande</h2>
       	<table class="items-list">
         	<tbody>
           	<tr>
                	
            <th align="center"><label for="NUMERO PRODUIT"><span>NUMERO</span><b> PRODUIT</b></label></th>
	        <th align="center"><label for="NOM PRODUIT"><span>NOM</span><b> PRODUIT</b></label></th>
	        <th align="center"><label for="PRIX PRODUIT"><span>PRIX </span><b> PRODUIT</b></label></th>
            <th align="center"><label for="QUANTITY PRODUIT"><span>QUANTITER</span><b> PRODUIT</b></label></th>
            <th>&nbsp;</th>      
            </tr><hr>
        <!--Item-->
                <tr class="item first">
                	
                  <td align="center" class="num"><s:iterator value ="#session.panierNum">
							        <s:property /><br/>
							        </s:iterator></td>
                  
                  	
                  <td align="center" class="name"><a> <s:iterator value ="#session.panierNom">
        									<s:property /><br/>
        							   </s:iterator></a></td>
        							   
        							   
                  <td align="center" class="price"><s:iterator value ="#session.panierPrix">
							        	<s:property /><br/>
							        </s:iterator></td>     
							           
							                  
                <td align="center" class="qnt-count"><s:iterator value ="#session.panierQte">
							        	<s:property /><br/>
							        </s:iterator></td>
							       			                       
                </tr><hr>
                
       <!--Item-->
        	</tbody></table>
        	<div align="right">
                <s:submit  class="btn btn-black" value="Calculer mon total"/>
                </div>
            </div>
          </div>  
         </s:form> 
      </div>
</section><!--Shopping Cart Close-->
        
        <div align="center">
        <a class="btn btn-default" href="previewcaddie.jsp" ><span>Modifier </span>Quantiter</a>
        <a class="btn btn-black"   href="vider_caddie"><span>Vider mon </span>Caddie</a>
        
         </div>
        
<br/>
<br/>
<br/>

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