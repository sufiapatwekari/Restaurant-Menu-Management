package com.rt.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.rt.dao.OrderDao;
import com.rt.entity.Order;
import com.rt.entity.OrderItem;

@Service
public class OrderService {

    @Autowired
    private OrderDao orderDao;


    public int createOrder(Order order) {

        return orderDao.createOrder(order);
    }


    public int addOrderItem(OrderItem item) {

        return orderDao.addOrderItem(item);
    }


    public List<Order> getCustomerOrders(
            int customerId) {

        return orderDao.getCustomerOrders(
                customerId
        );
    }


    public List<Order> getAllOrders(
            int adminId) {

        return orderDao.getAllOrders(
                adminId
        );
    }


    public int updateOrderStatus(
            int orderId,
            String orderStatus,
            int adminId) {

        return orderDao.updateOrderStatus(
                orderId,
                orderStatus,
                adminId
        );
    }
}