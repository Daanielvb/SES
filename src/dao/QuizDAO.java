package dao;

import java.util.List;

import model.Quiz;
import model.VideoTracking;

import org.hibernate.Query;

public class QuizDAO extends GenericDAO {

	public QuizDAO() {
	}

	public void persist(Quiz entity) {
		getCurrentSession().save(entity);
	}

	public void update(Quiz entity) {
		getCurrentSession().update(entity);
	}

	public Quiz findById(String id) {
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
}
