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
import model.QuizTracking;
import model.User;
import model.VideoTracking;
import services.LessonTrackingService;
import services.LinkService;
import services.QuizTrackingService;
import services.VideoService;
import services.VideoTrackingService;

@WebServlet(name = "StatisticsController", urlPatterns = {"/StatisticsController"})
public class StatisticsController extends HttpServlet {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private QuizTrackingService qts;
	
	private LessonTrackingService lts;
	
	private VideoTrackingService vts;
	
	private VideoService 		vs;
	
	private LinkService			ls;
	
	protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException {
		response.setContentType("text/html;charset=UTF-8");
		try{
		User u = (User) request.getSession().getAttribute("user");
		List<LessonTracking> lessonTrackings = lts.findLessonTrackingByUserId(u.getId());
		List<QuizTracking> quizTrackings = qts.findQuizTrackingByUserID(u.getId());
		List<VideoTracking> videoTrackings = vts.findByUser(u.getId());
		List <Double> avgUserScores = qts.findAvaregeScoreAndPointsByUserID(u.getId());
		List<Double> avgLessonScores = qts.findGeneralAvaregeScoreAndPoints();
		//  <jsp:include page="/latest_products.jsp" /> no jsp
		request.getSession().setAttribute("lessonTrackings",lessonTrackings );
		request.getSession().setAttribute("quizTrackings", quizTrackings);
		request.getSession().setAttribute("videoTrackings", videoTrackings);
		request.getSession().setAttribute("avgUserScores", avgUserScores);
		request.getSession().setAttribute("avgLessonScores", avgLessonScores);
		}
		catch (Exception e) {
			e.printStackTrace();
		}
        	    
    }
	
	
	@Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
        	
        	this.qts = new QuizTrackingService();
        	this.lts = new LessonTrackingService();
        	this.vs = new VideoService();
        	this.ls = new LinkService();
        	this.vts = new VideoTrackingService();
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
        	this.qts = new QuizTrackingService();
        	this.lts = new LessonTrackingService();
        	this.vs = new VideoService();
        	this.ls = new LinkService();
        	this.vts = new VideoTrackingService();
			processRequest(request, response);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
    }
}
