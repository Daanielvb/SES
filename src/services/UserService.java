package services;

import dao.UserDAO;
import model.Question;
import model.User;
import model.Video;

public class UserService {

	private static UserDAO userDAO;

	public UserService() {
		userDAO = new UserDAO();
	}
	
	public void persist(User entity) {
		User u = null;
		userDAO.openCurrentSessionwithTransaction();
		userDAO.persist(entity);
		userDAO.closeCurrentSessionwithTransaction();
		//return u;
	}

	public User findUserByName(String name) {
		userDAO.openCurrentSession();
		User u = userDAO.findUserByName(name);
		userDAO.closeCurrentSession();
		return u;
	}
	
	public User findUserByEmail(String email){
		userDAO.openCurrentSession();
		User u = userDAO.findUserByEmail(email);
		userDAO.closeCurrentSession();
		return u;
	}
	
	public User findUserById(int id){
		userDAO.openCurrentSession();
		User u = userDAO.findUserById(id);
		userDAO.closeCurrentSession();
		return u;
	}
	

}
