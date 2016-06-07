package dao;

import java.util.List;


import model.Question;

public class QuestionDAO extends GenericDAO{


	
	public QuestionDAO(){
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
}

