package chap15.service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.Collections;
import java.util.List;

import chap15.dao.MessageDao;
import chap15.model.Message;
import chap15.jdbc.JdbcUtil;
import chap15.jdbc.ConnectionProvider;

// 방명록에 등록된 메세지 목록을 제공 // 
public class GetMessageListService {

	private static final int MESSAGE_COUNT_PER_PAGE = 3;
	
	private static GetMessageListService instance = new GetMessageListService();
	
	
	
	private GetMessageListService() {}
	
	public static GetMessageListService getInstance() {	return instance;	}
	
	public MessageListView getMessageList(int pageNumber) {
		
		Connection conn = null;
		int currentPageNumber = pageNumber;
		
		int firstRow = 0;
		int endRow = 0;
		
		
		try {
			
			conn = ConnectionProvider.getConnection();
			
			MessageDao messageDao = MessageDao.getInstance();		// DAO instance를 반환
			
			int messageTotalCount = messageDao.selectCount(conn);
			
			List<Message> messageList = null;

			
			if(messageTotalCount > 0) {
				firstRow = (pageNumber - 1) * MESSAGE_COUNT_PER_PAGE + 1;
				endRow = firstRow + MESSAGE_COUNT_PER_PAGE - 1;
				
				messageList = messageDao.selectList(conn, firstRow, endRow);	
			}else {
				currentPageNumber = 0;
				messageList = Collections.emptyList();
			}
			
			return new MessageListView(messageList,messageTotalCount, 
					currentPageNumber, MESSAGE_COUNT_PER_PAGE, firstRow, endRow);
			
		}catch(SQLException e) {
			throw new ServiceException("목록구하기 실패 :" + e.getMessage(), e);
			
		}finally {
			JdbcUtil.close(conn);
		}
		
	}
	
}
