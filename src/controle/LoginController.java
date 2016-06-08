package controle;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.LessonTracking;
import model.User;
import services.LessonTrackingService;
import services.UserService;
import dao.LessonTrackingDAO;
import dao.UserDAO;

@WebServlet(name = "LoginController", urlPatterns = {"/LoginController"})
public class LoginController extends HttpServlet{
		private UserService us;
		private UserDAO ud;
		private LessonTrackingService lts;
		private LessonTrackingDAO ld;

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
	        String acao = request.getParameter("action");
	        //getStudent(request,response);
	        getStudentAndLessons(request,response);
	        
			    
	    }
		
		public void getStudent(HttpServletRequest request, HttpServletResponse response) throws SQLException, ServletException, IOException{
			String email = request.getParameter("email");
	    	User u = us.findUserByEmail(email);
	    	request.setAttribute("user", u);
			request.getRequestDispatcher("index.jsp").forward(request, response);
		}
		
		
		
		public void getStudentAndLessons(HttpServletRequest request, HttpServletResponse response) throws SQLException, ServletException, IOException{
			String email = request.getParameter("email");
	    	User u = us.findUserByEmail(email);
	    	if( u != null){
	    		request.setAttribute("user", u);
	    		int userId = u.getId();
		    	List<LessonTracking> lessonTrackings = lts.findLessonTrackingByUserId(userId);
		    	request.setAttribute("lessonTrackings", lessonTrackings);
				request.getRequestDispatcher("index.jsp").forward(request, response);
	    	}
	    	else{
	    		request.setAttribute("failed", true);
	    		request.getRequestDispatcher("login.jsp").forward(request, response);
	    	}
		}
		
		@Override
	    protected void doGet(HttpServletRequest request, HttpServletResponse response)
	            throws ServletException, IOException {
	        try {
	        	this.us = new UserService();
	        	this.lts = new LessonTrackingService();
				processRequest(request, response);
			} catch (SQLException e) {
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
				processRequest(request, response);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	    }

	    @Override
	    public String getServletInfo() {
	        return "Servlet de processamento de login inicial";
	    }

	}

