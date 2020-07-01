package com.example.controllers;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.example.view.RandomNumber;

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
		// TODO Auto-generated method stub
		RequestDispatcher view = request.getRequestDispatcher("/WEB-INF/greatNumber.jsp");
		HttpSession newSesion = request.getSession();
		
		if(newSesion.getAttribute("clicker") == null) {
			newSesion.setAttribute("clicker", 0);
		}
	
		request.setAttribute("contador", newSesion.getAttribute("clicker"));
		request.setAttribute("randNum", newSesion.getAttribute("RandomNumber"));
		request.setAttribute("userNum", newSesion.getAttribute("numUser"));
		request.setAttribute("cadena", newSesion.getAttribute("cadena"));
		
		view.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession newSesion = request.getSession();
		
		int userNum = (int) Integer.parseInt(request.getParameter("userNum"));
		int contador = (int) newSesion.getAttribute("clicker")+1;
		int randNum = RandomNumber.randomNumber(1,100);
		String cadena = "";
		
		int value = Integer.compare(userNum, randNum);

		if(value == (-1)) {
			cadena = "Very Low ";
		}
		if(value == 0) {
			cadena = "You Win!";
		}
		if(value == (1)) {
			cadena = "Very High";
		}
		
		newSesion.setAttribute("clicker", contador);
		newSesion.setAttribute("RandomNumber", randNum);
		newSesion.setAttribute("numUser", userNum);
		newSesion.setAttribute("cadena", cadena);

		doGet(request, response);
	}

}
