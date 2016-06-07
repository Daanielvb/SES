package dao;

import java.util.List;

<<<<<<< HEAD
import model.Lesson;

public class LessonDAO extends GenericDAO{
=======
import entidades.Lesson;

public class LessonDAO extends GenericDAO{
public Lesson LessonData;
>>>>>>> 8f6d55ee6c26bc05e99a7264373c5bda78e8d35e
	
	public LessonDAO(){
	}
		public void persist(Lesson entity) {
			getCurrentSession().save(entity);
		}

		public void update(Lesson entity) {
			getCurrentSession().update(entity);
		}

		public Lesson findById(String id) {
			Lesson Lesson = (Lesson) getCurrentSession().get(Lesson.class, id);
			return Lesson; 
		}

		public void delete(Lesson entity) {
			getCurrentSession().delete(entity);
		}
		public List<Lesson> findAll() {
			@SuppressWarnings("unchecked")
			List<Lesson> Lessons = (List<Lesson>) getCurrentSession().createQuery("from lesson").list();
			return Lessons;
		}
		public void deleteAll() {
			List<Lesson> entityList = findAll();
			for (Lesson entity : entityList) {
				delete(entity);
			
		}
		}
}
