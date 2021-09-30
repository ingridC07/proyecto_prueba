<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<link rel="stylesheet" type="text/css" href="css/estilo_login.css">
<link rel="stylesheet" type="text/css" href="css/estilos.css">
<link rel="stylesheet" type="text/css" href="css/fontawesome-free/css/fontawesome.css">
<link rel="stylesheet" type="text/css" href="css/bootstrap-4.6.0-dist/css/bootstrap.css">
<title>Login</title>
</head>
<body class="padre">

<header class="cabecera">
        <div class="container_titulologo">
            <h1 class="titulo"></h1>
            <image class="logo"></image>
        </div>
        <nav class="navegacion">
            <ul>
            	<li><a href="index.jsp">Inicio</a></li>
                <li><a href="login.jsp">Usuarios</a></li> 
                <li><a href="">Clientes</a></li>
                <li><a href="ingreso.jsp">Registro</a></li>
                <li><a href="">Proveedores</a></li>
                <li><a href="">Productos</a></li>
                <li><a href="">Ventas</a></li>
                <li><a href="">Reportes</a></li>
         </ul>
    </nav>
</header>

	<h1 class="title1">Ingreso clientes</h1>
	<div class="container">
	<br>
	<form action="" method="">
		<label>Usuario:</label>
		<input class="form-control form-control-sm" type="text" placeholder="Carito77" aria-label=".form-control-sm example">
		<label>Contraseña:</label>
		<input class="form-control form-control-sm" type="password" placeholder="*****" aria-label=".form-control-sm example">
		<br>
		<button type="button" class="btn btn-outline-dark">Ingreso</button>
	</form>
</div>
</body>
</html>