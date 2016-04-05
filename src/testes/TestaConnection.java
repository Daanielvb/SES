package testes;

import java.sql.Connection;
import java.sql.SQLException;

import controle.ConnectionFactory;

public class TestaConnection {
	
	public static void main(String[] args) throws SQLException {
		Connection connection = new ConnectionFactory().getConnection();
		System.out.println("Conexão aberta!");
		connection.close();
	}

}
