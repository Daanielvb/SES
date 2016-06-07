package services;

import java.util.List;

import dao.VideoDAO;
<<<<<<< HEAD
import model.Video;
=======
import entidades.Video;
>>>>>>> 8f6d55ee6c26bc05e99a7264373c5bda78e8d35e

public class VideoService {
	private static VideoDAO videoDAO;

	public VideoService() {
		videoDAO = new VideoDAO();
	}

	public void persist(Video entity) {
		videoDAO.openCurrentSessionwithTransaction();
		videoDAO.persist(entity);
		videoDAO.closeCurrentSessionwithTransaction();
	}

	public void update(Video entity) {
		videoDAO.openCurrentSessionwithTransaction();
		videoDAO.update(entity);
		videoDAO.closeCurrentSessionwithTransaction();
	}

	public Video findById(String id) {
		videoDAO.openCurrentSession();
		Video video = videoDAO.findById(id);
		videoDAO.closeCurrentSession();
		return video;
	}

	public void delete(String id) {
		videoDAO.openCurrentSessionwithTransaction();
		Video video = videoDAO.findById(id);
		videoDAO.delete(video);
		videoDAO.closeCurrentSessionwithTransaction();
	}

	public List<Video> findAll() {
		videoDAO.openCurrentSession();
		List<Video> videos = videoDAO.findAll();
		videoDAO.closeCurrentSession();
		return videos;
	}

	public void deleteAll() {
		videoDAO.openCurrentSessionwithTransaction();
		videoDAO.deleteAll();
		videoDAO.closeCurrentSessionwithTransaction();
	}

	public VideoDAO videoDAO() {
		return videoDAO;
	}

}
