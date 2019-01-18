<%@ taglib uri="/struts-tags" prefix="s" %>  
<%@ page import="java.sql.*" %>


<!DOCTYPE html>
<html class=" js no-touch rgba backgroundsize borderimage borderradius csstransforms csstransforms3d csstransitions svg">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    
    <title>E-Commerce Shope</title>
	 <!-- Slider Styles-->
     
   
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
    
        <br>
    <br>
    <br>
    <br>
    <br>
    <br><br>
    <!-- ###################################################### -->
	<!-- Slides -->
<div class="carousel slide" id="carousel-caption" data-ride="carousel">
  <ol class="carousel-indicators">
    <li data-slide-to="0" data-target="#carousel-caption" class="active"></li>
    <li data-slide-to="1" data-target="#carousel-caption" class=""></li>
    <li data-slide-to="2" data-target="#carousel-caption" class=""></li>
    <li data-slide-to="3" data-target="#carousel-caption" class=""></li>
  </ol>
  <div class="carousel-inner">
    <div class="item active">
      <a href="prodFam1.jsp">
      <img alt="First slide" src="./pics/menwear.jpg">
      </a>
      <div class="carousel-caption">
        
      </div>
    </div>
    <div class="item">
      <a href="prodFam2.jsp">
      <img alt="Second slide" src="./pics/womenwear.jpg">
      </a>
      <div class="carousel-caption">
        
      </div>
    </div>
    <div class="item">
      <a href="prodFam3.jsp">
      <img alt="Third slide" src="./pics/smartphones.jpg">
      </a>
      <div class="carousel-caption">
        
      </div>
    </div>
    <div class="item">
      <a href="prodFam4.jsp">
      <img alt="Third slide" src="./pics/laptop.jpg">
      </a>
      <div class="carousel-caption">
        
      </div>
    </div>
  </div>
  <a data-slide="prev" href="#carousel-caption" class="left carousel-control">
    <span class="icon icon-chevron-left icon-lg control-prev"></span>
  </a>
  <a data-slide="next" href="#carousel-caption" class="right carousel-control">
    <span class="icon icon-chevron-right icon-lg control-next"></span>
  </a>
</div>
    <!-- ###################################################### -->
    
    
    
  <!-- ---------------------  --> 
    
    <br>
    <br>
    <br>
    <br>
    <br>
    <br><br>
    
     <!--Catalog Grid-->
      <section class="catalog-grid">
      	<div class="container">
        	<h2 class="dark-color"><span>Choix des </span><b>Familles</b></h2>
          <div class="row">
          
          	<!--Tile 1-->
          	<div class="col-lg-3 col-md-4 col-sm-6">
            	<div class="tile">
              <a href="prodFam1.jsp">
                  <img src="./pics/menwear.jpg" alt="1">
                  <span class="tile-overlay"></span>
                </a>
                <div class="footer">
                	<a href="prodFam1.jsp" >Men Wear</a>
                  
                  
                </div>
              </div>
            </div>
            <!--Tile 2 -->
          	<div class="col-lg-3 col-md-4 col-sm-6">
            	<div class="tile">
              	 <a href="prodFam2.jsp">
                  <img src="./pics/womenwear.jpg" alt="1" width= "500" height= "500">
                  <span class="tile-overlay"></span>
                </a>
                <div class="footer">
                	<a href="prodFam2.jsp">Women Wear</a>
                  
                  
                </div>
              </div>
            </div>
            <!--Tile 3-->
          	<div class="col-lg-3 col-md-4 col-sm-6">
            	<div class="tile">
              	 <a href="prodFam3.jsp">
                  <img src="./pics/phones.jpg" alt="1" width= "500" height= "500">
                  <span class="tile-overlay"></span>
                </a>
                <div class="footer">
                	<a href="prodFam3.jsp">Phones</a>
                  
                  
                </div>
              </div>
            </div>
            
            <!--Tile 4-->
          	<div class="col-lg-3 col-md-4 col-sm-6">
            	<div class="tile">
              	 <a href="prodFam4.jsp">
                  <img src="./pics/laptops.jpg" alt="1" width= "500" height= "500">
                  <span class="tile-overlay"></span>
                </a>
                <div class="footer">
                	<a href="prodFam4.jsp">Laptop</a>
                  
                </div>
              </div>
            </div>
           
		  </div>
        </div>
      </section><!--Catalog Grid Close-->
      
     
      
    
    
    
    
    
    
    
    
    
    
    <!-- here end of it -->
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
            	<span>Université Moulay Ismail</span><br>
                <span>Faculté des Sciences</span><br>
				<span>Meknes </span><br>
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
                <img src="./pics/visa.png"     alt="Visa">
                <img src="./pics/paypal.png"   alt="PayPal">
                <img src="./pics/master.png"   alt="Master Card">
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
