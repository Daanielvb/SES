package controle;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Lesson;
import model.User;
import services.LessonService;
import services.LessonTrackingService;
import services.UserService;
import dao.UserDAO;

@WebServlet(name = "HomeController", urlPatterns = {"/HomeController"})
public class HomeController extends HttpServlet {

	private UserService us;
	private LessonTrackingService lts;
	private LessonService ls;
	//private LessonTrackingDAO ld;

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	/* Servlet de processamento do formulario de entrada
	 * 
	 */
	protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException {
		response.setContentType("text/html;charset=UTF-8");
		try{
		String lessonId = request.getParameter("lessonId");
		Lesson l = ls.findById(Integer.valueOf(lessonId));
		User u = (User) request.getSession().getAttribute("user");
		lts.createLessonTracking(l, u);
		response.getWriter().write("Success Data");
		}
		catch (Exception e) {
			e.printStackTrace();
		}
        	    
    }
	
	@Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
        	
        	this.us = new UserService();
        	this.lts = new LessonTrackingService();
        	this.ls = new LessonService();
			processRequest(request, response);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {   	
        	this.us = new UserService();
        	this.lts = new LessonTrackingService();
        	this.ls = new LessonService();
			processRequest(request, response);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
    }

    @Override
    public String getServletInfo() {
        return "Servlet de processamento da home";
    }

}
