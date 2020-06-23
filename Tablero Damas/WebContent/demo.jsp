<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Tablero de Damas</title>
		<link href="css/styles.css" rel="stylesheet" type="text/css">
	</head>
	<body>
		<%
		int alto = 0;
		int ancho = 0;
		String altoParameter = request.getParameter("alto");
		String anchoParameter = request.getParameter("ancho");
		
		if(altoParameter != null){
            alto = Integer.parseInt(altoParameter);
        }
		if(anchoParameter != null){
			ancho = Integer.parseInt(anchoParameter);
        }
		
		int[][] tablaDamas = new int[ancho][alto];
		
		%>
		<h2>Tabla de damas</h2>
		<h3>Ejemplo: demo.jsp?alto=3&ancho=5</h3>
		
		<!-- http://localhost:8080/Tablero_Damas/demo.jsp?alto=10&ancho=10 -->
		
		<div class="content">
			<div class="tablaDamas">
				<%for (int i = 0; i < tablaDamas.length; i++){ %> 
				<div class="row">
					<div class="box one"></div>
					<div class="box two"></div>
					<% for (int j = 1; j < tablaDamas[i].length; j++) {%>
					<div class="box one"></div>
					<div class="box two"></div>
					<%}%>
				</div>
				<%}%>
			</div>
		</div>
	</body>
</html>