package chap15.service;

import java.util.List;

import chap15.model.Message;

// client side에서 요청한 페이지의 정보를 저장한 DTO // 
public class MessageListView {

	private int messageTotalCount;
	private int currentPageNumber;
	private int pageTotalCount;
	private int messageCountPerPage;
	private int firstRow;
	private int endRow;
	private List<Message> messageList;
	
	
	// 생성자 method
	public MessageListView(List<Message> messageList, int messageTotalCount, 
			int currentPageNumber, int messageCountPerPage, int startRow, int endRow) {
		
		this.messageList = messageList;
		this.messageTotalCount = messageTotalCount;
		this.currentPageNumber = currentPageNumber;
		this.messageCountPerPage = messageCountPerPage;
		this.firstRow = startRow;
		this.endRow = endRow;
		
		calculatePageTotalCount();
		
	} // MessageListView() END



	// 전체 페이지의 개수를 구하는 method// 
	private void calculatePageTotalCount() {
		
		if(messageTotalCount == 0) {
			pageTotalCount = 0;
		}else {
			pageTotalCount = messageTotalCount / messageCountPerPage;
			
			if(messageTotalCount % messageCountPerPage > 0) {
				pageTotalCount++;
			}
		}
	} // calculatePageTotalCount() END
	
	
	
	public int getMessageTotalCount() {	 	return messageTotalCount;	}
	public int getCurrentPageNumber() {		return currentPageNumber;	}
	
	public int getPageTotalCount() 		{	return pageTotalCount;		}
	public int getMessageCountPerPage() {	return messageCountPerPage;	}
	
	public int getFirstRow(){	return firstRow;	}
	public int getEndRow() 	{	return endRow;		}
	
	public boolean isEmpty(){	return messageTotalCount == 0;	}

	public List<Message> getMessageList(){	return messageList;	}
	
} // MessageListView END

