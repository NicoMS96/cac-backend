<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@ page import = "java.sql.*" %>
 <%@ page session="true" %>
<%
	String varUsuario = (String) session.getAttribute("varUsuario");
	
	String contrasena = request.getParameter("contrasena"); 
	String nuevaContrasena = request.getParameter("nuevaContrasena");
	String repetirContrasena = request.getParameter("repetirContrasena");
	
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
	 
	String query = "SELECT contrasena FROM usuarios WHERE usuario='"+varUsuario+"' AND contrasena ='"+contrasena+"';";
	
	try {
		cmd = cn.createStatement();
		dr = cmd.executeQuery(query);
		if (dr.next()) { 
	        query = "UPDATE usuarios SET contrasena=? WHERE usuario=?";
	        prepareCmd = cn.prepareStatement(query);
			prepareCmd.setString(1, nuevaContrasena);
			prepareCmd.setString(2, varUsuario);
			 
			prepareCmd.executeUpdate();
	        %> 
	        <script> 
	            alert("Contraseña cambiada correctamente!");
	            window.location.href = "pages/Index.jsp";
	        </script>
			<% 
		}
		else{
			%>
	        <script>
	            alert("Contraseña incorrecta!");
	            window.location.href = "pages/CambiarContrasena.jsp";
	        </script>
			<% 
		}
	}catch(Exception e) {
		System.out.println("Error: "+e.getMessage());
	} 
	 
%>