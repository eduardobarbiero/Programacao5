package br.eti.gregori.jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionFactory {
	
	private static final String URL = "jdbc:mysql://10.199.36.41:3306/java";
	private static final String USERNAME = "progv";
	private static final String PASSWORD = "progv";

	public Connection getConnection() throws SQLException {
		System.out.println("conectando ...");

		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			throw new SQLException(e);
		}

		return DriverManager.getConnection(URL, USERNAME, PASSWORD);
	}	
}
