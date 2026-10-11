package com.rt.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.rt.entity.Order;
import com.rt.entity.OrderItem;

@Repository
public class OrderDao {

    @Autowired
    private JdbcTemplate jdbcTemplate;


    // =====================================================
    // CREATE ORDER
    // =====================================================

    public int createOrder(Order order) {

        String sql =
                "INSERT INTO orders "
              + "(customerId, adminId, totalAmount, orderStatus) "
              + "VALUES (?, ?, ?, ?)";

        jdbcTemplate.update(
                sql,
                order.getCustomerId(),
                order.getAdminId(),
                order.getTotalAmount(),
                order.getOrderStatus()
        );

        String idSql =
                "SELECT orderId FROM orders "
              + "WHERE customerId=? "
              + "AND adminId=? "
              + "ORDER BY orderId DESC LIMIT 1";

        return jdbcTemplate.queryForObject(
                idSql,
                Integer.class,
                order.getCustomerId(),
                order.getAdminId()
        );
    }


    // =====================================================
    // ADD ORDER ITEM
    // =====================================================

    public int addOrderItem(OrderItem item) {

        String sql =
                "INSERT INTO order_items "
              + "(orderId, foodId, quantity, price) "
              + "VALUES (?, ?, ?, ?)";

        return jdbcTemplate.update(
                sql,
                item.getOrderId(),
                item.getFoodId(),
                item.getQuantity(),
                item.getPrice()
        );
    }


    // =====================================================
    // CUSTOMER ORDERS
    // =====================================================

    public List<Order> getCustomerOrders(
            int customerId) {

        String sql =
                "SELECT * FROM orders "
              + "WHERE customerId=? "
              + "ORDER BY orderId DESC";

        return jdbcTemplate.query(
                sql,
                new BeanPropertyRowMapper<Order>(
                        Order.class
                ),
                customerId
        );
    }


    // =====================================================
    // ADMIN ORDERS
    // =====================================================

    public List<Order> getAllOrders(
            int adminId) {

        String sql =
                "SELECT * FROM orders "
              + "WHERE adminId=? "
              + "ORDER BY orderId DESC";

        return jdbcTemplate.query(
                sql,
                new BeanPropertyRowMapper<Order>(
                        Order.class
                ),
                adminId
        );
    }


    // =====================================================
    // UPDATE ORDER STATUS
    // =====================================================

    public int updateOrderStatus(
            int orderId,
            String orderStatus,
            int adminId) {

        String sql =
                "UPDATE orders SET orderStatus=? "
              + "WHERE orderId=? "
              + "AND adminId=?";

        return jdbcTemplate.update(
                sql,
                orderStatus,
                orderId,
                adminId
        );
    }
}