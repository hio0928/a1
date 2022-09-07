package dto;

import java.io.Serializable;

public class Member implements Serializable{
	
	private String user_id;
	private String user_passwd;
	private String user_name;
	private String phone;
	private String mail;
	private int user_point;
	private String reg_date;

	public Member() {
		super();
	}
	
	public Member(String user_id, String user_psswd, String user_name) {
		this.user_id = user_id;
		this.user_passwd = user_psswd;
		this.user_name = user_name;
	}
	
	public String getUser_id() {
		return user_id;
	}
	
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	
	public String getUser_passwd() {
		return user_passwd;
	}
	
	public void setUser_passwd(String user_passwd) {
		this.user_passwd = user_passwd;
	}
	
	public String getUser_name() {
		return user_name;
	}
	
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}
	
	public String getPhone() {
		return phone;
	}
	
	public void setPhone(String phone) {
		this.phone = phone;
	}
	
	public String getMail() {
		return mail;
	}
	
	public void setMail(String mail) {
		this.mail = mail;
	}
	
	public int getUser_point() {
		return user_point;
	}
	
	public void setUser_point(int user_point) {
		this.user_point = user_point;
	}
	
	public String getReg_date() {
		return reg_date;
	}
	
	public void setReg_date(String reg_date) {
		this.reg_date = reg_date;
	}
	
}
