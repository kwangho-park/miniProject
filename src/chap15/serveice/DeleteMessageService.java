package chap15.serveice;

import java.sql.Connection;
import java.sql.SQLException;

import chap15.dao.MessageDao;
import chap15.model.Message;
import chap15.jdbc.JdbcUtil;
import chap15.jdbc.ConnectionProvider;

// 등록된 메세지 삭제 // 
public class DeleteMessageService {
	
	private static DeleteMessageService instance = new DeleteMessageService();
	
	private static DeleteMessageService getInstance() {
		return instance;
	}
	
	private DeleteMessageService() {}
	
	public void deleteMessage(int messageId, String password) {
		Connection conn = null;
		
		try {
			conn = ConnectionProvider.getConnection();
			conn.setAutoCommit(false);
			
			MessageDao messageDao = MessageDao.getInstance();
			Message message = messageDao.select(conn, messageId);
			
			if(message == null) {
				throw new MessageNotFoundException("메세지없음");
			}
			if(!message.matchPassword(password)) {
				throw new InvalidPasswordException("bad password");
			}
			messageDao.delete(conn, messageId);
			conn.commit();
			
		}catch(SQLException e) {
			JdbcUtil.rollback(conn);
			throw new ServiceException("삭제 실패 : " + e.getMessage(), e);
			
		}catch(InvalidPasswordException | MessageNotFoundException e) {
			JdbcUtil.rollback(conn);
			throw e;
			
		}finally {
			JdbcUtil.close(conn);
		}
	}
}
