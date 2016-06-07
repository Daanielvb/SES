package testes;
import java.sql.SQLException;
import java.util.Date;
import java.util.List;


import model.Student;
import model.VideoTracking;
import services.StudentService;
import services.UserService;
import services.VideoTrackingService;
import dao.StudentsDAO;

public class TestaDAO {
	public static void main(String[] args) throws SQLException {
		Student s = new Student("mike","912312312","email");
		StudentsDAO sd = new StudentsDAO();
		StudentService sv = new StudentService();
		UserService us = new UserService();
		VideoTrackingService vs = new VideoTrackingService();
		List <VideoTracking> videos = vs.findByUser(1);
		videos.get(0).setCreatedAt(new Date());
		vs.update(videos.get(0));
//		System.out.println(videos.toString());
		//sv.persist(s);
		//Student ss = sv.findByName("daniel");
//		User u = sv.findUserByName("daniel");
//		u.setName("daniel vb");
//		sv.persist(entity);
		//System.out.println(u.toString());
//		u.setId(1);
//		u.setName("daniel");
//		u.setEmail("email");
//		VideoTracking vt = new VideoTracking();
//		vt.setCreatedAt(new Date());
//		vt.setUser(u);
//		Video v = new Video();
//		v.setId(1);
//		v.setName("VIDEO");	
//		vt.setVideo(v);
//		VideoTrackingService vs = new VideoTrackingService();
//		vs.persist(vt);

}
}
