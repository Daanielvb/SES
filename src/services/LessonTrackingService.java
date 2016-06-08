package services;

import java.util.List;

import dao.LessonTrackingDAO;
import model.Lesson;
import model.LessonTracking;
import model.User;

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

	public LessonTracking findById(int id) {
		lessonTrackingDAO.openCurrentSession();
		LessonTracking lt = lessonTrackingDAO.findById(id);
		lessonTrackingDAO.closeCurrentSession();
		return lt;
	}

	public void delete(int id) {
		lessonTrackingDAO.openCurrentSessionwithTransaction();
		LessonTracking lt = lessonTrackingDAO.findById(id);
		lessonTrackingDAO.delete(lt);
		lessonTrackingDAO.closeCurrentSessionwithTransaction();
	}

	public List<LessonTracking> findAll() {
		lessonTrackingDAO.openCurrentSession();
		List<LessonTracking> Lessons = lessonTrackingDAO.findAll();
		lessonTrackingDAO.closeCurrentSession();
		return Lessons;
	}

	public void deleteAll() {
		lessonTrackingDAO.openCurrentSessionwithTransaction();
		lessonTrackingDAO.deleteAll();
		lessonTrackingDAO.closeCurrentSessionwithTransaction();
	}
	
	public List <LessonTracking> findLessonTrackingByUserId(int userId){
		lessonTrackingDAO.openCurrentSessionwithTransaction();
		List<LessonTracking> lts = lessonTrackingDAO.findLessonTrackingByUserId(userId);
		lessonTrackingDAO.closeCurrentSessionwithTransaction();
		return lts;
	}
	
	public void createLessonTracking(Lesson l, User u){
		lessonTrackingDAO.openCurrentSessionwithTransaction();
		lessonTrackingDAO.createLessonTracking(l, u);
		lessonTrackingDAO.closeCurrentSessionwithTransaction();
	}
	
	
	public LessonTrackingDAO LessonTrackingDAO() {
		return lessonTrackingDAO;
	}

}