<%@page import="com.tiscali.tirocini.model.*"%>
<%@page import="sun.reflect.ReflectionFactory.GetReflectionFactoryAction"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Pagina di creazione Studente</title>
		<% String cf = request.getParameter("cf"); %>
	</head>
	<body>
		<h1>Pagina di creazione Studente</h1>
		<form action="StudenteServlet" method="post">
			<input type="hidden" name="action" value="update">
			<table style="width:300px">
				<tr><td>Nome</td><td><input type="text" name="nome" value="<%= Universita.getInstance().getStudente(cf).getNome() %>"></td></tr>
				<tr><td>Cognome</td><td><input type="text" name="cognome" value="<%= Universita.getInstance().getStudente(cf).getCognome() %>"></td></tr>
				<tr><td>Codice Fiscale</td><td><input type="text" name="cf" value="<%= Universita.getInstance().getStudente(cf).getCf() %>" readonly></td></tr>
				<tr><td><input type="submit" value="invia"></td><td></td></tr>
			</table>
		</form>
	</body>
</html>