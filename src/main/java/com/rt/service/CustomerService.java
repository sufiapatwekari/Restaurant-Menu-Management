package com.rt.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.rt.dao.CustomerDao;
import com.rt.entity.Customer;

@Service
public class CustomerService {

    @Autowired
    private CustomerDao customerDao;

    // =====================================================
    // REGISTER CUSTOMER
    // =====================================================

    public int registerCustomer(Customer customer) {

        return customerDao.registerCustomer(customer);
    }

    // =====================================================
    // CUSTOMER LOGIN
    // =====================================================

    public Customer loginCustomer(
            String email,
            String password) {

        return customerDao.loginCustomer(
                email,
                password
        );
    }
}