package dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.Configuration;

import model.User;

public class UserDAO {
	private Session currentSession;

	private Transaction currentTransaction;

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

	public User findUserByName(String name) {
		try {
			User u = null;
			Query query = getCurrentSession().createQuery("from User u where u.name =:name ");
			query.setParameter("name", name);
			List list = query.list();
			u = (User) list.get(0);
			return u;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	public User findUserByEmail(String email) {
		try {
			User u = null;
			Query query = getCurrentSession().createQuery("select from User u where u.email =:email");
			query.setParameter("email", email);
			List list = query.list();
			if (!list.isEmpty())
				u = (User) list.get(0);
			return u;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
}
