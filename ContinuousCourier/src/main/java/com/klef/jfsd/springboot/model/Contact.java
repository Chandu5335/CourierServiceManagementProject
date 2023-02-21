package com.klef.jfsd.springboot.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "contact_table")
public class Contact {
	@Column(nullable = false,length = 200)
	private String name;
	@Id
	@Column(nullable = false,length = 200)
	private String email;
	@Column(nullable = false,length = 200)
	private String phone;
	@Column(nullable = false,length = 1000)
	private String msg;
	
	public String getName() {
		return name;
	}
	
	public void setName(String name) {
		this.name = name;
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
	public String getMsg() {
		return msg;
	}
	public void setMsg(String msg) {
		this.msg = msg;
	}
	@Override
	public String toString() {
		return "Contact [name=" + name + ", email=" + email + ", phone=" + phone + ", msg=" + msg + "]";
	}
}
