package com.javalec.ex;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class S0202_01
 */
@WebServlet("/S01")
public class S0202_01 extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRemoteAddr();
		String uri = request.getRequestURI();
		String context = request.getContextPath();
		String file_name = uri.substring(context.length());
		if(file_name.equals("/S01")) {
			System.out.println("S01페이지로 이동");
			
		}else if(file_name.equals("/a.jsp")) {
			System.out.println("a.jsp페이지로 이동시켜줌");
		}
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}

}
