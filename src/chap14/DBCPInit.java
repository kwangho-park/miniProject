package chap14;

import java.sql.DriverManager;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;

import org.apache.commons.dbcp2.BasicDataSource;
import org.apache.commons.dbcp2.BasicDataSourceFactory;
import org.apache.commons.dbcp2.ConnectionFactory;
import org.apache.commons.dbcp2.DriverManagerConnectionFactory;
import org.apache.commons.dbcp2.PoolableConnection;
import org.apache.commons.dbcp2.PoolableConnectionFactory;
import org.apache.commons.dbcp2.PoolingDriver;
import org.apache.commons.pool2.ObjectPool;
import org.apache.commons.pool2.impl.GenericObjectPool;
import org.apache.commons.pool2.impl.GenericObjectPoolConfig;

public class DBCPInit extends HttpServlet {

	@Override
	public void init() throws ServletException{
		loadJDBCDriver();
		initConnectionPool();
	}
	
	private void loadJDBCDriver() {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
		}catch(ClassNotFoundException e) {
			throw new RuntimeException("fail to load JDBC Driver", e);
		}
	}
	
	private void initConnectionPool() {
		try {
			String DB_URL = "jdbc:mysql://localhost:3306/choi_jsp ? useSSL=false & characterEncoding=UTF-8 & serverTimezone=UTC" ;
			String USER_NAME = "root";			// DBMS id
			String PASSWORD = "peterrabbit";	// DBMS pw	
			
			// 1. connection Factory 생성
			ConnectionFactory connFactory = new DriverManagerConnectionFactory(DB_URL,USER_NAME,PASSWORD);
			

			// 2. poolable connection 생성
			PoolableConnectionFactory poolableConnFactory = new PoolableConnectionFactory(connFactory, null);
			poolableConnFactory.setValidationQuery("select 1"); 	// (커넥션의 유효성검사)
			
			
			// 3. Connection pool 설정
			//GenericObjectPoolConfig poolConfig = new GenericObjectPoolConfig();
			GenericObjectPoolConfig<PoolableConnection> poolConfig=new GenericObjectPoolConfig<PoolableConnection>();

			poolConfig.setTimeBetweenEvictionRunsMillis(1000L * 60L * 50L);
			poolConfig.setTestWhileIdle(true);
			poolConfig.setMinIdle(4);
			poolConfig.setMaxTotal(50);
			

			GenericObjectPool<PoolableConnection> connectionPool = new GenericObjectPool<>(poolableConnFactory, poolConfig);
			poolableConnFactory.setPool(connectionPool);

			// 4. JDBC 드라이버 등록
			Class.forName("org.apache.commons.dbcp2.PoolingDriver");

			
			PoolingDriver driver = (PoolingDriver)DriverManager.getDriver("jdbc:apache:commons:dbcp:");
			
			driver.registerPool("chap14", connectionPool);
			
			
		}catch(Exception e) {
			throw new RuntimeException(e);
		}
	}
}
