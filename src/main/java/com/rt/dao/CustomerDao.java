package com.rt.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.rt.entity.Customer;

@Repository
public class CustomerDao {

    @Autowired
    private JdbcTemplate jdbcTemplate;

    // =====================================================
    // REGISTER CUSTOMER
    // =====================================================

    public int registerCustomer(Customer customer) {

        String sql =
                "INSERT INTO customer "
              + "(customerName, email, mobile, password, address) "
              + "VALUES (?, ?, ?, ?, ?)";

        return jdbcTemplate.update(
                sql,
                customer.getCustomerName(),
                customer.getEmail(),
                customer.getMobile(),
                customer.getPassword(),
                customer.getAddress()
        );
    }

    // =====================================================
    // CUSTOMER LOGIN
    // =====================================================

    public Customer loginCustomer(
            String email,
            String password) {

        String sql =
                "SELECT * FROM customer "
              + "WHERE email = ? AND password = ?";

        List<Customer> list =
                jdbcTemplate.query(
                        sql,
                        new BeanPropertyRowMapper<Customer>(
                                Customer.class
                        ),
                        email,
                        password
                );

        if (list.isEmpty()) {
            return null;
        }

        return list.get(0);
    }
}