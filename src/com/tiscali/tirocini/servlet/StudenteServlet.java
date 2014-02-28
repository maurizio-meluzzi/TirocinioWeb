package com.tiscali.tirocini.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.tiscali.tirocini.exceptions.DuplicatedEntityException;
import com.tiscali.tirocini.exceptions.EntityNotFoundException;
import com.tiscali.tirocini.model.*;


/**
 * Servlet implementation class StudenteServlet
 */
@WebServlet("/StudenteServlet")
public class StudenteServlet extends HttpServlet
{
	private static final long serialVersionUID = 1L;
	private HttpSession session;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public StudenteServlet()
    {
        super();
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		session = request.getSession();
		
		// String action = request.getHeader("Referer").split("/")[4].split("\\.")[0];
		String action = request.getParameter("action");

		if (action.equals("create"))
		{
			createStudente(request, response);
		}
		else if (action.equals("read"))
		{
			readStudente(request, response);
		}
		else if (action.equals("update"))
		{
			updateStudente(request, response);
		}
		else if (action.equals("delete"))
		{
			deleteStudente(request, response);
		}
	}



	private void createStudente(HttpServletRequest request, HttpServletResponse response)
	{
		String nome = request.getParameter("nome");
		String cognome = request.getParameter("cognome");
		String cf = request.getParameter("cf");

		try
		{
			Studente studente = Universita.getInstance().createStudente(nome, cognome, cf);
			session.setAttribute("studente", studente);
			response.sendRedirect(response.encodeRedirectURL("StudenteDetail.jsp") );
		}
		catch (DuplicatedEntityException e)
		{
			e.printStackTrace();
			// TODO sbagliato. deve fare il forward verso la pagina di errore
		}
		catch (IOException e)
		{
			e.printStackTrace();
			// TODO sbagliato. deve fare il forward verso la pagina di errore
		}
	}


	private void readStudente(HttpServletRequest request, HttpServletResponse response)
	{
		String cf = request.getParameter("cf");

		try
		{
			Studente studente = Universita.getInstance().getStudente(cf);
			session.setAttribute("studente", studente);
			response.sendRedirect(response.encodeRedirectURL("StudenteDetail.jsp") );
		}
		catch (EntityNotFoundException e)
		{
			e.printStackTrace();
			// TODO sbagliato. deve fare il forward verso la pagina di errore
		}
		catch (IOException e)
		{
			e.printStackTrace();
			// TODO sbagliato. deve fare il forward verso la pagina di errore
		}
	}

	private void updateStudente(HttpServletRequest request, HttpServletResponse response)
	{
		String nome = request.getParameter("nome");
		String cognome = request.getParameter("cognome");
		String cf = request.getParameter("cf");

		try
		{
			Studente studente = Universita.getInstance().updateStudente(cf, nome, cognome);
			session.setAttribute("studente", studente);
			response.sendRedirect(response.encodeRedirectURL("StudenteDetail.jsp") );
		}
		catch (EntityNotFoundException e)
		{
			e.printStackTrace();
			// TODO sbagliato. deve fare il forward verso la pagina di errore
		}
		catch (IOException e)
		{
			e.printStackTrace();
			// TODO sbagliato. deve fare il forward verso la pagina di errore
		}
	}

	private void deleteStudente(HttpServletRequest request, HttpServletResponse response)
	{
		String cf = request.getParameter("cf");

		try
		{
			Universita.getInstance().deleteStudente(cf);
			response.sendRedirect(response.encodeRedirectURL("StudentiHome.jsp") );
		}
		catch (EntityNotFoundException e)
		{
			e.printStackTrace();
			// TODO sbagliato. deve fare il forward verso la pagina di errore
		}
		catch (IOException e)
		{
			e.printStackTrace();
			// TODO sbagliato. deve fare il forward verso la pagina di errore
		}
	}
}
