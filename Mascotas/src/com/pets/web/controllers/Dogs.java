package com.pets.web.controllers;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.pets.web.models.Cat;
import com.pets.web.models.Dog;

/**
 * Servlet implementation class Dogs
 */
@WebServlet("/Perro")
public class Dogs extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Dogs() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String nombre = request.getParameter("nombreDog");
		String raza = request.getParameter("razaDog");
		int peso = Integer.parseInt( request.getParameter("pesoDog"));
		
		Dog perroNuevo = new Dog(nombre, raza, peso);
		request.setAttribute("perro", perroNuevo);
		RequestDispatcher view = request.getRequestDispatcher("/WEB-INF/view/dog.jsp");
		view.forward(request, response);
	}

}
