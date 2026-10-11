package com.rt.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.rt.entity.Admin;

@Repository
public class AdminDao {

    @Autowired
    private JdbcTemplate jdbcTemplate;


    // =====================================================
    // ADMIN LOGIN
    // =====================================================

    public Admin login(String username, String password) {

        String sql =
                "SELECT * FROM admin_login "
              + "WHERE username = ? AND password = ?";

        try {

            return jdbcTemplate.queryForObject(
                    sql,

                    (rs, rowNum) -> {

                        Admin admin = new Admin();

                        admin.setId(
                                rs.getInt("id")
                        );

                        admin.setUsername(
                                rs.getString("username")
                        );

                        admin.setPassword(
                                rs.getString("password")
                        );

                        admin.setRestaurantName(
                                rs.getString("restaurantName")
                        );

                        return admin;
                    },

                    username,
                    password
            );

        } catch (Exception e) {

            return null;
        }
    }


    // =====================================================
    // CHECK USERNAME
    // =====================================================

    public boolean usernameExists(String username) {

        String sql =
                "SELECT COUNT(*) "
              + "FROM admin_login "
              + "WHERE username = ?";

        Integer count =
                jdbcTemplate.queryForObject(
                        sql,
                        Integer.class,
                        username
                );

        return count != null && count > 0;
    }


    // =====================================================
    // ADMIN REGISTRATION
    // =====================================================

    public int register(Admin admin) {

        String sql =
                "INSERT INTO admin_login "
              + "(username, password, restaurantName) "
              + "VALUES (?, ?, ?)";

        return jdbcTemplate.update(
                sql,
                admin.getUsername(),
                admin.getPassword(),
                admin.getRestaurantName()
        );
    }


    // =====================================================
    // GET ALL RESTAURANTS
    // =====================================================

    public List<Admin> getAllRestaurants() {

        String sql =
                "SELECT id, username, restaurantName "
              + "FROM admin_login "
              + "ORDER BY restaurantName";

        return jdbcTemplate.query(
                sql,
                new BeanPropertyRowMapper<Admin>(
                        Admin.class
                )
        );
    }
}