<%@page import="java.util.HashMap"%>
<%@page import="com.tiscali.tirocini.model.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Pagina di gestione degli Studenti</title>
	</head>
	<body>
		<h1>Gestione Studenti</h1>
		<br/><br/><br/><br/>

		<a href="CreateStudente.jsp">Nuovo Studente</a>
		<br/><br/><br/><br/>

		<table border="1" cellpadding="1" cellspacing="1" style="width: 100%;">
			<tbody>
<%
	for (Studente studente : Universita.getInstance().getStudentiCollection())
	{
%>
				<tr>
					<td><a href="StudenteDetail.jsp?cf=<%= studente.getCf() %>"><%= studente.getNome() %> <%= studente.getCognome() %></a></td>
					<td><a href="UpdateStudente.jsp?cf=<%= studente.getCf() %>">Modifica</a></td>
					<td><a href="StudenteServlet?action=delete&cf=<%= studente.getCf() %>">Cancella</a></td>
				</tr>
<%
	}
%>
			</tbody>
		</table>
		<br><br><a href="../TirocinioWebApp/">Home</a>
	</body>
</html>