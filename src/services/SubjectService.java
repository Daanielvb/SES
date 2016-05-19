package services;

import java.awt.print.Book;
import java.util.List;

import entidades.Subject;
import entidades.SubjectDAO;

public class SubjectService {
	private static SubjectDAO subjectDAO;

	public SubjectService() {
		subjectDAO = new SubjectDAO();
	}

	public void persist(Subject entity) {
		subjectDAO.openCurrentSessionwithTransaction();
		subjectDAO.persist(entity);
		subjectDAO.closeCurrentSessionwithTransaction();
	}

	public void update(Subject entity) {
		subjectDAO.openCurrentSessionwithTransaction();
		subjectDAO.update(entity);
		subjectDAO.closeCurrentSessionwithTransaction();
	}

	public Subject findById(String id) {
		subjectDAO.openCurrentSession();
		Subject student = subjectDAO.findById(id);
		subjectDAO.closeCurrentSession();
		return student;
	}

	public void delete(String id) {
		subjectDAO.openCurrentSessionwithTransaction();
		Subject student = subjectDAO.findById(id);
		subjectDAO.delete(student);
		subjectDAO.closeCurrentSessionwithTransaction();
	}

	public List<Subject> findAll() {
		subjectDAO.openCurrentSession();
		List<Subject> students = subjectDAO.findAll();
		subjectDAO.closeCurrentSession();
		return students;
	}

	public void deleteAll() {
		subjectDAO.openCurrentSessionwithTransaction();
		subjectDAO.deleteAll();
		subjectDAO.closeCurrentSessionwithTransaction();
	}

	public SubjectDAO subjectDAO() {
		return subjectDAO;
	}

}
