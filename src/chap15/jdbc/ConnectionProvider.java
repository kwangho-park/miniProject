package chap15.jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


// driver manager �� �ߺ������� ���������� ���� ���ȭ// 
public class ConnectionProvider {
	
	public static Connection getConnection() throws SQLException{
		return DriverManager.getConnection("jdbc:apache:commons:dbcp:choi_jsp");
	}
	
}
