<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.min.js"
	integrity="sha384-cuYeSxntonz0PPNlHhBs68uyIAVpIIOZZ5JqeqvYYIcEL727kskC66kF92t6Xl2V"
	crossorigin="anonymous"></script>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="estilo.css">
<title>Iniciar Sesion</title>

</head>
<body>


	<!-- <div class="container mt-4 col-lg-4">
		<div class="card col-sm-10">
			<div class="card-body">v
				<form class="form-sign" action="Validar" method="post">
					<div class="form-group text-center">
						<h3>Iniciar Sesion</h3>
						<label>Bienvenidos a Mercado ZA</label>
					</div>
					<div class="form-group">
						<label>Usuario:</label>
						<input type="text" name="txtUser" class="form-control">
					</div>
						<div class="form-group">
						<label>Clave:</label>
						<input type="password" name="txtPass" class="form-control">
						</div>
						<input type="submit" name="accion" value="Ingresar" class="btn btn-primary">
						
				</form>		
			</div>
		</div>
	</div>

-->
		
	<div class="container mt-4	 col-lg-6">
		<div class="card col-sm-10">
			<div class="card-body">
				<form action="Validar" class="form-sign" method="post">

					<h1>Inicio Sesion</h1>
					<div class="contenedor">
						<div class="input-contenedor">
							<i class="fas fa-envelope icon"></i> 
							<input name="txtUser" type="text" placeholder="Usuario">
						</div>

						<div class="input-contenedor">
							<i class="fas fa-key icon"></i> 
							<input type="password" name="txtPass" placeholder="Clave">
						</div>
						<input type="submit" value="Ingresar" class="button" name="accion">
						<a href="registro.jsp">Registrate</a>
			    </form>
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