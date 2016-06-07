package dao;

import java.util.List;

<<<<<<< HEAD
import model.Question;

public class QuestionDAO extends GenericDAO{

=======
import entidades.Question;

public class QuestionDAO extends GenericDAO{
public Question QuestionData;
>>>>>>> 8f6d55ee6c26bc05e99a7264373c5bda78e8d35e
	
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

