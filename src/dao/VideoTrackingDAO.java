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
		List<VideoTracking> videos = null;
		try {	
			Query query = getCurrentSession()
					.createQuery("select vt from VideoTracking vt " + "inner join vt.user u where u.id=:userId");
			query.setParameter("userId", userId);
			videos = (List<VideoTracking>) query.list();
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
		return videos;
	}
	
	public VideoTracking findVideoTrackingByUserAndVideoId(Video video, User user) {
		try {
			Query q = getCurrentSession().createQuery("select vt from VideoTracking vt inner join vt.user u "
					+ "inner join vt.video v where v.id=:videoId AND u.id=:userId");
			q.setParameter("userId", user.getId());
			q.setParameter("videoId", video.getId());
			List<VideoTracking> list = q.list();
			if (list != null && !list.isEmpty()){
				return (VideoTracking) list.get(0);
			}
			else{
				return null;
			}
		}

		catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
	public VideoTracking createVideoTracking(Video video, User user){
	try {
		VideoTracking vt = findVideoTrackingByUserAndVideoId(video, user);
		if (vt == null){
			VideoTracking vtr = new VideoTracking();
			vtr.setVideo(video);
			vtr.setUser(user);
			vtr.setCreatedAt(new Date());
			return vtr;
		}
	}catch(Exception e) {
		e.printStackTrace();
	}
	return null;
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
