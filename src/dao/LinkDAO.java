package dao;

import java.util.List;

import org.hibernate.Query;

import model.Link;
import model.Video;

public class LinkDAO extends GenericDAO {

	public LinkDAO() {
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


	
	@SuppressWarnings("unchecked")
	public List <Link> findLinksBySubject(int subjectId){
		List <Link> result = null;
		try {
			Query query = getCurrentSession().createQuery("from Link l where l.subjects.id =:subjectId ");
			query.setParameter("subjectId", subjectId);
			result = (List <Link>) query.list();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
}
