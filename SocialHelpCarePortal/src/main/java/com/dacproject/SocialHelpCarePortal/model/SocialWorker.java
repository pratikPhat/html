package com.dacproject.SocialHelpCarePortal.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;



@Entity
public class SocialWorker {
	
	@Id
	@GeneratedValue
	int id;
	int contact;
	String name,email,address;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getContact() {
		return contact;
	}
	public void setContact(int contact) {
		this.contact = contact;
	}
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
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public SocialWorker(int contact, String name, String email, String address) {
		this.contact = contact;
		this.name = name;
		this.email = email;
		this.address = address;
	}
	
	
	
}
