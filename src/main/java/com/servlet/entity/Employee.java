package com.servlet.entity;

public class Employee {
	
	private String name;
	
	private String email;
	
	private String password;
	
	private String department;
	
	private String gender;
	
	private String address;
	


	public Employee() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Employee(String name, String email, String password, String department, String gender, String address) {
		super();
		this.name = name;
		this.email = email;
		this.password = password;
		this.department = department;
		this.gender = gender;
		this.address = address;
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

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getDepartment() {
		return department;
	}

	public void setDepartment(String department) {
		this.department = department;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}
	
	
	

}
