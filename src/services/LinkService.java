package services;

import java.util.List;

import dao.LinkDAO;
import model.Link;

public class LinkService {
	private static LinkDAO linkDAO;

	public LinkService() {
		linkDAO = new LinkDAO();
	}

	public void persist(Link entity) {
		linkDAO.openCurrentSessionwithTransaction();
		linkDAO.persist(entity);
		linkDAO.closeCurrentSessionwithTransaction();
	}

	public void update(Link entity) {
		linkDAO.openCurrentSessionwithTransaction();
		linkDAO.update(entity);
		linkDAO.closeCurrentSessionwithTransaction();
	}

	public Link findById(String id) {
		linkDAO.openCurrentSession();
		Link Link = linkDAO.findById(id);
		linkDAO.closeCurrentSession();
		return Link;
	}

	public void delete(String id) {
		linkDAO.openCurrentSessionwithTransaction();
		Link Link = linkDAO.findById(id);
		linkDAO.delete(Link);
		linkDAO.closeCurrentSessionwithTransaction();
	}

	public List<Link> findAll() {
		linkDAO.openCurrentSession();
		List<Link> Link = linkDAO.findAll();
		linkDAO.closeCurrentSession();
		return Link;
	}

	public void deleteAll() {
		linkDAO.openCurrentSessionwithTransaction();
		linkDAO.deleteAll();
		linkDAO.closeCurrentSessionwithTransaction();
	}

	public LinkDAO LinkDAO() {
		return linkDAO;
	}

}
