package com.oop.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oop.model.Video;
import com.oop.service.VideoServiceImpl;
import com.oop.service.IVideoService;

/**
 * Servlet implementation class LoginServlet
 */
public class AddVideoServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public AddVideoServlet() {
		super();
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");

		Video video = new Video();
		
		video.setName(request.getParameter("name"));
		video.setFilmCategory(request.getParameter("filmCategory"));
		video.setQuantity(request.getParameter("quantity"));
		video.setSubtitleLanguage(request.getParameter("subtitleLanguage"));
		

		IVideoService iVideoService = new VideoServiceImpl();
		iVideoService.addVideo(video);

		request.setAttribute("video", video);
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/WEB-INF/views/ListVideos.jsp");
		dispatcher.forward(request, response);
	}

}
