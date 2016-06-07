package dao;

import java.util.List;


import model.Quiz;

public class QuizDAO extends GenericDAO{

	public QuizDAO(){
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
}
