<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 <% 
			   String varUsuario = (String) session.getAttribute("varUsuario");
               String tipoUsuario = (String) session.getAttribute("tipoUsuario");

			   if (varUsuario != null) {
			%> 
			<li class="nav-item dropdown">
			  <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown"
			    aria-expanded="false">
			    <%= varUsuario %> 
			  </a>
			  <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
			  
			  <%
			  	if(tipoUsuario.equals("2")){
			  		%> 
			  		<li><a class="dropdown-item" href="Administrar.jsp">Administrar</a></li>
			  		<%
			  	}
			  %>
			     
			    <li><a class="dropdown-item" href="CambiarContrasena.jsp">Cambiar contraseña</a></li>
			    <li><a class="dropdown-item" href="../cerrarSesion.jsp">Salir</a></li>
			  </ul>
			</li>
			<% } else { %>
			<li class="nav-item">
			  <a class="nav-link link-verde" href="../pages/LogIn.jsp">LogIn</a>
			</li>
			<% } %>
</body>
</html>