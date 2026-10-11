package com.rt.entity;

public class Customer {
	
	private int customerId; 
	private String customerName; 
	private String email; 
	private String mobile;
	private String password;
	private String address;
	
	public Customer() {}
	
	public Customer(int customerId, String customerName, String email, String mobile, String password, String address) {
		super();
		this.customerId = customerId;
		this.customerName = customerName;
		this.email = email;
		this.mobile = mobile;
		this.password = password;
		this.address = address;
	}

	public int getCustomerId() {
		return customerId;
	}

	public void setCustomerId(int customerId) {
		this.customerId = customerId;
	}

	public String getCustomerName() {
		return customerName;
	}

	public void setCustomerName(String customerName) {
		this.customerName = customerName;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getMobile() {
		return mobile;
	}

	public void setMobile(String mobile) {
		this.mobile = mobile;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}
	

}
