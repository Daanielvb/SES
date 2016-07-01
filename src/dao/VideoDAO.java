package dao;

import java.util.List;

import org.hibernate.Query;

import model.User;
import model.Video;

public class VideoDAO extends GenericDAO {

	public VideoDAO() {
	}

	public void persist(Video entity) {
		getCurrentSession().save(entity);
	}

	public void update(Video entity) {
		getCurrentSession().update(entity);
	}

	public Video findById(Long id) {
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
	
	@SuppressWarnings("unchecked")
	public List <Video> findVideosBySubjectId(int subjectId){
		List <Video> result = null;
		try {
			Query query = getCurrentSession().createQuery("from Video v where v.subjects.id =:subjectId ");
			query.setParameter("subjectId", subjectId);
			result = (List <Video>) query.list();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
}
