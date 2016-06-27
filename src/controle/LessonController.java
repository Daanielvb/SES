package controle;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Question;
import model.Quiz;
import model.QuizTracking;
import model.User;
import model.VideoTracking;
import services.QuestionService;
import services.QuizService;
import services.UserService;
import services.VideoTrackingService;

@WebServlet(name = "LessonController", urlPatterns = {"/LessonController"})
public class LessonController extends HttpServlet {

	private UserService us;
	
	private QuizService qs;
	
	private QuestionService qes;
	
	private VideoTrackingService vts;

	private static final long serialVersionUID = 1L;
	
	/* Servlet de processamento do formulario de entrada
	 * 
	 */
	protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException {
		try{
			response.setContentType("text/html;charset=UTF-8");
			int lessonId = Integer.parseInt(request.getParameter("lessonId"));
			String action = request.getParameter("action");
			User u = (User)request.getSession().getAttribute("user");
			if(action.equals("question")){
				Quiz q = qs.findQuizByLessonId(lessonId);			
				QuizTracking qt = qs.findQuizTrackingByQuizAndUserId(u.getId(), q.getId());
				
				if(qt == null){
					List<Question> ques = qes.findEasyQuestionsByLessonId(lessonId);
					request.getSession().setAttribute("questions" , ques);
				}
				else {
					List<Question> ques = qes.findHardQuestionsByLessonId(lessonId);
					request.getSession().setAttribute("questions" , ques);
				}
				request.getSession().setAttribute("quiz" , q);
				request.getSession().setAttribute("qtracking", qt);
				
			}
			else if(action.equals("video")){
				List<VideoTracking> vt = vts.findByUser(u.getId());
				request.getSession().setAttribute("vtracking" , vt);
			}
			//request.getRequestDispatcher("exercicio.jsp").forward(request, response);
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
        	this.vts = new VideoTrackingService();
        	this.qes = new QuestionService();
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
        	this.vts = new VideoTrackingService();
        	this.qes = new QuestionService();
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
