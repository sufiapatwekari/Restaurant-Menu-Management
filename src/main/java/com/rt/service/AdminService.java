package com.rt.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.rt.dao.AdminDao;
import com.rt.entity.Admin;

@Service
public class AdminService {

    @Autowired
    private AdminDao adminDao;


    public Admin login(
            String username,
            String password) {

        return adminDao.login(
                username,
                password
        );
    }


    public boolean usernameExists(
            String username) {

        return adminDao.usernameExists(
                username
        );
    }


    public int register(Admin admin) {

        return adminDao.register(admin);
    }


    public List<Admin> getAllRestaurants() {

        return adminDao.getAllRestaurants();
    }
}