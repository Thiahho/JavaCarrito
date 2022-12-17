<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<title>Insert title here</title>
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-dark	 bg-dark">
		<div class="container-fluid">
			<a class="navbar-brand" href="#">ZAPAS</a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav me-auto mb-2 mb-lg-0">
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="Controlador">Home</a></li>
					<li class="nav-item"><a class="nav-link" href="carrito.jsp"><i class="fas fa-cart-plus">(<label style="color:orange">${contador}</label>)</i>Carrito</a></li>

					
				</ul>
				<form class="d-flex" role="search">
					<input class="form-control me-2" type="search" placeholder="Search"
						aria-label="Search">
					<button class="btn btn-outline-success" type="submit">Search</button>
				</form>
				<ul class="navbar-nav">
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="#" role="button"
						data-bs-toggle="dropdown" aria-expanded="false"> Iniciar Sesion </a>
						<ul class="dropdown-menu">
							<li><a class="dropdown-item" href="#">Action</a></li>
							<li><a class="dropdown-item" href="#">Another action</a></li>
							<li><hr class="dropdown-divider"></li>
							<li><a class="dropdown-item" href="#">Something else
									here</a></li>
						</ul></li>
				</ul>
			</div>
		</div>
	</nav>

		 <div class="container mt-2">
		<div class="row">
			<c:forEach var="p" items="${productos}">
				
				<div class="col-sm-3">
					<div class="card">
						<div class="card-header">
							<label>${p.getNombres()}</label>
						</div>
						<div class="card-body">
							<i>$123</i> <img src="" width="200" height="180">
						</div>
						<div class="card-footer text-center">
							<label>Descripcion</label>
							<div>
								<a class="btn btn-outline-info" href="Controlador?accion=AgregarCarrito&id=${p.getId()}">Agregar a carrito</a>
							</div>
						</div>
					</div>
				</div>
			</c:forEach>


		</div>
	</div>
	<!--
	
	 <div class="container mt-2">
		<div class="row">
			<div class="col">
		<div class="card" style="width: 18rem;">
	  <img src="img/zapas2.jpg" class="card-img-top" alt="...">
  	<div class="card-body">
    <h5 class="card-title">Card title</h5>
    <p class="card-text">Talle 9</p>
    <p class="card-text">Precio $950 </p>
    
    <a href="Controlador?accion=AgregarCarrito&id=${p.getId()}" class="btn btn-primary">Agregar al Carrito</a>
  	</div>
  	</div>
  	</div>
  	
  	
  	  <div class="col">
		<div class="card" style="width: 18rem;">
	  <img src="img/zapas3.jpg" class="card-img-top" alt="...">
  	<div class="card-body">
    <h5 class="card-title">Card title</h5>
    <p class="card-text">Talle 8.5</p>
    <p class="card-text">Precio $1110 </p>
    <a href="Controlador?accion=AgregarCarrito&id=${p.getId()}" class="btn btn-primary">Agregar al Carrito</a>
  	</div>
  	</div>
  	</div>
  	
  	<div class="col">
		<div class="card" style="width: 18rem;">
	  <img src="img/zapas4.jpg" class="card-img-top" alt="...">
  	<div class="card-body">
    <h5 class="card-title">Card title</h5>
    <p class="card-text">Talle 9.5</p>
    <p class="card-text">Precio $1110</p>
    <a href="Controlador?accion=AgregarCarrito&id=${p.getId()}" class="btn btn-primary">Agregar al Carrito</a>
  	</div>
  	</div>
  	</div>
  	
  			<div class="col">
		<div class="card" style="width: 18rem;">
	  <img src="img/zapas5.jpg" class="card-img-top" alt="...">
  	<div class="card-body">
    <h5 class="card-title">Card title</h5>
    <p class="card-text">Talle 10.5</p>
    <p class="card-text">Precio $1100</p>
    <a href="Controlador?accion=AgregarCarrito&id=${p.getId()}" class="btn btn-primary">Agregar al Carrito</a>
  	</div>
  	</div>
  	</div>
  	
  		<div class="col">
		<div class="card" style="width: 18rem;">
	  <img src="img/zapas6.jpg" class="card-img-top" alt="...">
  	<div class="card-body">
    <h5 class="card-title">Card title</h5>
    <p class="card-text">Talle 8</p>
    <p class="card-text">Precio $980</p>    
    <a href="#" class="btn btn-primary">Agregar al Carrito</a>
  	</div>
  	</div>
  	</div>
  	
  	<div class="col">
		<div class="card" style="width: 18rem;">
	  <img src="img/zapas7.jpg" class="card-img-top" alt="...">
  	<div class="card-body">
    <h5 class="card-title">Card title</h5>
    <p class="card-text">Talle 9</p>
    <p class="card-text">Precio $420</p>
    <a href="#" class="btn btn-primary">Agregar al Carrito</a>
  	</div>
  	</div>
  	</div>
  	
  	<div class="col">
		<div class="card" style="width: 18rem;">
	  <img src="img/zapas8.jpg" class="card-img-top" alt="...">
  	<div class="card-body">
    <h5 class="card-title">Card title</h5>
    <p class="card-text">Talle 13</p>
    <p class="card-text">Precio $420</p>
    <a href="#" class="btn btn-primary">Agregar al Carrito</a>
  	</div>
  	</div>
  	</div>
  	
	  	<div class="col">
		<div class="card" style="width: 18rem;">
	  <img src="img/zapas9.jpg" class="card-img-top" alt="...">
  	<div class="card-body">
    <h5 class="card-title">Card title</h5>
    <p class="card-text">Talle 7.5</p>
    <p class="card-text">Precio $680</p>
    <a href="#" class="btn btn-primary">Agregar al Carrito</a>
  	</div>
  	</div>
  	</div>	

	  	<div class="col">
		<div class="card" style="width: 18rem;">
	  <img src="img/zapas10.jpg" class="card-img-top" alt="...">
  	<div class="card-body">
    <h5 class="card-title">Card title</h5>
    <p class="card-text">Talle 8</p>
    <p class="card-text">Precio $680</p>
    <a href="#" class="btn btn-primary">Agregar al Carrito</a>
  	</div>
  	</div>
  	</div>
  	
  		  	<div class="col">
		<div class="card" style="width: 18rem;">
	  <img src="img/zapas11.jpg" class="card-img-top" alt="...">
  	<div class="card-body">
    <h5 class="card-title">Card title</h5>
    <p class="card-text">Talle 9</p>
    <p class="card-text">Precio $890</p>
    <a href="#" class="btn btn-primary">Agregar al Carrito</a>
  	</div>
  	</div>
  	</div>
  	
  		  	<div class="col">
		<div class="card" style="width: 18rem;">
	  <img src="img/zapas12.jpg" class="card-img-top" alt="...">
  	<div class="card-body">
    <h5 class="card-title">Card title</h5>
    <p class="card-text">Talle 10</p>
    <p class="card-text">Precio $700</p>
    <a href="#" class="btn btn-primary">Agregar al Carrito</a>
  	</div>
  	</div>
  	</div>	


			
		</div>
	</div>

 -->







	<script src="https://kit.fontawesome.com/fb52ebbe70.js"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"
		integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.min.js"
		integrity="sha384-cuYeSxntonz0PPNlHhBs68uyIAVpIIOZZ5JqeqvYYIcEL727kskC66kF92t6Xl2V"
		crossorigin="anonymous"></script>
</body>
</html>