package dao;

import java.util.List;

<<<<<<< HEAD
import model.Video;

public class VideoDAO extends GenericDAO{

=======
import entidades.Video;

public class VideoDAO extends GenericDAO{
public Video VideoData;
>>>>>>> 8f6d55ee6c26bc05e99a7264373c5bda78e8d35e
	
	public VideoDAO(){
	}
		public void persist(Video entity) {
			getCurrentSession().save(entity);
		}

		public void update(Video entity) {
			getCurrentSession().update(entity);
		}

		public Video findById(String id) {
			Video Video = (Video) getCurrentSession().get(Video.class, id);
			return Video; 
		}

		public void delete(Video entity) {
			getCurrentSession().delete(entity);
		}
		public List<Video> findAll() {
			@SuppressWarnings("unchecked")
			List<Video> Videos = (List<Video>) getCurrentSession().createQuery("from video").list();
			return Videos;
		}
		public void deleteAll() {
			List<Video> entityList = findAll();
			for (Video entity : entityList) {
				delete(entity);
			
		}
		}
}

