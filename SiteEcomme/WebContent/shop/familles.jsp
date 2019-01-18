<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="shop/css/prettyPhoto.css">
<link rel="stylesheet" href="shop/css/bootstrap.min.css">
<link rel="stylesheet" href="shop/css/owl.carousel.css">
<link rel="stylesheet" href="shop/css/responsive.css">
<link rel="stylesheet" href="shop/css/style.css">
<script src="shop/js/jquery.js"></script>


<title>Familles</title>
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
										<button type="button" class="btn btn-custom dropdown-toggle"
											data-toggle="dropdown">
											<span class="hide-for-xs">DH Maroc</span><span
												class="hide-for-lg">MAD</span>
										</button>
										
									</div>
									<!-- End .btn-group -->
									<div class="btn-group dropdown-language">
										<button type="button" class="btn btn-custom dropdown-toggle"
											data-toggle="dropdown">
											<span class="flag-container"><img
												src="shop/images/morocco-flag.gif"
												alt="flag of Morocco"></span> <span class="hide-for-xs">Morocco</span>
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
												<a href="connection">Connection</a>
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
												Produits <span class="drop-price"> -#- 
												<c:out value="${ sessionScope.panier.total}" default="0" /></span>
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
						<li class="active"><c:out value="${requestScope.nomFamille}"/></li>
					</ul>
				</div>
			</div>
			<div class="container">
				<div class="row">
					<div class="col-md-12">

						<div class="row">

							<div class="col-md-9 col-sm-8 col-xs-12 main-content">
								<div class="md-margin"></div>
								<!-- space -->
								<div class="category-item-container">
									<div class="row">
										<!--START HERE-->
										<c:forEach items="${ requestScope.produits}" var="produit">
										<div class="col-md-4 col-sm-6 col-xs-12">
											<div class="item">
												<div class="item-image-container">
													<figure>
														<a href='<c:out value="produit?produit=${produit.numPro}"></c:out>'>
														 <img
															src='<c:out value="shop/images/${produit.image}"></c:out>'
															alt="" class="item-image"
														>
														
												
															 <img
															src='<c:out value="shop/images/${produit.image}"></c:out>'
															alt="" class="item-image-hover">
														</a>
													</figure>
													<div class="item-price-container">
														<span class="item-price"><c:out value="${produit.puProd }"></c:out></span>
													</div>

												</div>
												<!-- End .item-image -->
												<div class="item-meta-container">
													<div class="ratings-container">
														<div class="ratings">
															<div class="ratings-result" data-result="80"></div>
														</div>
														<!-- End .ratings -->
														<span class="ratings-amount"> 3 Avis </span>
													</div>
													<!-- End .rating-container -->
													<h3 class="item-name">
														<a href="#"><c:out value="${produit.nomPro }"/></a>
													</h3>
													<div class="item-action">
														<a href='<c:out value="produit?produit=${produit.numPro}"></c:out>' class="item-add-btn"> <span
															class="icon-cart-text">Ajouter</span>
														</a>
														<div class="item-action-inner">
															<a href="#" class="icon-button icon-like">Favourite</a> 
															<a href="#" class="icon-button icon-compare">Checkout</a>
														</div>
														<!-- End .item-action-inner -->
													</div>
													<!-- End .item-action -->
												</div>
												<!-- End .item-meta-container -->
											</div>
											<!-- End .item -->


										</div>
										<!-- End .col-md-4 -->
										<!-- STOP HERE -->
										</c:forEach>
									</div>
									<!-- End .row -->
								</div>
								<!-- End .category-item-container -->
							</div>
							<!-- End .col-md-9 -->

							<aside class="col-md-3 col-sm-4 col-xs-12 sidebar">
								<div class="widget">
									<div class="panel-group custom-accordion sm-accordion" id="category-filter">
										<div class="panel">
											<div class="accordion-header">
												<div class="accordion-title">
													<span>Familles (<c:out value="${requestScope.nombreFamilles }"></c:out>)</span>
												</div>
												<!-- End .accordion-title -->
												<a class="accordion-btn opened" data-toggle="collapse"
													data-target="#category-list-1"></a>
											</div>
											<!-- End .accordion-header -->

											<div id="category-list-1" class="collapse in">
												<div class="panel-body">
													<ul class="category-filter-list ">
														<c:forEach items="${requestScope.listeFamilles }"
															var="fam">
															<li><a
																href='familles?famille=<c:out value="${fam.numFam }"/>'>
																	<c:choose>
																		<c:when
																			test="${fam.nomFam eq requestScope.nomFamille}">
																			<strong><c:out value="${fam.nomFam }" /></strong>
																			<img
															src='<c:out value="shop/images/${fam.image}"></c:out>'>
																		</c:when>
																		<c:otherwise>
																			<c:out value="${fam.nomFam }" />
																			<img
															src='<c:out value="shop/images/${fam.image}"></c:out>'>
																		</c:otherwise>
																	</c:choose>
															</a></li>
															<!--  <li>
																<img
															src='<c:out value="shop/images/${fam.image}"></c:out>'>
																
															</li>-->
														</c:forEach>
													</ul>
												</div>
												<!-- End .panel-body -->
											</div>
											<!-- #collapse -->
										</div>
										<!-- End .panel -->
							</aside>
							<!-- End .col-md-3 -->
						</div>
						<!-- End .row -->


					</div>
					<!-- End .col-md-12 -->
				</div>
				<!-- End .row -->
			</div>
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




	
</body>
</html>