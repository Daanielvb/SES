package services;

import java.util.List;

import dao.QuestionDAO;
<<<<<<< HEAD
import model.Question;
=======
import entidades.Question;
>>>>>>> 8f6d55ee6c26bc05e99a7264373c5bda78e8d35e

public class QuestionService {
	private static QuestionDAO questionDAO;

	public QuestionService() {
		questionDAO = new QuestionDAO();
	}

	public void persist(Question entity) {
		questionDAO.openCurrentSessionwithTransaction();
		questionDAO.persist(entity);
		questionDAO.closeCurrentSessionwithTransaction();
	}

	public void update(Question entity) {
		questionDAO.openCurrentSessionwithTransaction();
		questionDAO.update(entity);
		questionDAO.closeCurrentSessionwithTransaction();
	}

	public Question findById(String id) {
		questionDAO.openCurrentSession();
		Question Question = questionDAO.findById(id);
		questionDAO.closeCurrentSession();
		return Question;
	}

	public void delete(String id) {
		questionDAO.openCurrentSessionwithTransaction();
		Question Question = questionDAO.findById(id);
		questionDAO.delete(Question);
		questionDAO.closeCurrentSessionwithTransaction();
	}

	public List<Question> findAll() {
		questionDAO.openCurrentSession();
		List<Question> Question = questionDAO.findAll();
		questionDAO.closeCurrentSession();
		return Question;
	}

	public void deleteAll() {
		questionDAO.openCurrentSessionwithTransaction();
		questionDAO.deleteAll();
		questionDAO.closeCurrentSessionwithTransaction();
	}

	public QuestionDAO QuestionDAO() {
		return questionDAO;
	}

}
