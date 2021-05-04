package lao.entity;


//javabean
public class TUser {

	private long id;
	private String username;
	private String password;
	private String useremail;
	private long userphone;
	private String sex;
	
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getUseremail() {
		return useremail;
	}
	public void setUseremail(String useremail) {
		this.useremail = useremail;
	}
	public long getUserphone() {
		return userphone;
	}
	public void setUserphone(long userphone) {
		this.userphone = userphone;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	
	
}
