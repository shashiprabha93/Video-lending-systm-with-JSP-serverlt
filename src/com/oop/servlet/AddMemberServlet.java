package com.oop.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.oop.model.Member;

import com.oop.service.IMemberService;
import com.oop.service.MemberServiceImpl;

public class AddMemberServlet extends HttpServlet{
	
	
	private static final long serialVersionUID = 1L;

	
	public AddMemberServlet() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");

		Member member = new Member();
		
		member.setFirstName(request.getParameter("firstName"));
		member.setLastName(request.getParameter("lastName"));
		member.setAddress(request.getParameter("address"));
		member.setCity(request.getParameter("city"));
		member.setEmail(request.getParameter("email"));
		member.setPhoneNo(request.getParameter("phoneNo"));
		/*member.setCity(request.getParameter("city"));*/
		

		IMemberService iMemberService = new MemberServiceImpl();
		iMemberService.addMember(member);

		request.setAttribute("member", member);
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/WEB-INF/views/ListMembers.jsp");
		dispatcher.forward(request, response);
	}

}
