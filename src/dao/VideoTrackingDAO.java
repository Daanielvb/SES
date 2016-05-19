package dao;

import java.util.List;

import entidades.VideoTracking;

public class VideoTrackingDAO extends GenericDAO{
public VideoTracking VideoTrackingData;
	
	public VideoTrackingDAO(){
	}
		public void persist(VideoTracking entity) {
			getCurrentSession().save(entity);
		}

		public void update(VideoTracking entity) {
			getCurrentSession().update(entity);
		}

		public VideoTracking findById(String id) {
			VideoTracking VideoTracking = (VideoTracking) getCurrentSession().get(VideoTracking.class, id);
			return VideoTracking; 
		}

		public void delete(VideoTracking entity) {
			getCurrentSession().delete(entity);
		}
		public List<VideoTracking> findAll() {
			@SuppressWarnings("unchecked")
			List<VideoTracking> VideoTrackings = (List<VideoTracking>) getCurrentSession().createQuery("from videotracking").list();
			return VideoTrackings;
		}
		public void deleteAll() {
			List<VideoTracking> entityList = findAll();
			for (VideoTracking entity : entityList) {
				delete(entity);
			
		}
		}
}

