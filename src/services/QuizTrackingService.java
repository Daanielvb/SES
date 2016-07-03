package services;

import java.util.List;

import model.QuizTracking;
import dao.QuizTrackingDAO;
import dao.QuizTrackingDAO;

public class QuizTrackingService {
	private static QuizTrackingDAO quizTrackingDAO;

	public QuizTrackingService() {
		quizTrackingDAO = new QuizTrackingDAO();
	}

	public void persist(QuizTracking entity) {
		quizTrackingDAO.openCurrentSessionwithTransaction();
		quizTrackingDAO.persist(entity);
		quizTrackingDAO.closeCurrentSessionwithTransaction();
	}

	public void update(QuizTracking entity) {
		quizTrackingDAO.openCurrentSessionwithTransaction();
		quizTrackingDAO.update(entity);
		quizTrackingDAO.closeCurrentSessionwithTransaction();
	}

	public QuizTracking findById(int id) {
		quizTrackingDAO.openCurrentSession();
		QuizTracking QuizTracking = quizTrackingDAO.findById(id);
		quizTrackingDAO.closeCurrentSession();
		return QuizTracking;
	}

	public void delete(int id) {
		quizTrackingDAO.openCurrentSessionwithTransaction();
		QuizTracking QuizTracking = quizTrackingDAO.findById(id);
		quizTrackingDAO.delete(QuizTracking);
		quizTrackingDAO.closeCurrentSessionwithTransaction();
	}

	public List<QuizTracking> findAll() {
		quizTrackingDAO.openCurrentSession();
		List<QuizTracking> QuizTracking = quizTrackingDAO.findAll();
		quizTrackingDAO.closeCurrentSession();
		return QuizTracking;
	}

	public void deleteAll() {
		quizTrackingDAO.openCurrentSessionwithTransaction();
		quizTrackingDAO.deleteAll();
		quizTrackingDAO.closeCurrentSessionwithTransaction();
	}
	

	public QuizTrackingDAO QuizTrackingDAO() {
		return quizTrackingDAO;
	}
	
	public List<Double> findAvaregeScoreAndPointsByLessonId(int lessonId){
		quizTrackingDAO.openCurrentSession();
		List<Double> result = quizTrackingDAO.findAvaregeScoreAndPointsByLessonId(lessonId);
		quizTrackingDAO.closeCurrentSession();
		return result;
	}
	
	public List<Double> findAvaregeScoreAndPointsByUserID(int userId){
		quizTrackingDAO.openCurrentSession();
		List<Double> result = quizTrackingDAO.findAvaregeScoreAndPointsByUserID(userId);
		quizTrackingDAO.closeCurrentSession();
		return result;
	}
	
	public List<QuizTracking> findQuizTrackingByUserID(int userId){
		quizTrackingDAO.openCurrentSession();
		List<QuizTracking> result = quizTrackingDAO.findQuizTrackingByUserID(userId);
		quizTrackingDAO.closeCurrentSession();
		return result;
	}
	

}
