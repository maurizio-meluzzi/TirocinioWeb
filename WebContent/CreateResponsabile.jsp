<%@page import="sun.reflect.ReflectionFactory.GetReflectionFactoryAction"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Pagina di creazione Responsabile</title>
	</head>
	<body>
		<h1>Pagina di creazione Responsabile</h1>
		<form action="ResponsabileServlet" method="post">
			<input type="hidden" name="action" value="create">
			<table style="width:300px">
				<tr><td>Nome</td><td><input type="text" name="nome"></td></tr>
				<tr><td>Cognome</td><td><input type="text" name="cognome"></td></tr>
				<tr><td>Codice Fiscale</td><td><input type="text" name="cf"></td></tr>
				<tr><td><input type="submit" value="invia"></td><td></td></tr>
			</table>
		</form>
	</body>
</html>