package services;

import java.awt.print.Book;
import java.util.List;

import dao.StudentsDAO;
import entidades.Student;

public class StudentService {
	private static StudentsDAO studentDAO;

	public StudentService() {
		studentDAO = new StudentsDAO();
	}

	public void persist(Student entity) {
		studentDAO.openCurrentSessionwithTransaction();
		studentDAO.persist(entity);
		studentDAO.closeCurrentSessionwithTransaction();
	}

	public void update(Student entity) {
		studentDAO.openCurrentSessionwithTransaction();
		studentDAO.update(entity);
		studentDAO.closeCurrentSessionwithTransaction();
	}

	public Student findById(String id) {
		studentDAO.openCurrentSession();
		Student student = studentDAO.findById(id);
		studentDAO.closeCurrentSession();
		return student;
	}

	public void delete(String id) {
		studentDAO.openCurrentSessionwithTransaction();
		Student student = studentDAO.findById(id);
		studentDAO.delete(student);
		studentDAO.closeCurrentSessionwithTransaction();
	}

	public List<Student> findAll() {
		studentDAO.openCurrentSession();
		List<Student> students = studentDAO.findAll();
		studentDAO.closeCurrentSession();
		return students;
	}

	public void deleteAll() {
		studentDAO.openCurrentSessionwithTransaction();
		studentDAO.deleteAll();
		studentDAO.closeCurrentSessionwithTransaction();
	}

	public StudentsDAO studentDAO() {
		return studentDAO;
	}

}
