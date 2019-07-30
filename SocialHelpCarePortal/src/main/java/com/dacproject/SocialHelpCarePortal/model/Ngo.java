package com.dacproject.SocialHelpCarePortal.model;



import java.util.Date;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name="ngo")
public class Ngo {
	@Id
	@GeneratedValue
	private int id;
	private String dob;
	private int registeredIdNumber;
	private long number;
	private String optradio;
	
	private String name,address,email,city,file;
	/*
	 * @OneToMany(targetEntity = Event.class,mappedBy = "ngo",cascade =
	 * CascadeType.ALL,fetch = FetchType.EAGER)
	 */
	/*
	 * private List<Event> events;
	 * 
	 * public List<Event> getEvents() { return events; } public void
	 * setEvents(List<Event> events) { this.events = events; }
	 */

	public String getDob() {
		return dob;
	}

	public void setDob(String dob) {
		this.dob = dob;
	}

	public int getRegisteredIdNumber() {
		return registeredIdNumber;
	}

	public void setRegisteredIdNumber(int registeredIdNumber) {
		this.registeredIdNumber = registeredIdNumber;
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

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
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

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public Ngo(String dob, int registeredIdNumber, long number, String optradio, String name, String address, String email,
			String city, String file) {
		super();
		this.dob = dob;
		this.registeredIdNumber = registeredIdNumber;
		this.number = number;
		this.optradio = optradio;
		this.name = name;
		this.address = address;
		this.email = email;
		this.city = city;
		this.file = file;
	}

	public Ngo() {
		super();
	}
	
	
}
