<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ taglib uri="/struts-tags" prefix="s" %>
    
<!DOCTYPE html>
<html class=" js no-touch rgba backgroundsize borderimage borderradius csstransforms csstransforms3d csstransitions svg">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    
    <title>E-Commerce Shope</title>
	 <!--Master Slider Styles-->
    <link href="./utils/masterslider.css" rel="stylesheet" media="screen">
    <!--Styles-->
    <link href="./utils/styles.css" rel="stylesheet" media="screen">
</head>
<body>
<!--Login Modal-->
    <div class="modal fade" id="loginModal" tabindex="-1" role="dialog" aria-hidden="true">
      <div class="modal-dialog">
        <div class="modal-content">
          <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-hidden="true"><i class="fa fa-times"></i></button>
            <h2>Login or <a href="register.jsp">Register</a></h2>
			          </div>
          <div class="modal-body">
            <form class="login-form" novalidate="novalidate">
              <div class="form-group group">
              	<label for="log-login">Login</label>
                <input type="login" class="form-control" name="log-login" id="log-login" placeholder="Enter your login" required="">
                
              </div>
              <div class="form-group group">
              	<label for="log-password">Password</label>
                <input type="text" class="form-control" name="log-password" id="log-password" placeholder="Enter your password" required="">
              </div>
              <div class="checkbox">
                <label><div class="icheckbox" style="position: relative;">
                <input type="checkbox" name="remember" style="position: absolute; opacity: 0;"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; border: 0px; opacity: 0; background: rgb(255, 255, 255);"></ins></div> Remember me</label>
              </div>
              <input class="btn btn-black" type="submit" value="Login">
            </form>
          </div>
        </div><!-- /.modal-content -->
      </div><!-- /.modal-dialog -->
    </div><!-- /.modal -->
	<!--Header-->
    <header data-offset-top="500" data-stuck="600"><!--data-offset-top is when header converts to small variant and data-stuck when it becomes visible. Values in px represent position of scroll from top. Make sure there is at least 100px between those two values for smooth animation-->
    
      <!--Search Form-->
      <form class="search-form closed" method="get" role="form" autocomplete="off">
      	<div class="container">
          <div class="close-search"><i class="icon-delete"></i></div>
            <div class="form-group">
              <label class="sr-only" for="search-hd">Search for product</label>
              <input type="text" class="form-control" name="search-hd" id="search-hd" placeholder="Search for product">
              <button type="submit"><i class="icon-magnifier"></i></button>
          </div>
        </div>
      </form>
    
    	<!--Mobile Menu Toggle-->
      <div class="menu-toggle"><i class="fa fa-list"></i></div>

      <div class="container">
        <a class="logo" href="index.jsp"><img src="./utils/logo-default.png" alt="Limo"></a>
      </div>
      
      <!--Main Menu-->
      <nav class="menu">
        <div class="container">
          
          <ul class="main">
          	<li class="has-submenu"><a href="index.jsp"><span>H</span>ome<i class="fa fa-chevron-down"></i></a>
            	
            </li>
          	<li class="has-submenu"><a href="shopping-cart.jsp"><span>S</span>hop<i class="fa fa-chevron-down"></i></a>
            	
            </li>
			<li class="has-submenu"><a href="http://the8guild.com/themes/html/limo/v1.4/#"><span>P</span>ages<i class="fa fa-chevron-down"></i></a>
            	<ul class="submenu">
                <li><a href="register.jsp">Login / Registration</a></li>
                <li><a href="about.jsp">About Us</a></li>
                <li><a href="contacts.jsp">Contacts</a></li>
				<li><a href="404.jsp">404 Page</a></li>
              </ul>
            </li>
          </ul>
        </div>
		<div class="toolbar-container">
        <div class="container">  
          <!--Toolbar-->
          <div class="toolbar group">
            <a class="login-btn btn-outlined-invert" href="http://the8guild.com/themes/html/limo/v1.4/#" data-toggle="modal" data-target="#loginModal"><i class="icon-profile"></i> <span><b>L</b>ogin</span></a>
            <div class="cart-btn">
              <a class="btn btn-outlined-invert" href="http://the8guild.com/themes/html/limo/v1.4/shopping-cart.html"><i class="icon-shopping-cart-content"></i><span>3</span><b>36 5654</b></a>
              
              <!--Cart Dropdown-->
              <div class="cart-dropdown">
                <span></span><!--Small rectangle to overlap Cart button-->
                <div class="body">
                  <table>
                    <tbody><tr>
                      <th>Produits</th>
                      <th>Quantiter</th>
                      <th>Prix</th>
                    </tr>
                    <tr class="produit">
                      <td><div class="delete"></div><a href="http://the8guild.com/themes/html/limo/v1.4/#">HP Elite-BOOK</a></td>
                      <td><input type="text" value="1"></td>
                      <td class="prix">9 005 $</td>
                    </tr>
                    <tr class="produit">
                      <td><div class="delete"></div><a href="http://the8guild.com/themes/html/limo/v1.4/#">AlienWare </a></td>
                      <td><input type="text" value="2"></td>
                      <td class="prix">4 300 $</td>
                    </tr>
                    <tr class="produit">
                      <td><div class="delete"></div><a href="http://the8guild.com/themes/html/limo/v1.4/#">Dell Inspiron 59103</a></td>
                      <td><input type="text" value="5"></td>
                      <td class="prix">8 400 $</td>
                    </tr>
                  </tbody></table>
                </div>
                <div class="footer group">
                  <div class="buttons">
                    <a class="btn btn-outlined-invert" href="checkout.jsp"><i class="icon-download"></i>Checkout</a>
                    <a class="btn btn-outlined-invert" href="shopping-cart.jsp"><i class="icon-shopping-cart-content"></i>Au Panier</a>
                  </div>
                  <div class="total">93 389 $</div>
                </div>
              </div><!--Cart Dropdown Close-->
            </div>

            <button class="search-btn btn-outlined-invert"><i class="icon-magnifier"></i></button>
          </div><!--Toolbar Close-->
        </div>
      </div>
    </header><!--Header Close-->
	<!--Page Content-->
    <div class="page-content">
    
    	<!--Hero Slider-->
      <section class="hero-slider" style="position: relative;">
      	<div class="master-slider ms-wk" id="hero-slider" style="margin: 0px; width: 1349px; visibility: visible; opacity: 1;"><div class="ms-container"><div class="ms-inner-controls-cont" style="max-width: 1140px;"><div class="ms-view ms-basic-view ms-grab-cursor" style="width: 1349px; height: 455px; left: -104.5px;"><div class="ms-slide-container" style="transform: translateX(-1349px) translateZ(0px);"><div class="ms-slide" data-delay="7" style="width: 1349px; height: 455px; left: 0px;">
          	<div class="overlay"></div>
          	
            
            
            
            
          <div class="ms-slide-bgcont" style="height: 100%; opacity: 1;"><img src="./pics/slide_3.jpg" alt="Crescent" style="height: 455px; width: 2076.29px; margin-top: 0px; margin-left: -363.5px;"></div><div class="ms-slide-layers" style="left: 104.5px; max-width: 1140px;"><div class="ms-anim-layers" style="opacity: 1; display: none;"><h2 style="width: 456px; left: 110px; top: 110px; margin: 8px 0px 24px; padding: 0px; font-size: 40px; line-height: 40px; display: none;" class="dark-color ms-layer">Crescent</h2><p style="width: 456px; left: 110px; top: 210px; margin: 0px 0px 24px; padding: 0px; font-size: 14px; line-height: 23px; display: none;" class="dark-color ms-layer">In this slider (which works both on touch screen and desktop devices) you can change the title, the description and button texts. It's all that you need to demonstrate your top rated products. </p><div style="left: 110px; top: 330px; margin: 0px; padding: 0px; font-size: 16px; line-height: 22px; display: none;" class="ms-layer button"><a class="btn btn-black" href="http://the8guild.com/themes/html/limo/v1.4/#">Go to catalog</a></div><div style="left: 350px; top: 330px; margin: 0px; padding: 0px; font-size: 16px; line-height: 22px; display: none;" class="ms-layer button"><a class="btn btn-primary" href="http://the8guild.com/themes/html/limo/v1.4/#">Browse all</a></div></div></div></div><div class="ms-slide ms-sl-selected" data-delay="7" style="width: 1349px; height: 455px; left: 1349px;">
          	<div class="overlay"></div>
          	
            
            
            
            
          <div class="ms-slide-bgcont" style="height: 100%; opacity: 1;"><img src="./pics/slide_1.jpg" alt="" style="height: 455px; width: 2076.29px; margin-top: 0px; margin-left: -363.5px;"></div><div class="ms-slide-layers" style="left: 104.5px; max-width: 1140px;"><div class="ms-anim-layers"><h2 style="width: 456px; left: 110px; top: 110px; margin: 8px 0px 24px; padding: 0px; font-size: 40px; line-height: 40px;" class="dark-color ms-layer">Look for all bags at our shop!</h2><p style="width: 456px; left: 110px; top: 210px; margin: 0px 0px 24px; padding: 0px; font-size: 14px; line-height: 23px;" class="dark-color ms-layer">In this slider (which works both on touch screen and desktop devices) you can change the title, the description and button texts. It's all that you need to demonstrate your top rated products. </p><div style="left: 110px; top: 300px; margin: 0px; padding: 0px; font-size: 16px; line-height: 22px;" class="ms-layer button"><a class="btn btn-black" href="http://the8guild.com/themes/html/limo/v1.4/#">Go to catalog</a></div><div style="left: 350px; top: 300px; margin: 0px; padding: 0px; font-size: 16px; line-height: 22px;" class="ms-layer button"><a class="btn btn-primary" href="http://the8guild.com/themes/html/limo/v1.4/#">Browse all</a></div></div></div></div><div class="ms-slide" data-delay="7" style="width: 1349px; height: 455px; left: 2698px;">
            <span class="overlay"></span>
          	
            
            
            
            
          <div class="ms-slide-bgcont" style="height: 100%; opacity: 1;">
		  <img src="./pics/slide_2.jpg" alt="Necessaire" style="height: 455px; width: 2076.29px; margin-top: 0px; margin-left: -363.5px;"></div><div class="ms-slide-layers" style="left: 104.5px; max-width: 1140px;"><div class="ms-anim-layers" style="opacity: 1; display: none;"><h2 style="width: 456px; left: 110px; top: 110px; margin: 8px 0px 24px; padding: 0px; font-size: 40px; line-height: 40px; display: none;" class="dark-color ms-layer">Necessaire</h2><p style="width: 456px; left: 110px; top: 210px; margin: 0px 0px 24px; padding: 0px; font-size: 14px; line-height: 23px; display: none;" class="dark-color ms-layer">In this slider (which works both on touch screen and desktop devices) you can change the title, the description and button texts. It's all that you need to demonstrate your top rated products. </p><div style="left: 110px; top: 330px; margin: 0px; padding: 0px; font-size: 16px; line-height: 22px; display: none;" class="ms-layer button"><a class="btn btn-black" href="http://the8guild.com/themes/html/limo/v1.4/#">Go to catalog</a></div><div style="left: 350px; top: 330px; margin: 0px; padding: 0px; font-size: 16px; line-height: 22px; display: none;" class="ms-layer button"><a class="btn btn-primary" href="http://the8guild.com/themes/html/limo/v1.4/#">Browse all</a></div></div></div></div></div></div><div class="ms-nav-next" style="opacity: 1;"></div><div class="ms-nav-prev" style="opacity: 1;"></div><div class="ms-bullets ms-dir-h" style="opacity: 1; width: 66px;"><div class="ms-bullets-count"><div class="ms-bullet ms-bullet-selected" style="margin: 5px;"></div><div class="ms-bullet" style="margin: 5px;"></div><div class="ms-bullet" style="margin: 5px;"></div></div></div></div></div>
        
        	<!--Slide 1-->

          
        	<!--Slide 2-->
        	
          
        	<!--Slide 3-->
        	
          
        </div>
      </section><!--Hero Slider Close-->
	   <!--Catalog Grid-->
      <section class="catalog-grid">
      	<div class="container">
        	<h2 class="dark-color">Catalog picks</h2>
          <div class="row">
          	<!--Tile 1-->
          	<div class="col-lg-3 col-md-4 col-sm-6">
            	<div class="tile">
              	<div class="badges">
                	<span class="sale">Sale</span>
                </div>
              	<div class="price-label">715,00 $</div>
              	 <a href="http://the8guild.com/themes/html/limo/v1.4/shop-single-item-v1.html">
                  <img src="./pics/1(1).jpg" alt="1">
                  <span class="tile-overlay"></span>
                </a>
                <div class="footer">
                	<a href="http://the8guild.com/themes/html/limo/v1.4/#">Smart Backpack</a>
                  <span>by David Banks</span>
                  <button class="btn btn-primary">Add to Cart</button>
                </div>
              </div>
            </div>
            <!--Tile 2 -->
          	<div class="col-lg-3 col-md-4 col-sm-6">
            	<div class="tile">
              	<div class="badges">
                  <span class="out">Out</span>
                </div>
              	<div class="price-label">715,00 $</div>
                <div class="price-label old-price">920,00 $</div>
              	 <a href="http://the8guild.com/themes/html/limo/v1.4/shop-single-item-v1.html">
                  <img src="./pics/2(1).jpg" alt="1">
                  <span class="tile-overlay"></span>
                </a>
                <div class="footer">
                	<a href="http://the8guild.com/themes/html/limo/v1.4/#">Two-tone leather shopper</a>
                  <span>by Andy Shooter</span>
                  <button class="btn btn-primary">Add to Cart</button>
                </div>
              </div>
            </div>
            <!--Tile 3-->
          	<div class="col-lg-3 col-md-4 col-sm-6">
            	<div class="tile">
              	<div class="badges">
                  <span class="best-seller">Best Seller</span>
                </div>
              	<div class="price-label">715,00 $</div>
              	 <a href="http://the8guild.com/themes/html/limo/v1.4/shop-single-item-v1.html">
                  <img src="./pics/3(1).jpg" alt="1">
                  <span class="tile-overlay"></span>
                </a>
                <div class="footer">
                	<a href="http://the8guild.com/themes/html/limo/v1.4/#">Gussetted shopper bag</a>
                  <span>by Choper Bar</span>
                  <button class="btn btn-primary">Add to Cart</button>
                </div>
              </div>
            </div>
            <!--Tile 4-->
          	<div class="col-lg-3 col-md-4 col-sm-6">
            	<div class="tile">
              	<div class="price-label">715,00 $</div>
              	 <a href="http://the8guild.com/themes/html/limo/v1.4/shop-single-item-v1.html">
                  <img src="./pics/4(1).jpg" alt="1">
                  <span class="tile-overlay"></span>
                </a>
                <div class="footer">
                	<a href="http://the8guild.com/themes/html/limo/v1.4/#">Mini shopper</a>
                  <span>by David Choper</span>
                  <button class="btn btn-primary">Add to Cart</button>
                </div>
              </div>
            </div>
		  </div>
        </div>
      </section><!--Catalog Grid Close-->
	  <!--Brands Carousel Widget-->
      
	<!--Footer-->
    <footer class="footer">
    	<div class="container">
      	<div class="row">
		<div class="col-lg-4 col-md-4 col-sm-4">
          	<h2>Latest news</h2>
            <ul class="list-unstyled">
            	<li>25 of May   <a>new arrivals in Spring</a></li>
                <li>24 of April <a>5 facts about clutches</a></li>
                <li>25 of May   <a>new arrivals in Spring</a></li>
            	<li>24 of April <a>5 facts about clutches</a></li>
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
		<script src="./utils/jquery.validate.min.js"></script>
		<script src="./utils/icheck.min.js"></script>
		<script src="./utils/jquery.placeholder.js"></script>
		<script src="./utils/jquery.stellar.min.js"></script>
		<script src="./utils/jquery.touchSwipe.min.js"></script>
		<script src="./utils/jquery.shuffle.min.js"></script>
    	<script src="./utils/lightGallery.min.js"></script>
    	<script src="./utils/owl.carousel.min.js"></script>
    	<script src="./utils/masterslider.min.js"></script>
    	
		<script src="./utils/scripts.js"></script>

    	
</body><!--Body Close-->
</html>
		    
