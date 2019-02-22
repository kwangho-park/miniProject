package chap15.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

import chap15.jdbc.JdbcUtil;
import chap15.model.Message;

public class MessageDao {
	
	private static MessageDao messageDao = new MessageDao();
	
	private MessageDao() {}
	
	public static MessageDao getInstance() {
		return messageDao;
	}
	
	public int insert(Connection conn, Message message) throws SQLException{
		
		PreparedStatement pstmt = null;
		
		try {
			pstmt = conn.prepareStatement("INSERT INTO guestbook_message"+"(guest_name,password,message) VALUES (?,?,?)");
			pstmt.setString(1, message.getGuestName());
			pstmt.setString(2, message.getPassword());
			pstmt.setString(3, message.getMessage());
			
			return pstmt.executeUpdate();				
			
		}finally {
			JdbcUtil.close(pstmt);
		}

	} // insert() END
	
	
	public Message select(Connection conn, int messageId) throws SQLException{
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			
			pstmt = conn.prepareStatement("SELECT * FROM guestbook_message WHERE message_id = ?");

			pstmt.setInt(1, messageId);
			
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				return makeMessageFromResultSet(rs);
			}else {
				return null;
			}
		}finally {
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
		}
	} // select() END
	
	
	private Message makeMessageFromResultSet(ResultSet rs) throws SQLException{

		Message message = new Message(); // 방명록 메세지를 DTO 객체

		// DTO setting // 
		message.setId(rs.getInt("message_id"));
		message.setGuestName(rs.getString("guest_name"));
		message.setPassword(rs.getString("password"));
		message.setMessage(rs.getString("message"));
		
		return message;
	} // Message() END
	
	public int selectCount(Connection conn) throws SQLException{
		Statement stmt = null;
		ResultSet rs = null;
		
		try {
			stmt = conn.createStatement();
			rs = stmt.executeQuery("SELECT count(*) FROM guestbook_message");
			rs.next();
			
			return rs.getInt(1);		// 1 = 첫번째 column
			
		}finally {
			JdbcUtil.close(rs);
			JdbcUtil.close(stmt);
		}
	} // selectCount() END
	
	public List<Message> selectList(Connection conn, int firstRow, int endRow) throws SQLException{
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			pstmt = conn.prepareStatement("SELECT * FROM guestbook_message " + "ORDER BY message_id DESC LIMIT ?,?");
			pstmt.setInt(1, firstRow - 1);
			pstmt.setInt(2, endRow - firstRow + 1);
			
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				List<Message> messageList = new ArrayList<Message>();
				
				do {
					messageList.add(makeMessageFromResultSet(rs));
					
				}while(rs.next());
				
				return messageList;
			
			}else {
				return Collections.emptyList();
			}
		}finally {
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
		}
	} // selectList() END
	
	
	public int delete(Connection conn, int messageId) throws SQLException{
		
		PreparedStatement pstmt = null;
		try {
			pstmt = conn.prepareStatement("DELETE FROM guestbook_message WHERE message_id=?");
			
			pstmt.setInt(1, messageId);
			return pstmt.executeUpdate();
			
		}finally {
			JdbcUtil.close(pstmt);
		}
	} // delete() END
	
	
	
} // MessageDao END

