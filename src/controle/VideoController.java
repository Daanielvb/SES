package controle;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.User;
import model.Video;
import model.VideoTracking;
import services.LessonService;
import services.LessonTrackingService;
import services.UserService;
import services.VideoService;
import services.VideoTrackingService;

@WebServlet(name = "MaterialController", urlPatterns = {"/MaterialController"})
public class VideoController extends HttpServlet {

	private UserService us;
	private VideoTrackingService vts;

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
		Long videoId = Long.parseLong(request.getParameter("videoId"));
		User u = (User) request.getSession().getAttribute("user");
		String linkId = request.getParameter("linkId");
		request.getParameter("action");
		if (acao.equals("video")){
			createVideoTracking(videoId, u);
		}
		else{
//			createLinkTracking(linkId,userId);
		}
		
		try{
			
		}
		catch (Exception e) {
			e.printStackTrace();
		}
        	    
    }
	
	public void createVideoTracking(Long videoId, User u){
		//VideoTrackingService vts = new VideoTrackingService();
		VideoService vs = new VideoService();
		Video v = vs.findById(videoId);
		VideoTracking vt = vts.createVideoTracking(v, u);
		if(vt != null)
			vts.persist(vt);
	}
	
	public void createLinkTracking(String linkId, String userId){
//		LinkTrackingService lts = new LinkTrackingService();
//		LinkService ls = new LinkService();
//		Link l = ls.findById(linkId);
//		User u = us.findUserById(userId);
//		
//		LinkTracking lt = new LinkTracking();
//		lt.setLink(l);
//		lt.setUser(u);
//		
//		lts.persist(lt);
	}
	
	
	@Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {        	
        	this.us = new UserService();
        	this.vts = new VideoTrackingService();
    
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
        	this.vts = new VideoTrackingService();
			processRequest(request, response);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
    }

    @Override
    public String getServletInfo() {
        return "Servlet de processamento da home";
    }

}
