package services;

import java.util.List;

import model.VideoTracking;
import dao.VideoTrackingDAO;


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



	public List<VideoTracking> findAll() {
		videoTrackingDAO.openCurrentSession();
		List<VideoTracking> videoTrackings = videoTrackingDAO.findAll();
		videoTrackingDAO.closeCurrentSession();
		return videoTrackings;

	}

	public void deleteAll() {
		videoTrackingDAO.openCurrentSessionwithTransaction();
		videoTrackingDAO.deleteAll();
		videoTrackingDAO.closeCurrentSessionwithTransaction();
	}
	
	public List<VideoTracking> findByUser(int userId){
		videoTrackingDAO.openCurrentSessionwithTransaction();
		List<VideoTracking> s = videoTrackingDAO.findVideoTrackingByUserId(userId);
		videoTrackingDAO.closeCurrentSession();
		return s;
	}


	public VideoTrackingDAO videoTrackingDAO() {
		return videoTrackingDAO;
	}


}

