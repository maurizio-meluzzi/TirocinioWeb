<%@page import="com.tiscali.tirocini.model.*"%>
<%@page import="sun.reflect.ReflectionFactory.GetReflectionFactoryAction"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
	Studente studente = (Studente) request.getSession().getAttribute("studente");
%>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Dettaglio Studente</title>
	</head>
	<body>
		<h1>Dettaglio Studente</h1>
		<table style="width:300px">
			<tr><td>Nome</td><td><!-- input type="text" name="nome" --><%= studente.getNome() %></td></tr>
			<tr><td>Cognome</td><td><!-- input type="text" name="cognome" --><%= studente.getCognome() %></td></tr>
			<tr><td>Codice Fiscale</td><td><!-- input type="text" name="cf" --><%= studente.getCf() %></td></tr>
			<tr><td><!-- input type="submit" value="invia" --></td><td></td></tr>
		</table>
		<br><br><a href="../TirocinioWebApp/">Home</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="../TirocinioWebApp/StudentiHome.jsp">Home Studenti</a>
	</body>
</html>