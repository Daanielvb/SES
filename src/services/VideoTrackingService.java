package services;

import java.util.List;

import dao.VideoTrackingDAO;
import entidades.VideoTracking;

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
		VideoTracking videoTracking = videoTrackingDAO.findById(id);
		videoTrackingDAO.closeCurrentSession();
		return videoTracking;
	}

	public void delete(String id) {
		videoTrackingDAO.openCurrentSessionwithTransaction();
		VideoTracking videoTracking = videoTrackingDAO.findById(id);
		videoTrackingDAO.delete(videoTracking);
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

	public VideoTrackingDAO videoTrackingDAO() {
		return videoTrackingDAO;
	}

}