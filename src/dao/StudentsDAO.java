package dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.Query;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;


import model.Student;

public class StudentsDAO {

	private Session currentSession;
	
	private Transaction currentTransaction;
	
	private EntityManager em;
	
	public StudentsDAO() {
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

	public void persist(Student entity) {
		getCurrentSession().save(entity);
	}

	public void update(Student entity) {
		getCurrentSession().update(entity);
	}

	public Student findById(String id) {
		Student student = (Student) getCurrentSession().get(Student.class, id);
		return student; 
	}

	public void delete(Student entity) {
		getCurrentSession().delete(entity);
	}
	
	@SuppressWarnings("unchecked")
	public List<Student> findAll() {
		List<Student> students = (List<Student>) getCurrentSession().createQuery("from students").list();
		return students;
	}

	public void deleteAll() {
		List<Student> entityList = findAll();
		for (Student entity : entityList) {
			delete(entity);
		}
	}
}
