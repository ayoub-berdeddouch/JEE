<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<link rel="stylesheet" href="shop/css/prettyPhoto.css">
<link rel="stylesheet" href="shop/css/bootstrap.min.css">
<link rel="stylesheet" href="shop/css/owl.carousel.css">
<link rel="stylesheet" href="shop/css/responsive.css">
<link rel="stylesheet" href="shop/css/style.css">
<script src="shop/js/jquery.js"></script>


<title>Produit</title>
</head>
<body>
<div id="wrapper">
	<header id="header">
			<div id="header-top">
				<div class="container">
					<div class="row">
						<div class="col-md-12">
							<div class="header-top-left">
								<ul id="top-links" class="clearfix">
									<c:choose>
										<c:when test="${!empty sessionScope.client}">
											<li><a href="#" title="My Account"> <span
													class="top-icon top-icon-user"></span><span
													class="hide-for-xs"><c:out
															value="${sessionScope.client.nomCli }"></c:out></span></a></li>
											<li><a href="panier" title="Panier"><span
													class="top-icon top-icon-cart"></span><span
													class="hide-for-xs">Mon panier</span></a></li>
										</c:when>
									</c:choose>

								</ul>
							</div>
							<!-- End .header-top-left -->
							<div class="header-top-right">

								<div class="header-top-dropdowns pull-right">
									<div class="btn-group dropdown-money">
									  <button type="button" class="btn btn-custom dropdown-toggle" data-toggle="dropdown">
										<span class="hide-for-xs">DH Maroc</span>
										<span class="hide-for-lg">MAD</span>
									   </button>
										
									</div>
									<!-- End .btn-group -->
									<div class="btn-group dropdown-language">
										<button type="button" class="btn btn-custom dropdown-toggle"
											data-toggle="dropdown">
											<span class="flag-container"><img
												src="shop/images/morocco-flag.gif"
												alt="flag of Morocco"></span> 
											<span class="hide-for-xs">Morocco</span>
										</button>
									</div>
									<!-- End .btn-group -->
								</div>
								<!-- End .header-top-dropdowns -->
								<div class="header-text-container pull-right">
									<p class="header-text">Welcome To Our Shop</p>
									<p class="header-link">

										<c:choose>
											<c:when test="${empty sessionScope.client}">
												<a href="login">Connection</a>
													&nbsp;ou&nbsp;<a href="enregistrer">Creer un compte</a>


											</c:when>
											<c:otherwise>
												<a href="deconnection">Déconnection</a>
											</c:otherwise>
										</c:choose>

									</p>
								</div>
								<!-- End .pull-right -->
							</div>
							<!-- End .header-top-right -->
						</div>
						<!-- End .col-md-12 -->
					</div>
					<!-- End .row -->
				</div>
				<!-- End .container -->
			</div>

			<div id="inner-header">
			<div class="container">
					<div class="row">
						<div class="col-md-5 col-sm-5 col-xs-12 logo-container">
								<h1 class="logo clearfix">
	
									 <a
										href="familles" title="eCommerce"><img
										src="shop/images/ecom.png"
										alt="" width="238" height="76"></a>
								</h1>
						</div>
					</div>
				</div>
			
				<div id="main-nav-container">
					<div class="container">
						<div class="row">
							<div class="col-md-12 clearfix">

								<nav id="main-nav">
                                    <div id="responsive-nav">
                                        <div id="responsive-nav-button">
                                            Home <span id="responsive-nav-button-icon"></span>
                                        </div><!-- responsive-nav-button -->
                                    </div>
                                    <ul class="menu clearfix">
                                        <li>
                                            <a class="active" href="familles">Familles</a>
                                        </li>
                                        <li class="mega-menu-container"><a href="login">LogIn</a>
                                        </li>
                                        
                                        <li>
                                            <a href="enregistrer">SignUp</a>
                                        </li>
                                        <li><a href="panier">PANIER</a>
                                        </li>
                                    </ul>
                                    
                                </nav>
								<div id="quick-access">
									<div class="dropdown-cart-menu-container pull-right">
										<div class="btn-group dropdown-cart">
											<button type="button" class="btn btn-custom dropdown-toggle"
												data-toggle="dropdown">
												<span class="cart-menu-icon"></span>
												<c:out value="${ sessionScope.panier.nombreArticles}"
													default="0" />
												Produits <span class="drop-price">- <c:out
														value="${ sessionScope.panier.total}" default="0" /></span>
											</button>

											<!-- here dropdown  -->
											<c:import url="includePanier.jsp"></c:import>

										</div>
										<!-- End .btn-group -->
									</div>
									<!-- End .dropdown-cart-menu-container -->
								</div>
								<!-- End #quick-access -->
							</div>
							<!-- End .col-md-12 -->
						</div>
						<!-- End .row -->
					</div>
					<!-- End .container -->

				</div>
				<!-- End #nav -->
			</div>
			<!-- End #inner-header -->
		</header>
		<!-- End #header -->
	
	<section id="content">
			<div id="breadcrumb-container">
				<div class="container">
					<ul class="breadcrumb">
						<li><a href="familles">Home</a></li>
						<li class="active">Product</li>
					</ul>
				</div>
			</div>
			<div class="container">
				<div class="row">
					<div class="col-md-12">

						<div class="row">

							<div class="col-md-6 col-sm-12 col-xs-12 product-viewer clearfix">


								<div id="product-image-container">
									<figure>
										<img
											src='shop/images<c:out value="${requestScope.produit.image }"/>'
											alt="" id="product-image"
											data-big='shop/images/<c:out value="${requestScope.produit.image }"/>'>
										<figcaption class="item-price-container">
											<span class="item-price"><c:out
													value="${requestScope.produit.puProd }" /></span>
										</figcaption>
									</figure>
								</div>
								<!-- product-image-container -->
							</div>
							<!-- End .col-md-6 -->

							<div class="col-md-6 col-sm-12 col-xs-12 product">
								<div class="lg-margin visible-sm visible-xs"></div>
								<!-- Space -->
								<h1 class="product-name">
									<c:out value="${requestScope.produit.nomPro }" />
								</h1>
							</div>
							<!-- End .rating-container -->
							<ul class="product-list">
								<li><span>Valable:</span>En stock</li>
								<li><span>Code de produit:</span>
								<c:out value="${requestScope.produit.numPro }" /></li>
								<li><span>Famille:<c:out
											value="${requestScope.nomFamille }" /></span></li>
							</ul>
							<hr>
							<form action='addProduct' method="get">
								<input type="hidden"
									value="<c:out value="${requestScope.produit.numPro }"/>"
									name="produit">
								<div class="product-add clearfix">
									<div class="custom-quantity-input">
										<input type="text" name="quantite" value="1"> 
										<a href="#" onclick="return true;" class="quantity-btn quantity-input-up">
										<i class="fa fa-angle-up"></i></a> 
										<a href="#" onclick="return false;"class="quantity-btn quantity-input-down">
										<i class="fa fa-angle-down"></i></a>
									</div>
									<input type="submit" class="btn btn-custom-2"
										value="Ajouter au panier">
									
								</div>
						
							
							<div class="md-margin"></div>
							<script type="text/javascript">
										var addthis_config = {
											"data_track_addressbar" : true
										};
									</script>

						
						</form>

					</div>
					<!-- End .row -->

					<div class="lg-margin2x"></div>
					<!-- End .space -->



				</div>
				<!-- End .col-md-12 -->
			</div>
			<!-- End .row -->
	
	<!-- End .container -->

	</section>
