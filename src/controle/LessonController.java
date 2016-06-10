package controle;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Quiz;
import model.User;
import model.Video;
import model.VideoTracking;
import services.QuizService;
import services.UserService;
import services.VideoService;
import services.VideoTrackingService;

@WebServlet(name = "LessonController", urlPatterns = {"/LessonController"})
public class LessonController extends HttpServlet {

	private UserService us;
	
	private QuizService qs;

	private static final long serialVersionUID = 1L;
	
	/* Servlet de processamento do formulario de entrada
	 * 
	 */
	protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException {
		try{
			response.setContentType("text/html;charset=UTF-8");
			int lessonId = Integer.parseInt(request.getParameter("lessonId"));
			Quiz q = qs.findQuizByLessonId(lessonId);
			request.getSession().setAttribute("quiz" , q);
			request.getSession().setAttribute("questions" , q.getQuestions());
			request.getRequestDispatcher("exercicio.jsp").forward(request, response);
			//return response.setStatus(HttpServletResponse.SC_ACCEPTED);
		}
		catch (Exception e) {
			e.printStackTrace();
		}
        	    
    }

	
	@Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {        	
        	this.qs = new QuizService();
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
        	this.qs = new QuizService();
			processRequest(request, response);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
    }

    @Override
    public String getServletInfo() {
        return "Servlet de processamento da lesson";
    }

}
