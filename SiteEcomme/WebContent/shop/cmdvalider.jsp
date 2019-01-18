<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<link rel="stylesheet" href="shop/css/bootstrap.min.css">
<link rel="stylesheet" href="shop/css/owl.carousel.css">
<link rel="stylesheet" href="shop/css/responsive.css">
<link rel="stylesheet" href="shop/css/style.css">
<script src="shop/js/jquery.js"></script>

<title>Commande Valider</title>
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
										href="familles.jsp" title="Venedor eCommerce Template"><img
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
                                        <li class="mega-menu-container"><a href="connection">Connection</a>
                                        </li>
                                        
                                        <li>
                                            <a href="enregistrer">INSCRIPTION</a>
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
						<li><a href="home.jsp">Home</a></li>
						<li class="active">Valider commande</li>
					</ul>
        		</div>
        	</div>
        	<div class="container">
        		<div class="row">
        			<div class="col-md-12">
						<header class="content-title">
							<h1 class="title">Commande Validée avec succes</h1><br>
							<p>Votre commande sera delivré dans 2 jours au maximum a l'adresse :<c:out value="${requestScope.client.adrCli}"/>. 
											La présence de Mr (Mdm) . <c:out value=" ${requestScope.client.prenomCli }"/> est obligatoire .
						    </p>
						</header>
        				
			</div><!-- End .container -->
        
        </section><!-- End #content -->
</div>
	<script src="shop/js/bootstrap.min.js"></script>
	<script src="shop/js/smoothscroll.js"></script>
	<script src="shop/js/retina-1.1.0.min.js"></script>
	<script src="shop/js/jquery.placeholder.js"></script>
	<script src="shop/js/jquery.hoverIntent.min.js"></script>
	
</body>
</html>