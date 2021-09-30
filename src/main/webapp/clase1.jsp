<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript" src="js/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="js/consultar.js"></script>
<meta charset="ISO-8859-1">
<title>Clase crud</title>
</head>
<body>
<%
String cod, nombre;
cod=request.getParameter("co");
nombre=request.getParameter("no");
%>
<form action="Servletgestionlineas" method="post">
<input type="text" name="codline" value="<%=cod %>" placeholder="cod linea">
<input type="text" name="nomlin" value="<%=nombre%>"placeholder="nombre linea">
<input type="submit" name="btncon" value="Consultar">
<input type="submit" name="btnact" value="Actualizar">
<input type="submit" name="btneli" value="Eliminar">
</form>


<form>
<input type="button" class="btn_consulta_general" value="Consulta General">
</form>

<table id="tab">
</table>
</body>
</html>