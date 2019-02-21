package chap15.jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


// driver manager 의 중복방지와 유지보수를 위한 모듈화// 
public class ConnectionProvider {
	
	public static Connection getConnection() throws SQLException{
		return DriverManager.getConnection("jdbc:apache:commons:dbcp:choi_jsp");
	}
	
}
