package services;

import java.util.List;

import model.Quiz;
import model.QuizTracking;
import dao.QuizDAO;

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
	
	public void persist(QuizTracking entity) {
		quizDAO.openCurrentSessionwithTransaction();
		quizDAO.persist(entity);
		quizDAO.closeCurrentSessionwithTransaction();
	}


	public void update(Quiz entity) {
		quizDAO.openCurrentSessionwithTransaction();
		quizDAO.update(entity);
		quizDAO.closeCurrentSessionwithTransaction();
	}

	public Quiz findById(int id) {
		quizDAO.openCurrentSession();
		Quiz quiz = quizDAO.findById(id);
		quizDAO.closeCurrentSession();
		return quiz;
	}

	public void delete(int id) {
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
	
	public Quiz findQuizByLessonId(int lessonId){
		quizDAO.openCurrentSession();
		Quiz quiz = quizDAO.findByLessonId(lessonId);
		quizDAO.closeCurrentSession();
		return quiz;
	}
	
	public QuizTracking findQuizTrackingByQuizAndUserId(int userId,int quizId){
		quizDAO.openCurrentSession();
		QuizTracking qt = quizDAO.findByQuizAndUser(userId,quizId);
		quizDAO.closeCurrentSession();
		return qt;
	}

	public QuizDAO quizDAO() {
		return quizDAO;
	}

}
