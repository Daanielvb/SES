package entidades;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import controle.ConnectionFactory;

public class StudentDAO {
	private Connection connection;

	public StudentDAO() {
		this.connection = new ConnectionFactory().getConnection();
	}
	
	public void insert(Student student) throws SQLException {
		String sql = "insert into students "
				+ "(name,cpf,email)"
				+ " values (?,?,?)";
		try {
			// prepared statement para inserção
			PreparedStatement stmt = connection.prepareStatement(sql);
			stmt.setString(1, student.getName());
			stmt.setString(2, student.getCpf());
			stmt.setString(3, student.getEmail());
			stmt.execute();
			stmt.close();
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
// finally {
//			connection.close();
//		}
	}
	
	public Student find(int studentId){
		String sql = "select * from students where id = values(?)";
		try {
			// prepared statement para inserção
			PreparedStatement stmt = connection.prepareStatement(sql);
			stmt.setInt(1, studentId);
			ResultSet rs = stmt.executeQuery();
			while (rs.next()) {
				String name = rs.getString("name");
				String cpf = rs.getString("cpf");
				String email = rs.getString("email");
				Student student = new Student(name,cpf,email);
				return student;
			}
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
		return null;
	}
	
	}


