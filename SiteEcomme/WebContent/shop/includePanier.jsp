
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div class="dropdown-menu dropdown-cart-menu pull-right clearfix" role="menu">
	<p class="dropdown-cart-description">Les derniers articles ajoutées</p>
	<ul class="dropdown-cart-product-list">
		<c:forEach items="${ sessionScope.panier.produits}" var="produit">
			<li class="item clearfix"><a
				href="deleteProduct?produit=<c:out value="${produit.numPro }"/>"
				title="Delete item" class="delete-item"><i class="fa fa-times"></i></a>
				<figure>
					<a href="panier"><img
						src="shop/images/<c:out value="${produit.image }"/>"
						alt=""></a>
				</figure>
				<div class="dropdown-cart-details">
					<p class="item-name">
						<a href="panier"><c:out value="${produit.nomPro }" /></a>
					</p>
					<p>
						<c:out value="${produit.qantite } x " />
						<span class="item-price"><c:out value="${produit.puProd }" /></span>
					</p>
				</div> <!-- End .dropdown-cart-details --></li>
		</c:forEach>
	</ul>

	<ul class="dropdown-cart-total">
		<li><span class="dropdown-cart-total-title">Réduction:</span>0 DHs</li>
		<li><span class="dropdown-cart-total-title">Total: <c:out value="${sessionScope.panier.total}"/></span><span
			class="sub-price">DHs</span></li>
	</ul>
	<!-- .dropdown-cart-total -->
	<div class="dropdown-cart-action">
		<p>
			<a href="panier" class="btn btn-custom-2 btn-block">Panier</a>
		</p>
	</div>
	<!-- End .dropdown-cart-action -->

</div>