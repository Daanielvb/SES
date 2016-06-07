package services;


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
	

}
