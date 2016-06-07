package dao;

import java.util.List;

import javax.persistence.TypedQuery;

import model.User;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.Configuration;

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

	public void persist(User entity) {
		getCurrentSession().save(entity);
	}

	public void update(User entity) {
		getCurrentSession().update(entity);
	}

	public User findById(String id) {
		User user = (User) getCurrentSession().get(User.class, id);
		return user; 
	}

	public void delete(User entity) {
		getCurrentSession().delete(entity);
	}

	@SuppressWarnings("unchecked")
	public List<User> findAll() {
		List<User> users = (List<User>) getCurrentSession().createQuery("from users").list();
		return users;
	}

	public void deleteAll() {
		List<User> entityList = findAll();
		for (User entity : entityList) {
			delete(entity);
		}
	}
	
//	List<Student> students = (List<Student>) getCurrentSession().createQuery("from students").list();
//	return students;
	
	
	public User findUserByName(String name){
		try{
		User u = null;
		Query query = getCurrentSession().createQuery("from User u where u.name =:name ");
		query.setParameter("name", name);
		List list = query.list();
		u = (User)list.get(0);
		return u;
		}
		catch(Exception e){
			e.printStackTrace();
		}
		return null;
	}

}
