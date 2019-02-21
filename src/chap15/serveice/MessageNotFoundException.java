package chap15.serveice;

public class MessageNotFoundException extends ServiceException{
	
	public MessageNotFoundException(String message) {
		super(message);
	}
}
