package com.rt.entity;

public class Admin {

    private int id;
    private String username;
    private String password;
    private String restaurantName;

    public Admin() {
    }

    public Admin(int id, String username, String password,String restaurantName) {
        this.id = id;
        this.username = username;
        this.password = password;
        this.restaurantName = restaurantName;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

	public String getRestaurantName() {
		return restaurantName;
	}

	public void setRestaurantName(String restaurantName) {
		this.restaurantName = restaurantName;
	}
}