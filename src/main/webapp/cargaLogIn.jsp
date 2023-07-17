<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@ page import = "java.sql.*" %>
 <%@ page session="true" %>

<%
	 
	String usuario = request.getParameter("usuario"); 
	String contrasena = request.getParameter("contrasena");
		
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
	 
	String query = "SELECT usuario, contrasena, tipoUsuarioId FROM usuarios WHERE usuario='"+usuario+"' AND contrasena ='"+contrasena+"';";
	 
	try {
		cmd = cn.createStatement();
		dr = cmd.executeQuery(query);
		if (dr.next()) { 
	        usuario = dr.getString(1);
	        String contrasenaObtenida = dr.getString(2);
	        String tipoUsuario = dr.getString(3);
	        
	        if (contrasenaObtenida.equals(contrasena)) {
	        	String user = usuario;
		        session.setAttribute("varUsuario", user);
		        session.setAttribute("tipoUsuario", tipoUsuario);
	        %> 
	        <script> 
	            alert("Bienvenido <%= usuario %>!");
	            window.location.href = "pages/Index.jsp";
	        </script>
			<% 
			}else{
				%>
		        <script>
		            alert("Usuario o contraseña incorrecta!");
		            window.location.href = "pages/LogIn.jsp";
		        </script>
				<% 
			}
		} else{
			%>
	        <script>
	            alert("Usuario o contraseña incorrecta!");
	            window.location.href = "pages/LogIn.jsp";
	        </script>
			<% 
		}
	}catch(Exception e) {
		System.out.println("Error: "+e.getMessage());
	} 
	
%>  