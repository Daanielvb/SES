package services;

import java.util.List;

<<<<<<< HEAD
import model.VideoTracking;
import dao.VideoTrackingDAO;
=======
import dao.VideoTrackingDAO;
import entidades.VideoTracking;
>>>>>>> 8f6d55ee6c26bc05e99a7264373c5bda78e8d35e

public class VideoTrackingService {
	private static VideoTrackingDAO videoTrackingDAO;

	public VideoTrackingService() {
		videoTrackingDAO = new VideoTrackingDAO();
	}

	public void persist(VideoTracking entity) {
		videoTrackingDAO.openCurrentSessionwithTransaction();
		videoTrackingDAO.persist(entity);
		videoTrackingDAO.closeCurrentSessionwithTransaction();
	}

	public void update(VideoTracking entity) {
		videoTrackingDAO.openCurrentSessionwithTransaction();
		videoTrackingDAO.update(entity);
		videoTrackingDAO.closeCurrentSessionwithTransaction();
	}

	public VideoTracking findById(String id) {
		videoTrackingDAO.openCurrentSession();
<<<<<<< HEAD
		VideoTracking vTrackings = videoTrackingDAO.findById(id);
		videoTrackingDAO.closeCurrentSession();
		return vTrackings;
=======
		VideoTracking videoTracking = videoTrackingDAO.findById(id);
		videoTrackingDAO.closeCurrentSession();
		return videoTracking;
>>>>>>> 8f6d55ee6c26bc05e99a7264373c5bda78e8d35e
	}

	public void delete(String id) {
		videoTrackingDAO.openCurrentSessionwithTransaction();
<<<<<<< HEAD
		VideoTracking student = videoTrackingDAO.findById(id);
		videoTrackingDAO.delete(student);
=======
		VideoTracking videoTracking = videoTrackingDAO.findById(id);
		videoTrackingDAO.delete(videoTracking);
>>>>>>> 8f6d55ee6c26bc05e99a7264373c5bda78e8d35e
		videoTrackingDAO.closeCurrentSessionwithTransaction();
	}

	public List<VideoTracking> findAll() {
		videoTrackingDAO.openCurrentSession();
<<<<<<< HEAD
		List<VideoTracking> vTrackings = videoTrackingDAO.findAll();
		videoTrackingDAO.closeCurrentSession();
		return vTrackings;
=======
		List<VideoTracking> videoTrackings = videoTrackingDAO.findAll();
		videoTrackingDAO.closeCurrentSession();
		return videoTrackings;
>>>>>>> 8f6d55ee6c26bc05e99a7264373c5bda78e8d35e
	}

	public void deleteAll() {
		videoTrackingDAO.openCurrentSessionwithTransaction();
		videoTrackingDAO.deleteAll();
		videoTrackingDAO.closeCurrentSessionwithTransaction();
	}
<<<<<<< HEAD
	
	public List<VideoTracking> findByUser(int userId){
		videoTrackingDAO.openCurrentSessionwithTransaction();
		List<VideoTracking> s = videoTrackingDAO.findVideoTrackingByUserId(userId);
		videoTrackingDAO.closeCurrentSession();
		return s;
	}
=======

>>>>>>> 8f6d55ee6c26bc05e99a7264373c5bda78e8d35e
	public VideoTrackingDAO videoTrackingDAO() {
		return videoTrackingDAO;
	}

<<<<<<< HEAD
}
=======
}
>>>>>>> 8f6d55ee6c26bc05e99a7264373c5bda78e8d35e
