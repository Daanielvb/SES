package dao;

import java.util.List;

<<<<<<< HEAD
import model.Link;

public class LinkDAO extends GenericDAO{
	
=======
import entidades.Link;

public class LinkDAO extends GenericDAO{
	
public Link LinkData;
>>>>>>> 8f6d55ee6c26bc05e99a7264373c5bda78e8d35e
	
	public LinkDAO(){
	}
		public void persist(Link entity) {
			getCurrentSession().save(entity);
		}

		public void update(Link entity) {
			getCurrentSession().update(entity);
		}

		public Link findById(String id) {
			Link Link = (Link) getCurrentSession().get(Link.class, id);
			return Link; 
		}

		public void delete(Link entity) {
			getCurrentSession().delete(entity);
		}
		public List<Link> findAll() {
			@SuppressWarnings("unchecked")
			List<Link> Links = (List<Link>) getCurrentSession().createQuery("from link").list();
			return Links;
		}
		public void deleteAll() {
			List<Link> entityList = findAll();
			for (Link entity : entityList) {
				delete(entity);
			
		}
		}
}

