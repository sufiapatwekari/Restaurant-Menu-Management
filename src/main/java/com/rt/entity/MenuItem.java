package com.rt.entity;

public class MenuItem {

    private int foodId;
    private String foodName;
    private String category;
    private float price;
    private String description;
    private String foodImage;
    private int adminId;

    public MenuItem() {
    }

    public MenuItem(int foodId, String foodName, String category,
                    float price, String description, String foodImage,int adminId) {

        this.foodId = foodId;
        this.foodName = foodName;
        this.category = category;
        this.price = price;
        this.description = description;
        this.foodImage = foodImage;
        this.adminId = adminId;
    }

    public int getFoodId() {
        return foodId;
    }

    public void setFoodId(int foodId) {
        this.foodId = foodId;
    }

    public String getFoodName() {
        return foodName;
    }

    public void setFoodName(String foodName) {
        this.foodName = foodName;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public float getPrice() {
        return price;
    }

    public void setPrice(float price) {
        this.price = price;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getFoodImage() {
        return foodImage;
    }

    public void setFoodImage(String foodImage) {
        this.foodImage = foodImage;
    }

	public int getAdminId() {
		return adminId;
	}

	public void setAdminId(int adminId) {
		this.adminId = adminId;
	}
}