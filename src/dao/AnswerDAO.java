package dao;

import java.util.List;

<<<<<<< HEAD
import model.Answer;
=======
import entidades.Answer;
>>>>>>> 8f6d55ee6c26bc05e99a7264373c5bda78e8d35e

public class AnswerDAO extends GenericDAO{
public Answer AnswerData;
	
	public AnswerDAO(){
	}
		public void persist(Answer entity) {
			getCurrentSession().save(entity);
		}

		public void update(Answer entity) {
			getCurrentSession().update(entity);
		}

		public Answer findById(String id) {
			Answer Answer = (Answer) getCurrentSession().get(Answer.class, id);
			return Answer; 
		}

		public void delete(Answer entity) {
			getCurrentSession().delete(entity);
		}
		public List<Answer> findAll() {
			@SuppressWarnings("unchecked")
			List<Answer> Answers = (List<Answer>) getCurrentSession().createQuery("from answer").list();
			return Answers;
		}
		public void deleteAll() {
			List<Answer> entityList = findAll();
			for (Answer entity : entityList) {
				delete(entity);
			
		}
		}
}

