package dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.Configuration;

import dao.UserDAO;
import model.Quiz;
import model.QuizTracking;
import model.User;

public class QuizTrackingDAO extends GenericDAO {

	public QuizTrackingDAO() {
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

	public void persist(QuizTracking entity) {
		getCurrentSession().save(entity);
	}

	public void update(QuizTracking entity) {
		getCurrentSession().update(entity);
	}

	public QuizTracking findById(String id) {
		QuizTracking qt = (QuizTracking) getCurrentSession().get(QuizTracking.class, id);
		return qt;
	}

	public void delete(QuizTracking entity) {
		getCurrentSession().delete(entity);
	}

	public List<QuizTracking> findQuizTrackingByUserId(int userId) {
		try {
			List<QuizTracking> quizzes = null;
			Query query = getCurrentSession()
					.createQuery("select qt from QuizTracking qt inner join qt.user u where u.id=:userId");
			query.setParameter("userId", userId);
			quizzes = (List<QuizTracking>) query.list();
			return quizzes;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	@SuppressWarnings("unchecked")
	public List<QuizTracking> findAll() {
		List<QuizTracking> qTrackings = (List<QuizTracking>) getCurrentSession().createQuery("from quiz_tracking")
				.list();
		return qTrackings;
	}
	
		public List<QuizTracking> findQuizTrackingByUserAndQuizId(Quiz quiz, User user) {
			try {
				Query q = getCurrentSession().createQuery("select from QuizTracking qt inner join qt.user u"
						+ "inner join qt.quiz q where q.id=:quizId AND u.id=:userId");
				q.setParameter("userId", user.getId());
				q.setParameter("quizId", quiz.getId());
				List<QuizTracking> list = q.list();
				return list;
			}

			catch (Exception e) {
				e.printStackTrace();
			}
			return null;
		}
		
		public void createQuizTracking(Quiz quiz, User user){
		
		try {
			List<QuizTracking> list = findQuizTrackingByUserAndQuizId(quiz, user);
			if (list == null || list.isEmpty()){
				QuizTracking qt = new QuizTracking();
				qt.setQuiz(quiz);
				qt.setUser(user);
				persist(qt);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	public List findQuizTrackingByUserID(int userId) {
		try {
			Query q = getCurrentSession().createQuery("select qt from QuizTracking qt inner join qt.user u"
					+ "inner join qt.quiz q inner join fetch q.lesson l where l.id=:lessonId AND u.id=:userId");
			q.setParameter("userId", userId);
			List list = q.list();
			return list;
		}

		catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	public void deleteAll() {
		List<QuizTracking> entityList = findAll();
		for (QuizTracking entity : entityList) {
			delete(entity);
		}
	}

}
