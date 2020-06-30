<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Button Clicker</title>
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
	</head>
	<body>
		<div id="content" role="main" class="container-lg" align="center">
			<div class="card">
				<div class="row"><br>
					<div class="col-lg-12">
							<form method="post" action="Home">
								<br><button class="btn btn-info">Púlsa!</button><br><br>
							</form >
						</div>
					</div>	
				<div class="row"><br>
					<div class="col-lg-12">
						<br><p class="h3">Haz clickeado este botón <c:out value="${contador}"/><span style="color:blue;font-weight:bold">
						</span> veces!</p>
					</div>
				</div>
			</div>
		</div>
	</body>
</html>