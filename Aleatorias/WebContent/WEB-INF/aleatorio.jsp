<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Palabras Aleatorias</title>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
</head>
<body>
	<div id="content" role="main" class="container-lg" align="center">
		<div class="row">
			<div class="col-lg-12">
				<br><p class="h2">You have generated a word <span style="color:blue;font-weight:bold"><c:out value="${contador}"/></span> times</p><br>
			</div>
		</div>
		<div class="row">
			<div class="col-lg-12">
				<div class="card">
					<br><p class="h2"><c:out value="${palabra}"/></p><br>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-lg-12">
				<form method="post" action="Home">
					<br><button class="btn btn-info">Generate</button><br><br>
				</form >
			</div>
		</div>
		<div class="row">
			<div class="col-lg-12">
				<br><p class="h2">The last time you generated a word was:</p><br>
			</div>
		</div>
		<div class="row">
			<div class="col-lg-12">
				<div class="card">
					<br><p class="h2"><c:out value="${date}"/></p><br>
				</div>
			</div>
		</div>
	</div>
</body>
</html>