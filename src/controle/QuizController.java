package controle;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Link;
import model.Quiz;
import model.QuizTracking;
import model.Subject;
import model.User;
import model.Video;
import services.LinkService;
import services.QuizService;
import services.SubjectService;
import services.VideoService;

import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;

@WebServlet(name = "QuizController", urlPatterns = {"/QuizController"})
public class QuizController extends HttpServlet {
	
	private QuizService qs;
	
	private VideoService vs;
	
	private LinkService ls;
	
	private SubjectService ss;

	private static final long serialVersionUID = 1L;
	
	/* Servlet de processamento do formulario de entrada
	 * 
	 */
	protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException {
		try{
			response.setContentType("text/html;charset=UTF-8");
			String action = request.getParameter("action");
			if(action.equals("submit")){
				String json = request.getParameter("simulado");
				JsonObject jsonObject = new JsonParser().parse(json).getAsJsonObject();
				int score = Integer.parseInt(jsonObject.get("score").getAsString());
				int quizId = Integer.parseInt(jsonObject.get("quizId").getAsString());
				int points = Integer.parseInt(jsonObject.get("points").getAsString());
				int quizSize = Integer.parseInt(jsonObject.get("size").getAsString());
				JsonArray subjectsId = jsonObject.get("wrongSubjectsId").getAsJsonArray();
				JsonArray wrongQuestionsName = jsonObject.get("wrongQuestions").getAsJsonArray();
				ArrayList<String> wrongQuestions = new ArrayList<String>();
				for (int i = 0; i < wrongQuestionsName.size(); i++) {
					wrongQuestions.add(wrongQuestionsName.get(i).getAsString());
					
				}
				ArrayList<Integer> subjects = new ArrayList<Integer>();
				ArrayList <Video> videos = new ArrayList<Video>();
				ArrayList <Link> links = new ArrayList<Link>();
				ArrayList <String> subjectsTxt = new ArrayList<String>();
				for (int i = 0, size = subjectsId.size(); i < size; i++)
			    {
					int currentSubj = subjectsId.get(i).getAsInt();
					subjects.add(currentSubj);
					List<Video> vts = vs.findVideosBySubjectId(currentSubj);
					List<Link> lts = ls.findLinksBySubjectId(currentSubj);
					videos.addAll(vts);
					links.addAll(lts);
					subjectsTxt.add((((Subject)ss.findById(String.valueOf(currentSubj))).getName()));
					
			    }
				request.getSession().setAttribute("links" , links);
				request.getSession().setAttribute("videos" , videos);
				request.getSession().setAttribute("subjectsTxt",subjectsTxt);
				request.getSession().setAttribute("wrongQuestions",wrongQuestions);
				request.getSession().setAttribute("score",score);
				request.getSession().setAttribute("points",points);
				request.getSession().setAttribute("quizSize",quizSize);
				Quiz q = qs.findById(quizId);
				User u = (User) request.getSession().getAttribute("user");
				QuizTracking qt = qs.findQuizTrackingByQuizAndUserId(u.getId(), quizId);
				if(qt == null){
					QuizTracking qtr = new QuizTracking();
					qtr.setQuiz(q);
					qtr.setUser(u);
					qtr.setScore(score);
					qtr.setQuizLevel("easy");
					qtr.setPoints(points);
					qs.persist(qtr);
				}
				else{
					qt.setScore(qt.getScore() + score);
					qt.setPoints(qt.getPoints() + points);
					qt.setQuizLevel("hard");
					qs.update(qt);
				}
				response.sendRedirect("/resultTest.jsp");
			}
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
        	this.vs = new VideoService();
        	this.ls = new LinkService();
        	this.ss = new SubjectService();
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
        	this.vs = new VideoService();
        	this.ls = new LinkService();
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
