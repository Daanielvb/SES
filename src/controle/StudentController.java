package controle;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import model.Student;
import dao.StudentsDAO;
import services.StudentService;


@WebServlet(name = "StudentController", urlPatterns = {"/StudentController"})
public class StudentController extends HttpServlet {
	
	private StudentService sc;
	private StudentsDAO sd;

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
		    if (acao.equals("saveStudent")) {
		    	saveStudent(request,response);
		    	

    }
	}
	
	
	public void saveStudent(HttpServletRequest request, HttpServletResponse response) throws SQLException, ServletException, IOException{
		String name = request.getParameter("name");
    	String email = request.getParameter("email");
    	String cpf = request.getParameter("cpf");
    	Student s = new Student(name,email,cpf);
    	this.sc.persist(s);
    	response.setHeader("Location", "/sucess.jsp");
}
	
	@Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
        	this.sc = new StudentService();
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
        	this.sc = new StudentService();
			processRequest(request, response);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
    }

    @Override
    public String getServletInfo() {
        return "Servlet de processamento de dados de estudantes";
    }
}