</div>	
	
	<script src="shop/js/bootstrap.min.js"></script>
	<script src="shop/js/smoothscroll.js"></script>
	<script src="shop/js/retina-1.1.0.min.js"></script>
	<script src="shop/js/jquery.placeholder.js"></script>
	<script src="shop/js/jquery.hoverIntent.min.js"></script>
	<script src="shop/js/twitter/jquery.tweet.min.js"></script>
	<script src="shop/js/jquery.flexslider-min.js"></script>
	<script src="shop/js/owl.carousel.min.js"></script>
	<script src="shop/js/jflickrfeed.min.js"></script>
	<script src="shop/js/jquery.prettyPhoto.js"></script>
	<script src="shop/js/jquery.isotope.min.js"></script>
	<script src="shop/js/jquery.fitvids.js"></script>
	<script src="shop/js/colpick.js"></script>
	<script src="shop/js/jquery.elastislide.js"></script>
	<script src="shop/js/jquery.mlens-1.3.min.js"></script>
	<script src="shop/js/main.js"></script>
	
	<script>
		$(function() {

			var carouselContainer = $('#product-carousel'), productImg = $('#product-image');

			carouselContainer.elastislide({
				orientation : 'vertical',
				minItems : 4

			});

			productImg.mlens({
				imgSrc : $("#product-image").attr("data-big"),
				lensShape : "square",
				lensSize : 200,
				borderSize : 4,
				borderColor : "#999",
				borderRadius : 0
			});

			var oldImg = productImg.attr('src');
			carouselContainer.find('li').on('mouseover', function() {

				var newImg = $(this).find('a').attr('href');

				productImg.attr({
					'src' : newImg,
					'data-big' : newImg
				}).trigger('imagechanged');

			});

			// triggered with custom event
			productImg.on('imagechanged', function() {
				productImg.mlens("update", 0, {
					imgSrc : productImg.attr("data-big"),
					lensShape : "square",
					lensSize : 200,
					borderSize : 4,
					borderColor : "#999"
				});
			});

		});
	</script>		
</body>
</html>