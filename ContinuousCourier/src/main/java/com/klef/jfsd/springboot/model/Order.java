package com.klef.jfsd.springboot.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name="order_table")
public class Order {
	
	@Id
	private int id;
	@Column(nullable = false,length = 100)
	private String pickuplocation;
	@Column(nullable = false,length = 100)
	private String droplocation;
	@Column(length = 100)
	private String Status;
	@Column(nullable = false,length = 100)
	private String contactno;
	@Column(nullable = false,length = 100)
	private String username;
	@Column(nullable = false,length = 100)
	private String location;
	@Column(nullable = false,length = 100)
	private String pincode;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getPickuplocation() {
		return pickuplocation;
	}
	public void setPickuplocation(String pickuplocation) {
		this.pickuplocation = pickuplocation;
	}
	public String getDroplocation() {
		return droplocation;
	}
	public void setDroplocation(String droplocation) {
		this.droplocation = droplocation;
	}
	public String getStatus() {
		return Status;
	}
	public void setStatus(String status) {
		Status = status;
	}
	public String getContactno() {
		return contactno;
	}
	public void setContactno(String contactno) {
		this.contactno = contactno;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public String getPincode() {
		return pincode;
	}
	public void setPincode(String pincode) {
		this.pincode = pincode;
	}
	@Override
	public String toString() {
		return "Order [id=" + id + ", pickuplocation=" + pickuplocation + ", droplocation=" + droplocation + ", Status="
				+ Status + ", contactno=" + contactno + ", username=" + username + ", location=" + location
				+ ", pincode=" + pincode + "]";
	}
	
}
