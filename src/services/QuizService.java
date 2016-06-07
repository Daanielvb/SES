package services;

import java.awt.print.Book;
import java.util.List;

import dao.QuizDAO;
<<<<<<< HEAD
import model.Quiz;
=======
import entidades.Quiz;
>>>>>>> 8f6d55ee6c26bc05e99a7264373c5bda78e8d35e

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
