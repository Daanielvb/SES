package entidades;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.Configuration;

public class SubjectDAO extends GenericDAO{
	
	public Subject subjectData;
	
	public SubjectDAO(){
	}
		public void persist(Subject entity) {
			getCurrentSession().save(entity);
		}

		public void update(Subject entity) {
			getCurrentSession().update(entity);
		}

		public Subject findById(String id) {
			Subject subject = (Subject) getCurrentSession().get(Subject.class, id);
			return subject; 
		}

		public void delete(Subject entity) {
			getCurrentSession().delete(entity);
		}
		public List<Subject> findAll() {
			List<Subject> subjects = (List<Subject>) getCurrentSession().createQuery("from subject").list();
			return subjects;
		}
		public void deleteAll() {
			List<Subject> entityList = findAll();
			for (Subject entity : entityList) {
				delete(entity);
			
		}
		}
}
