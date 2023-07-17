<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ page import = "java.sql.*" %>
 

<%
	String nombre= request.getParameter("nombre");
	String apellido= request.getParameter("apellido");
	String usuario = request.getParameter("usuario");
	String correo= request.getParameter("correo");
	String contrasena = request.getParameter("contrasena");
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
	
	String mensaje = "";
	boolean valido = false;
		try {
		String query = "SELECT * FROM usuarios";
		cmd=cn.createStatement();
		dr= cmd.executeQuery(query);
		String queryInsert="";
		
		if (!dr.next()) {
			queryInsert = "INSERT INTO usuarios(nombre, apellido, usuario, contrasena, correo, tipoUsuarioId) VALUES(?,?,?,?,?,2)";
			mensaje = "Cuenta creada con exito!";
			valido=true;
			
			%>
	        <script>
	            alert("<%= mensaje %>");
	            window.location.href = "pages/LogIn.jsp";
	        </script>
			<%
			
		} else {
			query = "SELECT * FROM usuarios WHERE usuario='"+usuario+"'";
			cmd=cn.createStatement();
			dr = cmd.executeQuery(query); 
			
			if (dr.next()) {
				%>
		        <script>
		            alert("El usuario ya existe");
		            window.location.href = "pages/SignIn.jsp";
		        </script>
				<%
			} else {
				queryInsert = "INSERT INTO usuarios(nombre, apellido, usuario, contrasena, correo, tipoUsuarioId) VALUES(?,?,?,?,?,1)";
				%>
		        <script>
		            alert("Cuenta creada correctamente!");
		            window.location.href = "pages/LogIn.jsp";
		        </script>
				<%
				valido=true;
			} 
		}
		
		if(valido==true){
			prepareCmd = cn.prepareStatement(queryInsert);
			prepareCmd.setString(1, nombre);
			prepareCmd.setString(2, apellido);
			prepareCmd.setString(3, usuario); 
			prepareCmd.setString(4, contrasena); 
			prepareCmd.setString(5, correo); 
			prepareCmd.executeUpdate();
		}
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	
%> 
 