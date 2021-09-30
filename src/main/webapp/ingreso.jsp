<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="css/estilos.css">
<link rel="stylesheet" type="text/css" href="css/formulario.css">
<link rel="stylesheet" type="text/css" href="css/estilo_login.css">
<link rel="stylesheet" type="text/css" href="css/fontawesome-free/css/fontawesome.css">
<link rel="stylesheet" type="text/css" href="css/bootstrap-4.6.0-dist/css/bootstrap.css">
<meta charset="ISO-8859-1">
<title>Ingreso</title>
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
                <li><a href="mostrar.jsp">Clientes</a></li>
                <li><a href="ingreso.jsp">Registro</a></li>
                <li><a href="">Proveedores</a></li>
                <li><a href="">Productos</a></li>
                <li><a href="">Ventas</a></li>
                <li><a href="">Reportes</a></li>
    </nav>
  </header>

	<div class="contenedor-form">
		<form>
			<label for="exampleFormControlInput1" class="form-label">Cedula</label>
  			<input type="text" class="form-control-lg" id="exampleFormControlInput1" placeholder="12054400">
			<label for="exampleFormControlInput1" class="form-label">Nombre Completo</label>
  			<input type="text" class="form-control-lg" id="exampleFormControlInput1" placeholder="Ingrid Carolina Olarte">
			<label for="exampleFormControlInput1" class="form-label">Correo Electronico</label>
  			<input type="email" class="form-control-lg" id="exampleFormControlInput1" placeholder="name@example.com">
			<label for="exampleFormControlInput1" class="form-label">Usuario</label>
  			<input type="text" class="form-control-lg" id="exampleFormControlInput1" placeholder="Carito77">
			<label for="exampleFormControlInput1" class="form-label">Contraseña</label>
  			<input type="password" class="form-control-lg" id="exampleFormControlInput1" placeholder="*******">
  			<br>
  			<br>
  			<button type="button" class="btn btn-outline-dark">Ingreso</button>
  			
		</form>
	</div>
</body>
</html>