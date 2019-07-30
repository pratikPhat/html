package com.dacproject.SocialHelpCarePortal.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class NeedyUser {
    @Id
    @GeneratedValue
	private int id;
	private String dob;
	private long number;
	private String optradio;
	private String qualification;
	
	private String userName,address,email,city,file;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getDob() {
		return dob;
	}

	public void setDob(String dob) {
		this.dob = dob;
	}

	public long getNumber() {
		return number;
	}

	public void setNumber(long number) {
		this.number = number;
	}

	public String getOptradio() {
		return optradio;
	}

	public void setOptradio(String optradio) {
		this.optradio = optradio;
	}

	public String getQualification() {
		return qualification;
	}

	public void setQualification(String qualification) {
		this.qualification = qualification;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getFile() {
		return file;
	}

	public void setFile(String file) {
		this.file = file;
	}

	public NeedyUser(String dob,long number, String optradio, String qualification,
			String name, String address, String email, String city, String file) {
		super();
		this.dob = dob;
		this.number = number;
		this.optradio = optradio;
		this.qualification = qualification;
		this.userName = name;
		this.address = address;
		this.email = email;
		this.city = city;
		this.file = file;
	}

	public NeedyUser() {
		super();
	}
	
	
}
