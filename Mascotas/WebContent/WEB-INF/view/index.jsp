<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Inserta datos de Animales</title>
	    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	</head>
	<body>
		<div id="content" role="main" class="container-md" align="center">
			<div class="row">
				<div class="col-lg-12">
					<p class="h2">Animales</p>
				</div>
			</div><br>
			<div class="row">
				<div class="col-lg-4">
					<div class="card" style="width: 30rem;">
						<div class="card-body">
						  <h5 class="card-title">Perros</h5>
						  <p class="card-text">Ingresa los datos de tu <span style="font-weight:bold;">Perro</span></p>
							  <div class="card">
							  	<form method="post" class="form-group" action="Perro">
								  <div class="row">
								    <div class="col">
								      <input type="text" name="nombreDog" class="form-control" placeholder="Nombre">
								    </div>
								  </div><br>
								  <div class="row">
								    <div class="col">
								      <input type="text" name="razaDog" class="form-control" placeholder="Raza">
								    </div>
								  </div><br>
								  <div class="row">
								    <div class="col">
								      <input type="text" name="pesoDog" class="form-control" placeholder="Peso">
								    </div>
								  </div><br>
								  <input class="btn btn-success" type = "submit" value="Crear Perro"><br>
								</form><br> 
							  </div>
						</div>
					 </div>
				</div>
				<div class="col-lg-4">
					<div class="card" style="width: 30rem;">
						<div class="card-body">
						  <h5 class="card-title">Gatos</h5>
						  <p class="card-text">Ingresa los datos de tu <span style="font-weight:bold;">Gato</span></p>
							  <div class="card">
								  	<form method="post" class="form-group" action="Gato">
									  <div class="row">
									    <div class="col">
									      <input type="text" name="nombreCat" class="form-control" placeholder="Nombre">
									    </div>
									  </div><br>
									  <div class="row">
									    <div class="col">
									      <input type="text" name="razaCat" class="form-control" placeholder="Raza">
									    </div>
									  </div><br>
									  <div class="row">
									    <div class="col">
									      <input type="text" name="pesoCat" class="form-control" placeholder="Peso">
									    </div>
									  </div><br>
									  <input class="btn btn-success" type = "submit" value="Crear Gato"><br>
									</form><br>
							 </div>
						</div>
					 </div>
				</div>
			</div>
		</div>
	</body>
</html>