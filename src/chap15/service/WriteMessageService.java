package chap15.service;

import java.sql.Connection;
import java.sql.SQLException;

import chap15.dao.MessageDao;
import chap15.model.Message;
import chap15.jdbc.JdbcUtil;
import chap15.jdbc.ConnectionProvider;


// �ű� �޼��� ��� //
public class WriteMessageService {
	private static WriteMessageService instance = new WriteMessageService();
	
	public static WriteMessageService getInstance() { return instance;	}
	private WriteMessageService() {}
	
	public void write(Message message){
		Connection conn = null;
		
		try {
			conn = ConnectionProvider.getConnection();
			MessageDao messageDao = MessageDao.getInstance();
			messageDao.insert(conn, message);
		}catch(SQLException e) {
			throw new ServiceException("�޼������ ����:"+e.getMessage(), e);
		}finally {
			JdbcUtil.close(conn);
		}
	}
	
	
} // WriteMessageService END
