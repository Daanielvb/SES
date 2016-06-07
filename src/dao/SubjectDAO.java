package dao;

import java.util.List;

import model.Subject;

public class SubjectDAO extends GenericDAO{
	
	
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
			@SuppressWarnings("unchecked")
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
