<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Great Number</title>
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
	</head>
	<body>
		<div id="content" role="main" class="container-lg" align="center">
			<div class="row">
				<div class="col-lg-12">
					<br><p class="h2">Welcome to the Great Number Game!</p><br>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-12">
					<br><p class="h2">I am thinking of a number between 1 and 100</p><br>
					<br><p class="h2">Take a guess!</p><br>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-12">
					<div class="card">		
						<form  method="post" class="form-group" action="Home">
							<br><input type="number" name="userNum" class="form-control"><br>
							<br><input class="btn btn-info" type="submit" value="Generate"><br><br>
						</form >						
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-12">
					<table class="table">
						  <thead>
						    <tr>
						      <th scope="col">Intento</th>
						      <th scope="col">Tu apuesta</th>
						      <th scope="col">Número Aleatorio</th>
						    </tr>
						  </thead>
						  <tbody>
						    <tr>
						      <th scope="row"><c:out value="${contador}"/></th>
						      <td scope="row"><c:out value="${userNum}"/></td>
						      <td scope="row"><c:out value="${randNum}"/></td>
						    </tr>
						  </tbody>
					</table>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-12">
					<div class="card">							
						<br><p class="h2"><c:out value="${cadena}"/></p><br>				
					</div>
				</div>
			</div>	
		</div>
	</body>
</html>