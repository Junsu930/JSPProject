package edu.kh.jsp.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/join")
public class JoinServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		req.setCharacterEncoding("UTF-8");
		
		String[] pw = req.getParameterValues("inputPw");
		
		boolean result = true;
		
		if(pw[0].equals(pw[1])) {
			result = true;
		}else {
			result= false;
		}
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/join.jsp");
		
		req.setAttribute("res", result);
		
		dispatcher.forward(req, resp);
	
	}
}
