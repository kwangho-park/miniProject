package chap15.service;

public class MessageNotFoundException extends ServiceException{
	
	public MessageNotFoundException(String message) {
		super(message);
	}
}
