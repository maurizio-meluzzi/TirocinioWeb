<%@page import="sun.reflect.ReflectionFactory.GetReflectionFactoryAction"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Pagina di creazione <%= request.getParameter("type") %></title>
	</head>
<%!
	String field01, field02, field03;
%>
<%
	String type = request.getParameter("type");
	if (type.equals("studente") || type.equals("responsabile"))
	{
		field01 = "nome";
		field02 = "cognome";
		field03 = "cf";
	}
	else if (type.equals("azienda"))
	{
		field01 = "ragionesociale";
		field02 = "piva";
		field03 = " ";
	}
%>
	<body>
		<h1>Pagina di creazione <%= request.getParameter("type") %></h1>
		<form action="<%= request.getParameter("type") %>Servlet" method="post">
			<table style="width:300px">
				<tr><td><%= field01 %></td><td><input type="text" name="<%= field01 %>"></td></tr>
				<tr><td><%= field02 %></td><td><input type="text" name="<%= field02 %>"></td></tr>
				<tr><td><%= field03 %></td><td><input type="text" name="<%= field03 %>"></td></tr>
				<tr><td><input type="submit" value="invia"></td><td></td></tr>
			</table>
		</form>
	</body>
</html>