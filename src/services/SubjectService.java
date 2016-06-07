package services;

import java.util.List;

import dao.SubjectDAO;
<<<<<<< HEAD
import model.Subject;
=======
import entidades.Subject;
>>>>>>> 8f6d55ee6c26bc05e99a7264373c5bda78e8d35e

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
		Subject subject = subjectDAO.findById(id);
		subjectDAO.closeCurrentSession();
		return subject;
	}

	public void delete(String id) {
		subjectDAO.openCurrentSessionwithTransaction();
		Subject subject = subjectDAO.findById(id);
		subjectDAO.delete(subject);
		subjectDAO.closeCurrentSessionwithTransaction();
	}

	public List<Subject> findAll() {
		subjectDAO.openCurrentSession();
		List<Subject> subjects = subjectDAO.findAll();
		subjectDAO.closeCurrentSession();
		return subjects;
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
