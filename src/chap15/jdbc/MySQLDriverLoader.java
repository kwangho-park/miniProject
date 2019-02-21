package chap15.jdbc;

import javax.servlet.http.HttpServlet;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;

public class MySQLDriverLoader extends HttpServlet {

	public void init(ServletConfig config) throws ServletException{
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");

			
		}catch(Exception e) {
			throw new ServletException(e);
		}
	}
}
