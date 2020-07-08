package com.example.web.controllers;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.example.web.model.Roster;
import com.example.web.model.Team;

/**
 * Servlet implementation class Teams
 */
@WebServlet("/Teams")
public class Teams extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Teams() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		RequestDispatcher view = request.getRequestDispatcher("/WEB-INF/Teams.jsp");
		
		getActionHandler(request.getParameter("action"),request);
		view.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		postActionHandler(request.getParameter("action"),request);
		
		response.sendRedirect("Home");

	}
	public void postActionHandler(String action,HttpServletRequest request) {
		if(action.equals("add_team")){
			String name = request.getParameter("team_name");
			addTeam(name,request);
		}
		if(action.equals("delete_team")){
			int id = Integer.parseInt(request.getParameter("id"));
			deleteTeam(id, request);
			System.out.println("borrando team "+id);
		}
	}
	public void addTeam(String name,HttpServletRequest request){
		HttpSession newSesion = request.getSession();
		Roster roster = (Roster)newSesion.getAttribute("roster");
		roster.newTeam(name);
		newSesion.setAttribute("roster", roster);
	}
	public void deleteTeam(int index,HttpServletRequest request) {
		HttpSession newSesion = request.getSession();
		Roster roster = (Roster)newSesion.getAttribute("roster");
		roster.deleteTeam(index);
		newSesion.setAttribute("roster", roster);
	}
	public void getActionHandler(String action,HttpServletRequest request ){
		HttpSession newSesion = request.getSession();
		if (action.equals("view_team")) {
			int id = Integer.parseInt(request.getParameter("id"));
			Roster roster = (Roster)newSesion.getAttribute("roster");
			request.setAttribute("team",roster.getTeam(id));
			request.setAttribute("id", id);
			newSesion.setAttribute("lastTeam", id);
		}
		request.setAttribute("action", action);
	}

}
