package com.tiscali.tirocini.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.StringTokenizer;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.tiscali.tirocini.exceptions.DuplicatedEntityException;
import com.tiscali.tirocini.model.Universita;

/**
 * Servlet implementation class studenteServlet
 */
@WebServlet("/studenteServlet")
public class studenteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public studenteServlet() {
        super();
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action = request.getHeader("Referer").split("/")[4].split("\\.")[0];
		
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
		
		Universita universita = new Universita("Cagliari");
		try
		{
			universita.createStudente(nome, cognome, cf);
		}
		catch (DuplicatedEntityException e)
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

	private void readStudente(HttpServletRequest request, HttpServletResponse response)
	{
		// TODO Auto-generated method stub
		
	}

	private void updateStudente(HttpServletRequest request, HttpServletResponse response)
	{
		// TODO Auto-generated method stub
		
	}

	private void deleteStudente(HttpServletRequest request, HttpServletResponse response)
	{
		// TODO Auto-generated method stub
		
	}
}
