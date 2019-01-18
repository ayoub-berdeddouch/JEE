
<%@taglib uri="/struts-tags" prefix="s" %>  
<%@ page import="java.sql.*" %>

<% Class.forName("com.mysql.jdbc.Driver"); %>
<!DOCTYPE html>
<html class=" js no-touch rgba backgroundsize borderimage borderradius csstransforms csstransforms3d csstransitions svg">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    
    <title>E-Commerce Shope</title>    
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
                
               
                <div class="footer group">
                  <div class="buttons">
                    <a class="btn btn-outlined-invert" href="previewcaddie.jsp"><i class=" icon-shopping-cart icon-large"></i>Voir Panier</a>
                  </div>
                </div>
              </div><!--Cart Dropdown Close-->
            </div>

            
          </div><!--Toolbar Close-->
        </div>
      </div>
      </nav>
    </header><!--Header Close-->
    
    
  <!-- Hereeeeeeeeeeeeeeee Noootreee Codeeeee -->  
    


        
        <% 
            Connection connection = DriverManager.getConnection(
                "jdbc:mysql://localhost/ecomme", "root", "");

            Statement statement = connection.createStatement() ;
            ResultSet resultset = 
                statement.executeQuery("select * from produit where famPro = 1 ") ; 
        %>
        <br>
        <br>
        <br> 
        <br>

<section align="center" class="shopping-cart">
<div align="center" class="container">
	<form   action="Actioncaddie" method="post" >
	<div class="row">
  <div class="col-xs-12 .col-sm-6 .col-lg-8">
  	<h2 class="title"><span>Produits de </span> La Famille</h2>
  <table class="items-list">
   
   <tbody>
      <tr>
      	<th>&nbsp;</th>
        <th><label ><span>NUMERO</span><b> PRODUIT</b></label></th>
        <th><label ><span>NOM</span><b> PRODUIT</b></label></th>
        <th><label ><span>PRIX</span><b> PRODUIT</b></label></th>
		<th><label ><span>COCHER</span><b> PRODUIT</b></label></th>
      </tr>
    
      
	   <% while(resultset.next()){ %>
      <tr class="item first">
     
        <td class="thumb"><a href ="./picFam1/<%= resultset.getInt(1) %>.tif" class="thumbnail" data-toggle="lightbox"><img src="./picFam1/<%= resultset.getInt(1) %>.tif" class="img-rounded" alt="MenWear" width="304" height="236"></a></td>
        <td class="num">&nbsp;&nbsp; <%= resultset.getInt(1) %></td>
        <td class="name"><%= resultset.getString(3) %></td>
        <td class="price"><%= resultset.getInt(2) %></td>
        <td>
		<div align="center" class="Checkbox">
	     	<label>
	           <input type="checkbox" name="tab" value="<%=resultset.getInt(1) %>" >
	         	Check Me
	         </label>
       </div>
	   </td>
     </tr>
	  <% } %>
	  <tr>
	  		<td><input type="submit" class="btn btn-black" value="Préview Panier"></td>
	  </tr>
    </tbody>
  
  </table>
  </div>


</div>
</form>
</div>
</section>



<!--Footer-->
    <footer class="footer">
    	<div class="container">
      	<div class="row">
		<div class="col-lg-4 col-md-4 col-sm-4">
          	<h2>Contact Us At </h2>
            <ul class="list-unstyled">
            	<li><span>BERDEDDOUCH</span> Ayoub  <a>ayoub.berd@gmail.com</a></li>
                <li><span>FILALI</span>      Adnane <a>filadn@gmail.com</a></li>
                
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
              <p>© 2016 BERDEDDOUCH & FILALI All Rights Reserved.</p>
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