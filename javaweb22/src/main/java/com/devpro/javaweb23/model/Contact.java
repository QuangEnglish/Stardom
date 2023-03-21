package com.devpro.javaweb23.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

// báo cho JPA biết đây là 1 entity
@Entity
@Table(name = "tbl_contact") // entity mapping với bảng nào
public class Contact extends BaseEntity {

	
	@Column(name = "first_name", length = 45, nullable = false)
	private String firstName;

	@Column(name = "last_name", length = 45, nullable = false)
	private String lastName;

	@Column(name = "email", length = 45, nullable = true)
	private String email;

	@Column(name = "phone", length = 45, nullable = true)
	private String phone;

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

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	
	
	
	
}
