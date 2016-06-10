package controle;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Quiz;
import model.QuizTracking;
import model.User;
import services.QuizService;
import services.UserService;

@WebServlet(name = "QuizController", urlPatterns = {"/QuizController"})
public class QuizController extends HttpServlet {

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
			int quizId = Integer.parseInt(request.getParameter("quizId"));
			float score = Float.parseFloat(request.getParameter("score"));
			String questionId = request.getParameter("questionsId");
			Quiz q = qs.findById(quizId);
			User u = (User) request.getSession().getAttribute("user");
			QuizTracking qt = qs.findQuizTrackingByQuizAndUserId(u.getId(), quizId);
			if(qt == null){
				QuizTracking qtr = new QuizTracking();
				qtr.setQuiz(q);
				qtr.setUser(u);
				qtr.setScore(score);
				qs.persist(qtr);
			}
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
        return "Servlet de processamento de quiz";
    }

}
