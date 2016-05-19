package testes;
import java.sql.SQLException;

import entidades.Lesson;
import entidades.Subject;
import services.SubjectService;

public class TestaDAO {
	public static void main(String[] args) throws SQLException {
//		Student s = new Student("mike","912312312","email");
//		StudentsDAO sd = new StudentsDAO();
//		StudentService sv = new StudentService();
//		sv.persist(s);
		
		Lesson ls = new Lesson();
		
		ls.setId(1);
		Subject sub = new Subject();
		sub.setId(1);
		sub.setName("lesson1");
		sub.setTextBeginner("shaushohsihsahuihsouahsuiahsuahrwerq9835y");
		sub.setTextAdv("shoprho3ry8ry93[04y2rua9wryq34yqioyaoiw");
		sub.setDifficulty(2);
		sub.setLesson(ls);
		
		SubjectService ssv = new SubjectService();
		ssv.persist(sub);
	}
}
