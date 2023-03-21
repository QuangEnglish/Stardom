package com.devpro.javaweb23.dto;

import java.sql.Date;

public class ContactVn {
	private String firstName;
	private String lastName;
	private String email;
	private String password;
	private String day;
	private String gioitinh;
	private int mobile;
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}

	
	public String getDay() {
		return day;
	}
	public void setDay(String day) {
		this.day = day;
	}
	public String getGioitinh() {
		return gioitinh;
	}
	public int getMobile() {
		return mobile;
	}
	public void setMobile(int mobile) {
		this.mobile = mobile;
	}
	
	public ContactVn(String firstName, String lastName, String email, String password, String day,
			String gioitinh, int mobile) {
		super();
		this.firstName = firstName;
		this.lastName = lastName;
		this.email = email;
		this.password = password;
		this.day = day;
		this.gioitinh = gioitinh;
		this.mobile = mobile;
	}
	public ContactVn() {
		// TODO Auto-generated constructor stub
	}
	
}
