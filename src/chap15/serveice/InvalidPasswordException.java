package chap15.serveice;


public class InvalidPasswordException extends ServiceException {
	
	public InvalidPasswordException(String message) {
		super(message);
	}
}
