package services;

<<<<<<< HEAD
import model.User;
import dao.UserDAO;

public class UserService {

	private static UserDAO userDAO;
	
	public UserService() {		
		userDAO = new UserDAO();
	}

	
	public User findUserByName(String name){
		userDAO.openCurrentSession();
		User u = userDAO.findUserByName(name);
		userDAO.closeCurrentSession();
		return u;
	}
	
=======
import java.util.List;

import dao.UserDAO;
import entidades.User;

public class UserService {
	private static UserDAO userDAO;

	public UserService() {
		userDAO = new UserDAO();
	}

	public void persist(User entity) {
		userDAO.openCurrentSessionwithTransaction();
		userDAO.persist(entity);
		userDAO.closeCurrentSessionwithTransaction();
	}

	public void update(User entity) {
		userDAO.openCurrentSessionwithTransaction();
		userDAO.update(entity);
		userDAO.closeCurrentSessionwithTransaction();
	}

	public User findById(String id) {
		userDAO.openCurrentSession();
		User user = userDAO.findById(id);
		userDAO.closeCurrentSession();
		return user;
	}

	public void delete(String id) {
		userDAO.openCurrentSessionwithTransaction();
		User user = userDAO.findById(id);
		userDAO.delete(user);
		userDAO.closeCurrentSessionwithTransaction();
	}

	public List<User> findAll() {
		userDAO.openCurrentSession();
		List<User> users = userDAO.findAll();
		userDAO.closeCurrentSession();
		return users;
	}

	public void deleteAll() {
		userDAO.openCurrentSessionwithTransaction();
		userDAO.deleteAll();
		userDAO.closeCurrentSessionwithTransaction();
	}

	public UserDAO userDAO() {
		return userDAO;
	}

>>>>>>> 8f6d55ee6c26bc05e99a7264373c5bda78e8d35e
}
