package testes;

import java.sql.SQLException;

import services.StudentService;
import entidades.Student;
import entidades.StudentsDAO;

public class TestaDAO {
	public static void main(String[] args) throws SQLException {
		Student s = new Student("mike","912312312","email");
		StudentsDAO sd = new StudentsDAO();
		StudentService sv = new StudentService();
		sv.persist(s);


		
		

	}
}
