package controle;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.LessonTrackingDAO;
import dao.UserDAO;
import model.LessonTracking;
import model.User;
import services.LessonTrackingService;
import services.UserService;

@WebServlet(name = "LoginController", urlPatterns = {"/LoginController"})
public class LoginController extends HttpServlet{
		private UserService us;
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
			String action = request.getParameter("action");
			if(action.equals("login"))
				getStudentAndLessons(request,response);
			else{
				registerStudentAndLog(request,response);
			}
	        
	        
			    
	    }
		
		public void getStudent(HttpServletRequest request, HttpServletResponse response) throws SQLException, ServletException, IOException{
			String email = request.getParameter("email");
	    	User u = us.findUserByEmail(email);
	    	request.setAttribute("user", u);
			request.getRequestDispatcher("home.jsp").forward(request, response);
		}
		
		public void registerStudentAndLog(HttpServletRequest request, HttpServletResponse response) throws SQLException, ServletException, IOException{
			String email = request.getParameter("email");
			String name = request.getParameter("name");
			String cpf = request.getParameter("cpf");
			User u = us.findUserByEmail(email);
	    	if( u == null){
	    		User usr = new User();
	    		usr.setName(name);
	    		usr.setEmail(email);
	    		usr.setCpf(cpf);
	    		us.persist(usr);
	    		request.getSession().setAttribute("user", us.findUserByEmail(email));
	    		request.getRequestDispatcher("home.jsp").forward(request, response);
	    	}
	    	else{
	    		request.getSession().setAttribute("user", u);
				request.getRequestDispatcher("home.jsp").forward(request, response);
	    	}
		}
		
		
		
		public void getStudentAndLessons(HttpServletRequest request, HttpServletResponse response) throws SQLException, ServletException, IOException{
			String email = request.getParameter("email");
			User u = us.findUserByEmail(email);
	    	if( u != null){
	    		//request.setAttribute("user", u);
	    		request.getSession().setAttribute("user", u);
	    		int userId = u.getId();
		    	List<LessonTracking> lessonTrackings = lts.findLessonTrackingByUserId(userId);
		    	request.getSession().setAttribute("lessonTrackings", lessonTrackings);
		    	//response.sendRedirect("home.jsp");
		    	//request.getRequestDispatcher("home.jsp").forward(request, response);

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

