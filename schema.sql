-- Restaurant Menu Management - database schema (MySQL 8)
-- Run this once in MySQL Workbench or the mysql command line.

CREATE DATABASE restaurant_db;
USE restaurant_db;

-- Restaurant admins (one admin = one restaurant)
CREATE TABLE menu_item (
    foodId INT PRIMARY KEY,
    foodName VARCHAR(100),
    category VARCHAR(50),
    price FLOAT,
    description VARCHAR(500),
    foodImage VARCHAR(255)
);

-- Customers
CREATE TABLE IF NOT EXISTS customer (
    customerId   INT AUTO_INCREMENT PRIMARY KEY,
    customerName VARCHAR(100) NOT NULL,
    email        VARCHAR(100) NOT NULL UNIQUE,
    mobile       VARCHAR(15),
    password     VARCHAR(100) NOT NULL,
    address      VARCHAR(255)
);

-- Menu items (belong to one restaurant/admin)
CREATE TABLE IF NOT EXISTS menu_item (
    foodId      INT AUTO_INCREMENT PRIMARY KEY,
    foodName    VARCHAR(100) NOT NULL,
    category    VARCHAR(50),
    price       FLOAT NOT NULL,
    description VARCHAR(500),
    foodImage   VARCHAR(255),
    adminId     INT NOT NULL,
    FOREIGN KEY (adminId) REFERENCES admin_login(id) ON DELETE CASCADE
);

-- Cart
CREATE TABLE IF NOT EXISTS cart (
    cartId     INT AUTO_INCREMENT PRIMARY KEY,
    customerId INT NOT NULL,
    foodId     INT NOT NULL,
    quantity   INT NOT NULL DEFAULT 1,
    FOREIGN KEY (customerId) REFERENCES customer(customerId) ON DELETE CASCADE,
    FOREIGN KEY (foodId)     REFERENCES menu_item(foodId)    ON DELETE CASCADE
);

-- Orders
CREATE TABLE IF NOT EXISTS orders (
    orderId     INT AUTO_INCREMENT PRIMARY KEY,
    customerId  INT NOT NULL,
    adminId     INT NOT NULL,
    orderDate   TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    totalAmount FLOAT NOT NULL,
    orderStatus VARCHAR(30) NOT NULL DEFAULT 'Pending',
    FOREIGN KEY (customerId) REFERENCES customer(customerId),
    FOREIGN KEY (adminId)    REFERENCES admin_login(id)
);

-- Items inside each order
-- (no foreign key on foodId so deleting a menu item doesn't fail
--  or erase old order history)
CREATE TABLE IF NOT EXISTS order_items (
    orderItemId INT AUTO_INCREMENT PRIMARY KEY,
    orderId     INT NOT NULL,
    foodId      INT NOT NULL,
    quantity    INT NOT NULL,
    price       FLOAT NOT NULL,
    FOREIGN KEY (orderId) REFERENCES orders(orderId) ON DELETE CASCADE
);

-- Customer queries to a restaurant
CREATE TABLE IF NOT EXISTS contact_query (
    queryId    INT AUTO_INCREMENT PRIMARY KEY,
    customerId INT NOT NULL,
    adminId    INT NOT NULL,
    subject    VARCHAR(150) NOT NULL,
    message    TEXT NOT NULL,
    queryDate  TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    status     VARCHAR(30) NOT NULL DEFAULT 'Pending',
    FOREIGN KEY (customerId) REFERENCES customer(customerId),
    FOREIGN KEY (adminId)    REFERENCES admin_login(id)
);