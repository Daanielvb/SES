package dao;

import java.util.Date;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.Configuration;

import model.User;
import model.Video;
import model.VideoTracking;

public class VideoTrackingDAO extends GenericDAO {

	public VideoTrackingDAO() {
	}

	public Session openCurrentSession() {
		currentSession = getSessionFactory().openSession();
		return currentSession;
	}

	public Session openCurrentSessionwithTransaction() {
		currentSession = getSessionFactory().openSession();
		currentTransaction = currentSession.beginTransaction();
		return currentSession;
	}

	public void closeCurrentSession() {
		currentSession.close();
	}

	public void closeCurrentSessionwithTransaction() {
		currentTransaction.commit();
		currentSession.close();
	}

	private static SessionFactory getSessionFactory() {
		Configuration configuration = new Configuration().configure();
		StandardServiceRegistryBuilder builder = new StandardServiceRegistryBuilder()
				.applySettings(configuration.getProperties());
		SessionFactory sessionFactory = configuration.buildSessionFactory(builder.build());
		return sessionFactory;
	}

	public Session getCurrentSession() {
		return currentSession;
	}

	public void setCurrentSession(Session currentSession) {
		this.currentSession = currentSession;
	}

	public Transaction getCurrentTransaction() {
		return currentTransaction;
	}

	public void setCurrentTransaction(Transaction currentTransaction) {
		this.currentTransaction = currentTransaction;
	}

	public void persist(VideoTracking entity) {
		getCurrentSession().save(entity);
	}

	public void update(VideoTracking entity) {
		getCurrentSession().update(entity);
	}

	public VideoTracking findById(String id) {
		VideoTracking vt = (VideoTracking) getCurrentSession().get(VideoTracking.class, id);
		return vt;
	}

	public void delete(VideoTracking entity) {
		getCurrentSession().delete(entity);
	}

	public List<VideoTracking> findVideoTrackingByUserId(int userId) {
		try {
			List<VideoTracking> videos = null;
			Query query = getCurrentSession()
					.createQuery("select vt from VideoTracking vt " + "inner join vt.user u where u.id=:userId");
			query.setParameter("userId", userId);
			videos = (List<VideoTracking>) query.list();
			return videos;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
	public List<VideoTracking> findVideoTrackingByUserAndQuizId(Video video, User user) {
		try {
			Query q = getCurrentSession().createQuery("select vt from VideoTracking vt inner join vt.user u"
					+ "inner join vt.video v where v.id=:videoId AND u.id=:userId");
			q.setParameter("userId", user.getId());
			q.setParameter("videoId", video.getId());
			List<VideoTracking> list = q.list();
			return list;
		}

		catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
	public void createVideoTracking(Video video, User user){
	
	try {
		List<VideoTracking> list = findVideoTrackingByUserAndQuizId(video, user);
		if (list == null || list.isEmpty()){
			VideoTracking vt = new VideoTracking();
			vt.setVideo(video);
			vt.setUser(user);
			vt.setCreatedAt(new Date());
			persist(vt);
		}
	}catch(Exception e) {
		e.printStackTrace();
	}
}

	@SuppressWarnings("unchecked")
	public List<VideoTracking> findAll() {
		List<VideoTracking> vTrackings = (List<VideoTracking>) getCurrentSession().createQuery("from video_tracking")
				.list();
		return vTrackings;
	}

	public void deleteAll() {
		List<VideoTracking> entityList = findAll();
		for (VideoTracking entity : entityList) {
			delete(entity);
		}
	}
}
