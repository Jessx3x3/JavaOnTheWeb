<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" 
integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" 
crossorigin="anonymous">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<title>Team Roster</title>
</head>
<body>
	<div class="navbar bg-dark text-white">
		<h1>Team Roster </h1>
		<form method="get" action="Teams" class="form-inline">
			<input type="hidden" name="action" value="add_team">
   			<button class="btn btn-success my-2 my-sm-0" type="submit">New Team +</button>
 		</form>
	</div>
	<c:if test = "${roster.totalTeams() > 0}">
	<div>
	<table class="table table-striped">
	  <thead>
	    <tr>
	      <th scope="col">Teams</th>
	      <th scope="col">Players</th>
	      <th scope="col" class="">Action</th>
	    </tr>
	  </thead>
	  
	  <tbody>
	   <c:forEach var = "i" begin = "0" end = "${roster.totalTeams() -1}">
	    <tr>
	      <th scope="row"> <c:out value="${roster.getTeam(i).getName()}"/></th>
	      <td> <c:out value="${roster.getTeam(i).totalPlayers()}"/></td>
	      <td>
			<div class="action_container">
				<div class="mr-3">
					<form method="get" action="Teams">
						<input type="hidden" name="action" value="view_team">
						<input type="hidden" name="id" value=<c:out value="${i}"/>>
						<button type="submit" class="btn btn-outline-info">Details</button>
					</form>
				</div>
				<div>
					<form method="post" action="Teams">
						<input type="hidden" name="action" value="delete_team">
						<input type="hidden" name="id" value=<c:out value="${i}"/>>
							<button type="submit" class="btn btn-outline-danger">Delete</button>
					</form>
				</div>
			</div>
	      </td>
	    </tr>
	    </c:forEach>
	  </tbody>
	</table>
	</div>
	</c:if>
	<c:if test = "${roster.totalTeams() == 0}">
		<div class="p-4 text-center">
			<h2>No teams founded</h2>
		</div>
	</c:if>
</body>
</html>




<!--  

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Home - Teams</title>
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
	</head>
	<body>
		<div id="content" role="main" class="container-lg" align="center">
			<div class="row">
				<div class="col-lg-12">
					<br><p class="h3">Roster</p><br>
					<form method="get" action="Teams" class="form-inline">
						<button class="btn btn-success my-2 my-sm-0" type="submit" value="add_team">New Team +</button>
					</form>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-12"><br>
					<table class="table">
						  <thead>
						    <tr>
						      <th scope="col">Team</th>
						      <th scope="col">Players</th>
						      <th scope="col">Action</th>
						    </tr>
						  </thead>
						  <tbody>
						    <tr>
						      <td><c:out value="${roster.getTeam(i).getName()}"/></td>
						      <td><c:out value="${roster.getTeam(i).getName()}"/></td>
						      <td>
						     	 <a href="">Details</a>
						     	 <a href="">Delete</a>
						      </td>
						    </tr>
						  </tbody>
					</table>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-12">
					
				</div>
			</div>
			<div class="row">
				<div class="col-lg-12">
					
				</div>
			</div>
			<div class="row">
				<div class="col-lg-12">
					
				</div>
			</div>	
		</div>
	</body>
</html>
-->