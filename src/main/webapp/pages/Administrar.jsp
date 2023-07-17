<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ page import = "java.sql.*" %>
 <%@ page session="true" %>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Administrar</title>
<link rel="stylesheet" href="../css/style.css">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
  <link rel="stylesheet" href="../css/log.css">
</head>
<body>
	<header>
        <nav class="container-fluid navbar navbar-expand-md">
          <div class="container">
            <div class="logo col-8 col-sm-4">
              <img class="imagen-logo" src="../assets/img/codoacodo.png" alt="">
              <h2>Conf Bs As</h2>
            </div>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
              aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
              <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse  justify-content-end" id="navbarNav">
              <ul class="navbar-nav">
                <li class="nav-item">
                  <a class="nav-link active" aria-current="page" href="./Index.jsp">La conferencia</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="./Index.jsp">Oradores</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="./Index.jsp">Lugar y fecha</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="./Index.jsp">Conviértete en orador</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="./Index.jsp">Comprar tickets</a>
                </li>
                
                <jsp:include page="../LoginBloque.jsp"></jsp:include>
              </ul>
            </div>
          </div>
        </nav>
      </header>
	
	
  	<%
 final String CONTROLADOR = "com.mysql.cj.jdbc.Driver";
	final String URL = "jdbc:mysql://localhost:3306/integrador_cac";
	final String USER ="root";
	final String PASS = ""; 
	
	Class.forName(CONTROLADOR);
	
	Connection cn = DriverManager.getConnection(URL,USER,PASS);
	 
	ResultSet dr = null; 
	// Consultas simples
	Statement cmd = null;
	// Consultas con parametros
	PreparedStatement prepareCmd = null;
	 
	String query = "SELECT u.nombre, u.apellido, u.usuario, u.correo, tu.tipoUsuario FROM usuarios u inner join tipoUsuarios tu on u.tipoUsuarioId=tu.tipoUsuarioId";
	try {
		cmd = cn.createStatement();
	    dr = cmd.executeQuery(query);
	    %>
	    <table class="table">
	      <thead>
	        <tr>
	          <th scope="col">Nombre</th>
	          <th scope="col">Apellido</th>
	          <th scope="col">Usuario</th>
	          <th scope="col">Correo</th>
	          <th scope="col">Rol</th>
	        </tr>
	      </thead>
	      <tbody>
	    <%
	    while (dr.next()) {
	        String nombre = dr.getString(1);
	        String apellido = dr.getString(2);
	        String usuario = dr.getString(3);
	        String correo = dr.getString(4);
	        String tipoUsuario = dr.getString(5); 
	        
	        %>
	        <tr>
	          <td><%= nombre %></td>
	          <td><%= apellido %></td>
	          <td><%= usuario %></td>
	          <td><%= correo %></td>
	          <td><%= tipoUsuario %></td>
	        </tr>
	        <%
	    }
	}catch(Exception e) {
		System.out.println("Error: "+e.getMessage());
	} 
	
 %>
	 
</body>
</html>