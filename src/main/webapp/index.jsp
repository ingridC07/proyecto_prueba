<%@page import="controlador_tienda.Conexion"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"

    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<link rel="stylesheet" type="text/css" href="css/estilos.css">
<link rel="stylesheet" type="text/css" href="css/fontawesome-free/css/fontawesome.css">
<link rel="stylesheet" type="text/css" href="css/bootstrap-4.6.0-dist/css/bootstrap.css">
<meta charset="ISO-8859-1">
<title>Inicio</title>
</head>
<body id="cuerpo" class="padre">
    
    <header class="cabecera">
        <div class="container_titulologo">
            <img class="logo" src="imagen/logo-05.svg" width="200" height="200" ></img>
        </div>
        <nav class="navegacion">
            <ul>
            	<li><a href="index.jsp">Inicio</a></li>
                <li><a href="login.jsp">Usuarios</a></li> 
                 <li><a href="mostrar.jsp">Clientes</a></li>
                <li><a href="ingreso.jsp">Registro</a></li>
                <li><a href="">Proveedores</a></li>
                <li><a href="">Productos</a></li>
                <li><a href="">Ventas</a></li>
                <li><a href="">Reportes</a></li>
         </ul>
    </nav>
    </header>
    
    <%   
    Conexion con =new Conexion();
    con.conexionbd();
    %>
   
</body>


</html>