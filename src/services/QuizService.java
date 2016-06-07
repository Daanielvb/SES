package services;

import java.awt.print.Book;
import java.util.List;

import dao.QuizDAO;
import model.Quiz;

public class QuizService {
	private static QuizDAO quizDAO;

	public QuizService() {
		quizDAO = new QuizDAO();
	}

	public void persist(Quiz entity) {
		quizDAO.openCurrentSessionwithTransaction();
		quizDAO.persist(entity);
		quizDAO.closeCurrentSessionwithTransaction();
	}

	public void update(Quiz entity) {
		quizDAO.openCurrentSessionwithTransaction();
		quizDAO.update(entity);
		quizDAO.closeCurrentSessionwithTransaction();
	}

	public Quiz findById(String id) {
		quizDAO.openCurrentSession();
		Quiz quiz = quizDAO.findById(id);
		quizDAO.closeCurrentSession();
		return quiz;
	}

	public void delete(String id) {
		quizDAO.openCurrentSessionwithTransaction();
		Quiz quiz = quizDAO.findById(id);
		quizDAO.delete(quiz);
		quizDAO.closeCurrentSessionwithTransaction();
	}

	public List<Quiz> findAll() {
		quizDAO.openCurrentSession();
		List<Quiz> quizzes = quizDAO.findAll();
		quizDAO.closeCurrentSession();
		return quizzes;
	}

	public void deleteAll() {
		quizDAO.openCurrentSessionwithTransaction();
		quizDAO.deleteAll();
		quizDAO.closeCurrentSessionwithTransaction();
	}

	public QuizDAO quizDAO() {
		return quizDAO;
	}

}
