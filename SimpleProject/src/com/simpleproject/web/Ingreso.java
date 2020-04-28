package com.simpleproject.web;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Home
 */
@WebServlet("/Ingreso")
public class Ingreso extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Ingreso() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String userName = request.getParameter("name");
		String userLang = request.getParameter("lang");
		String userCity = request.getParameter("city");
        
        if(userName == null) {
        	userName = "Unknown";
        }
        if(userLang== null) {
        	userLang = "Unknown";
        }
        if(userCity == null) {
        	userCity = "Unknown";
        }
        
		response.setContentType("text/html");
        // writes the response
        PrintWriter out = response.getWriter();
        out.write("<h1>Welcome "+userName+"</h1>");
        out.write("<h3>Your favorite language is: "+userLang+"</h3>");
        out.write("<h3>Your hometown is: "+userCity+"</h3>");
	}
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
