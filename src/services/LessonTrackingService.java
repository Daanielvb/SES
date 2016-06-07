package services;

import java.util.List;

import model.Lesson;
import model.LessonTracking;
import dao.LessonDAO;

public class LessonTrackingService {
	private static LessonTrackingDAO lessonTrackingDAO;

	public LessonTrackingService() {
		lessonTrackingDAO = new LessonTrackingDAO();
	}

	public void persist(LessonTracking entity) {
		lessonTrackingDAO.openCurrentSessionwithTransaction();
		lessonTrackingDAO.persist(entity);
		lessonTrackingDAO.closeCurrentSessionwithTransaction();
	}

	public void update(LessonTracking entity) {
		lessonTrackingDAO.openCurrentSessionwithTransaction();
		lessonTrackingDAO.update(entity);
		lessonTrackingDAO.closeCurrentSessionwithTransaction();
	}

	public Lesson findById(String id) {
		lessonTrackingDAO.openCurrentSession();
		Lesson Lesson = lessonTrackingDAO.findById(id);
		lessonTrackingDAO.closeCurrentSession();
		return Lesson;
	}

	public void delete(String id) {
		lessonTrackingDAO.openCurrentSessionwithTransaction();
		Lesson Lesson = lessonTrackingDAO.findById(id);
		lessonTrackingDAO.delete(Lesson);
		lessonTrackingDAO.closeCurrentSessionwithTransaction();
	}

	public List<Lesson> findAll() {
		lessonTrackingDAO.openCurrentSession();
		List<Lesson> Lessons = lessonTrackingDAO.findAll();
		lessonTrackingDAO.closeCurrentSession();
		return Lessons;
	}

	public void deleteAll() {
		lessonTrackingDAO.openCurrentSessionwithTransaction();
		lessonTrackingDAO.deleteAll();
		lessonTrackingDAO.closeCurrentSessionwithTransaction();
	}

	public LessonTrackingDAO LessonTrackingDAO() {
		return lessonTrackingDAO;
	}

}
