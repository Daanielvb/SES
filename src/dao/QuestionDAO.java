package dao;

import java.util.List;

import org.hibernate.Query;

import model.Question;
import model.Quiz;

public class QuestionDAO extends GenericDAO {

	public QuestionDAO() {
	}

	public void persist(Question entity) {
		getCurrentSession().save(entity);
	}

	public void update(Question entity) {
		getCurrentSession().update(entity);
	}

	public Question findById(String id) {
		Question Question = (Question) getCurrentSession().get(Question.class, id);
		return Question;
	}

	public void delete(Question entity) {
		getCurrentSession().delete(entity);
	}

	public List<Question> findAll() {
		@SuppressWarnings("unchecked")
		List<Question> Questions = (List<Question>) getCurrentSession().createQuery("from question").list();
		return Questions;
	}

	public void deleteAll() {
		List<Question> entityList = findAll();
		for (Question entity : entityList) {
			delete(entity);

		}
	}
	
	public List<Question> findEasyQuestionsByLessonId(int lessonId){
		try {
			Query q = getCurrentSession().createQuery("select qe from Question qe "
					+ "inner join fetch qe.quiz q "
					+ "where q.lesson.id =:lessonId order by qe.difficulty ASC");
			q.setParameter("lessonId", lessonId);
			q.setMaxResults(8);
			List<Question> list = q.list();
			if (list != null && !list.isEmpty()){
				return list;
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
	
	public List<Question> findHardQuestionsByLessonId(int lessonId){
		try {
			Query q = getCurrentSession().createQuery("select qe from Question qe "
					+ "inner join fetch qe.quiz q "
					+ "where q.lesson.id =:lessonId order by qe.difficulty DESC");
			q.setParameter("lessonId", lessonId);
			q.setMaxResults(7);
			List<Question> list = q.list();
			if (list != null && !list.isEmpty()){
				return list;
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
