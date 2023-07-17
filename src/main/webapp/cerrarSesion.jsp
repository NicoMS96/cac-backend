<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	session = request.getSession();
	session.invalidate(); 
%>
<<script> 
     alert("Cesión cerrada!");
     window.location.href = "pages/Index.jsp";
 </script>