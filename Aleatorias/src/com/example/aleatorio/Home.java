package com.example.aleatorio;

import java.io.IOException;
import java.util.Date;
import java.util.Random;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Home
 */
@WebServlet("/Home")
public class Home extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Home() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher view = request.getRequestDispatcher("/WEB-INF/aleatorio.jsp");
		HttpSession newSesion = request.getSession();
		
		if (newSesion.getAttribute("clicker") == null) {
			newSesion.setAttribute("palabra", "");
			newSesion.setAttribute("clicker", 0);
		}
		request.setAttribute("palabra", newSesion.getAttribute("palabra"));
		request.setAttribute("date", null);
		request.setAttribute("contador", newSesion.getAttribute("clicker"));
		view.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession newSesion = request.getSession();
		
		Date fecha = new Date();
		
		int contador = (int) newSesion.getAttribute("clicker")+1;

		newSesion.setAttribute("palabra", generateRandomWord(10));
		newSesion.setAttribute("date", fecha);
		newSesion.setAttribute("clicker", contador);
		

		doGet(request, response);
	}
	
	protected String generateRandomWord(int wordLength) {
	       Random r = new Random(); 
	       StringBuilder sb = new StringBuilder(wordLength);
	       for(int i = 0; i < wordLength; i++) { 
	           char tmp = (char) ('a' + r.nextInt('z' - 'a')); 
	           sb.append(tmp);
	       }
	       return sb.toString();
	     
	}
}
