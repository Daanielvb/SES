package dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.Configuration;

import model.LessonTracking;

public class LessonTrackingDAO extends GenericDAO {

	public LessonTrackingDAO() {
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

	public void persist(LessonTracking entity) {
		getCurrentSession().save(entity);
	}

	public void update(LessonTracking entity) {
		getCurrentSession().update(entity);
	}

	public LessonTracking findById(String id) {
		LessonTracking lt = (LessonTracking) getCurrentSession().get(LessonTracking.class, id);
		return lt;
	}

	public void delete(LessonTracking entity) {
		getCurrentSession().delete(entity);
	}

	public List<LessonTracking> findLessonTrackingByUserId(int userId) {
		try {
			List<LessonTracking> lessons = null;
			Query query = getCurrentSession()
					.createQuery("select lt from LessonTracking lt " + "inner join lt.user u where u.id =:userId");
			query.setParameter("userId", userId);
			lessons = (List<LessonTracking>) query.list();
			return lessons;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	@SuppressWarnings("unchecked")
	public List<LessonTracking> findAll() {
		List<LessonTracking> lTrackings = (List<LessonTracking>) getCurrentSession().createQuery("from lesson_tracking")
				.list();
		return lTrackings;
	}

	public void deleteAll() {
		List<LessonTracking> entityList = findAll();
		for (LessonTracking entity : entityList) {
			delete(entity);
		}
	}

}
