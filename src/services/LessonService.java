package services;

import java.util.List;

import dao.LessonDAO;
import entidades.Lesson;

public class LessonService {
	private static LessonDAO lessonDAO;

	public LessonService() {
		lessonDAO = new LessonDAO();
	}

	public void persist(Lesson entity) {
		lessonDAO.openCurrentSessionwithTransaction();
		lessonDAO.persist(entity);
		lessonDAO.closeCurrentSessionwithTransaction();
	}

	public void update(Lesson entity) {
		lessonDAO.openCurrentSessionwithTransaction();
		lessonDAO.update(entity);
		lessonDAO.closeCurrentSessionwithTransaction();
	}

	public Lesson findById(String id) {
		lessonDAO.openCurrentSession();
		Lesson Lesson = lessonDAO.findById(id);
		lessonDAO.closeCurrentSession();
		return Lesson;
	}

	public void delete(String id) {
		lessonDAO.openCurrentSessionwithTransaction();
		Lesson Lesson = lessonDAO.findById(id);
		lessonDAO.delete(Lesson);
		lessonDAO.closeCurrentSessionwithTransaction();
	}

	public List<Lesson> findAll() {
		lessonDAO.openCurrentSession();
		List<Lesson> Lessons = lessonDAO.findAll();
		lessonDAO.closeCurrentSession();
		return Lessons;
	}

	public void deleteAll() {
		lessonDAO.openCurrentSessionwithTransaction();
		lessonDAO.deleteAll();
		lessonDAO.closeCurrentSessionwithTransaction();
	}

	public LessonDAO LessonDAO() {
		return lessonDAO;
	}

}
