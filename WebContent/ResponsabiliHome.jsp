<%@page import="java.util.HashMap"%>
<%@page import="com.tiscali.tirocini.model.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Pagina di gestione dei Responsabili</title>
	</head>
	<body>
		<h1>Gestione Responsabili</h1>
		<br/><br/><br/><br/>

		<a href="CreateResponsabile.jsp">Nuovo Responsabile</a>
		<br/><br/><br/><br/>

		<table border="1" cellpadding="1" cellspacing="1" style="width: 100%;">
			<tbody>
<%
	Universita uni = new Universita("Cagliari");
	for (Responsabile responsabile : uni.getResponsabili().values())
	{
%>
				<tr>
					<td><%= responsabile.getNome() %> <%= responsabile.getCognome() %></td>
					<td><a href="ResponsabileServlet?action=update&id=<%= responsabile.getCf() %>">Modifica</a></td>
					<td><a href="ResponsabileServlet?action=delete&id=<%= responsabile.getCf() %>">Cancella</a></td>
				</tr>
<%
	}
%>
			</tbody>
		</table>
	</body>
</html>