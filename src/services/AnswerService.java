package services;

import java.util.List;

import dao.AnswerDAO;
import entidades.Answer;

public class AnswerService {
	private static AnswerDAO answerDAO;

	public AnswerService() {
		answerDAO = new AnswerDAO();
	}

	public void persist(Answer entity) {
		answerDAO.openCurrentSessionwithTransaction();
		answerDAO.persist(entity);
		answerDAO.closeCurrentSessionwithTransaction();
	}

	public void update(Answer entity) {
		answerDAO.openCurrentSessionwithTransaction();
		answerDAO.update(entity);
		answerDAO.closeCurrentSessionwithTransaction();
	}

	public Answer findById(String id) {
		answerDAO.openCurrentSession();
		Answer answer = answerDAO.findById(id);
		answerDAO.closeCurrentSession();
		return answer;
	}

	public void delete(String id) {
		answerDAO.openCurrentSessionwithTransaction();
		Answer answer = answerDAO.findById(id);
		answerDAO.delete(answer);
		answerDAO.closeCurrentSessionwithTransaction();
	}

	public List<Answer> findAll() {
		answerDAO.openCurrentSession();
		List<Answer> answers = answerDAO.findAll();
		answerDAO.closeCurrentSession();
		return answers;
	}

	public void deleteAll() {
		answerDAO.openCurrentSessionwithTransaction();
		answerDAO.deleteAll();
		answerDAO.closeCurrentSessionwithTransaction();
	}

	public AnswerDAO answerDAO() {
		return answerDAO;
	}

}
