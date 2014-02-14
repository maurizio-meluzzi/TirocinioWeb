<%@page import="java.util.HashMap"%>
<%@page import="com.tiscali.tirocini.model.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Pagina di gestione delle Aziende</title>
	</head>
	<body>
		<h1>Gestione Aziende</h1>
		<br/><br/><br/><br/>

		<a href="CreateAzienda.jsp">Nuova Azienda</a>
		<br/><br/><br/><br/>

		<table border="1" cellpadding="1" cellspacing="1" style="width: 100%;">
			<tbody>
<%
	Universita uni = new Universita("Cagliari");
	for (Azienda azienda : uni.getAziende().values())
	{
%>
				<tr>
					<td><%= azienda.getRagioneSociale() %></td>
					<td><a href="<%= request.getParameter("type") %>Servlet?action=update&id=<%= azienda.getPartitaIva() %>">Modifica</a></td>
					<td><a href="<%= request.getParameter("type") %>Servlet?action=delete&id=<%= azienda.getPartitaIva() %>">Cancella</a></td>
				</tr>
<%
	}
%>
			</tbody>
		</table>
	</body>
</html>