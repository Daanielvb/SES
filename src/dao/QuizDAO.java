package dao;

import java.util.List;

import model.Quiz;
import model.QuizTracking;

import org.hibernate.Query;

public class QuizDAO extends GenericDAO {

	public QuizDAO() {
	}

	public void persist(Quiz entity) {
		getCurrentSession().save(entity);
	}
	
	public void persist(QuizTracking entity) {
		getCurrentSession().save(entity);
	}

	public void update(Quiz entity) {
		getCurrentSession().update(entity);
	}

	public Quiz findById(int id) {
		Quiz Quiz = (Quiz) getCurrentSession().get(Quiz.class, id);
		return Quiz;
	}

	public void delete(Quiz entity) {
		getCurrentSession().delete(entity);
	}

	public List<Quiz> findAll() {
		@SuppressWarnings("unchecked")
		List<Quiz> Quizzes = (List<Quiz>) getCurrentSession().createQuery("from quiz").list();
		return Quizzes;
	}

	public void deleteAll() {
		List<Quiz> entityList = findAll();
		for (Quiz entity : entityList) {
			delete(entity);

		}
	}

	public Quiz findByLessonId(int lessonId) {
		try {
			Query q = getCurrentSession().createQuery("select q from Quiz q where q.lesson.id =:lessonId");
			q.setParameter("lessonId", lessonId);
			List<Quiz> list = q.list();
			if (list != null && !list.isEmpty()){
				return (Quiz) list.get(0);
			}
			else{
				return null;
			}
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	public QuizTracking findByQuizAndUser(int userId, int quizId) {
		try {
			Query q = getCurrentSession().createQuery("select qt from QuizTracking qt"
					+ " where qt.user.id =:userId AND qt.quiz.id =:quizId");
			q.setParameter("userId", userId);
			q.setParameter("quizId", quizId);
			List<QuizTracking> list = q.list();
			if (list != null && !list.isEmpty()){
				return (QuizTracking) list.get(0);
			}
			else{
				return null;
			}
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
}
