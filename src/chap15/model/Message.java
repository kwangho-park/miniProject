package chap15.model;


// 방명록 데이터를 전달하는 DTO // 
public class Message {

	private int id;
	private String guestName;
	private String password;
	private String message;			// 게시글
	
	public int getId() {	return id;	}
	public void setId(int id) {		this.id = id;	}
	
	public String getGuestName() {	return guestName;	}
	public void setGuestName(String guestName) {	this.guestName = guestName;		}
	
	public String getPassword() {	return password;	}
	public void setPassword(String password) {	this.password = password;	}
	
	public String getMessage() {	return message;	}
	public void setMessage(String message) {	this.message = message;		}
	
	/* 방명록 메세지에 암호가 지정되어있는지 확인 */
	public boolean hasPassword() {
		return password != null && !password.isEmpty();
	}
	
	
	public boolean matchPassword(String pwd) {
		return password != null && password.equals(pwd);
	}
	
}
