<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="css/estilos.css">
<link rel="stylesheet" type="text/css" href="css/fontawesome-free/css/fontawesome.css">
<link rel="stylesheet" type="text/css" href="css/bootstrap-4.6.0-dist/css/bootstrap.css">
<meta charset="ISO-8859-1">
<title>Usuarios</title>
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
         </ul>
    </nav>
    </header>
	<table class="table table-dark table-striped">
  		<thead>
    		<tr>
      		<th scope="col">Cedula</th>
      		<th scope="col">Nombre Completo</th>
      		<th scope="col">Correo electronico</th>
      		<th scope="col">Usuario</th>
      		<th scope="col">Contraseña</th>
    	</tr>
 	 </thead>
  <tbody>
    <tr>
      <th scope="row">1</th>
      <td>Mark</td>
      <td>Otto</td>
      <td>@mdo</td>
      <td>Carito1245</td>
    </tr>
    <tr>
      <th scope="row">2</th>
      <td>Jacob</td>
      <td>Thornton</td>
      <td>@fat</td>
      <td>123456</td>
    </tr>
    <tr>
      <th scope="row">3</th>
      <td colspan="2">Larry the Bird</td>
      <td>@twitter</td>
      <td>456789</td>
    </tr>
    <tr>
      <th scope="row">4</th>
      <td colspan="3">Carolina Olarte</td>
      <td></td>
    </tr>
  </tbody>
</table>

</body>
</html>