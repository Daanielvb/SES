package testes;

import java.sql.SQLException;

import model.Lesson;
import services.LessonService;

public class TestaDAO {
	public static void main(String[] args) throws SQLException {
		LessonService ls = new LessonService();
		int i = 3;

		// sv.persist(s);
		// Student ss = sv.findByName("daniel");
		// User u = sv.findUserByName("daniel");
		// u.setName("daniel vb");
		// sv.persist(entity);
		// System.out.println(u.toString());
		// u.setId(1);
		// u.setName("daniel");
		// u.setEmail("email");
		// VideoTracking vt = new VideoTracking();
		// vt.setCreatedAt(new Date());
		// vt.setUser(u);
		// Video v = new Video();
		// v.setId(1);
		// v.setName("VIDEO");
		// vt.setVideo(v);
		// VideoTrackingService vs = new VideoTrackingService();
		// vs.persist(vt);

	}
}
