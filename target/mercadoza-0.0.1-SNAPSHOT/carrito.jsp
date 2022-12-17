<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
	crossorigin="anonymous">
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
						aria-current="page" href="index.jsp">Home</a></li>
					<li class="nav-item"><a class="nav-link" href="index.jsp">Seguir
							Comprando</a></li>


				</ul>
				<form class="d-flex" role="search">
					<input class="form-control me-2" type="search" placeholder="Search"
						aria-label="Search">
					<button class="btn btn-outline-success" type="submit">Search</button>
				</form>
				<ul class="navbar-nav">
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="#" role="button"
						data-bs-toggle="dropdown" aria-expanded="false"> Iniciar
							Sesion </a>
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

	<div class="container mt-4">
		<h3>Carrito</h3>
		<div class="row">
			<div class="col-sm-8">
				<table class="table table-hover">
					<thead>
						<tr>
							<th>ITEM</th>
							<th>NOMBRE</th>
							<th>PRECIO</th>
							<th>CANT</th>
							<th>SUBTOTAL</th>
							<th>ACCION</th>

						</tr>
					</thead>
					<tbody>
						<c:forEach var="car" items="${carrito}">
							<tr>
								<td>${car.getItem()}</td>
								<td>${car.getNameProd()}</td>
								<td>${car.getPrecio()}</td>
								<td>${car.getCantidad()}</td>
								<td>${car.getSubtotal()}</td>
								<td>
									<a href="#">Eliminar</a>
									<a href="#">Editar</a>
								</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
			<div class="col-sm-4">
				<div class="card">
					<div class="card-header">
						<h3>Generar compra</h3>
					</div>
					<div class="card-body">
						<input type="text" value="$.${totalPagar}0" readonly="" class="form-control"> <label>Subtotal</label>
						<input type="text" value="$.${totalPagar}0" readonly="" class="form-control"> <label>Total a Pagar</label>
					</div>
					<div class="card-footer">
						<a href="#" class="btn btn-info btn-block">Realizar Pago</a> <a
							href="#" class="btn btn-danger btn-block">Generar Compra</a>
					</div>
				</div>
			</div>
		</div>


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