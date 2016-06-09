package services;

import dao.UserDAO;
import model.User;

public class UserService {

	private static UserDAO userDAO;

	public UserService() {
		userDAO = new UserDAO();
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
