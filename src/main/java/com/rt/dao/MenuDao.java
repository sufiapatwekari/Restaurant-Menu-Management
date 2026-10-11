package com.rt.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.rt.entity.MenuItem;

@Repository
public class MenuDao {

    @Autowired
    private JdbcTemplate jdbcTemplate;


    // =====================================================
    // ADD MENU
    // =====================================================

    public int addMenuItem(MenuItem menu) {

        String sql =
                "INSERT INTO menu_item "
              + "(foodName, category, price, description, foodImage, adminId) "
              + "VALUES (?, ?, ?, ?, ?, ?)";

        return jdbcTemplate.update(
                sql,
                menu.getFoodName(),
                menu.getCategory(),
                menu.getPrice(),
                menu.getDescription(),
                menu.getFoodImage(),
                menu.getAdminId()
        );
    }


    // =====================================================
    // GET ADMIN MENU
    // =====================================================

    public List<MenuItem> getAllMenuItems(int adminId) {

        String sql =
                "SELECT * FROM menu_item "
              + "WHERE adminId = ? "
              + "ORDER BY category, foodId";

        return jdbcTemplate.query(
                sql,
                new BeanPropertyRowMapper<MenuItem>(
                        MenuItem.class
                ),
                adminId
        );
    }


    // =====================================================
    // GET ONE MENU ITEM
    // =====================================================

    public MenuItem getMenuItemById(
            int foodId,
            int adminId) {

        String sql =
                "SELECT * FROM menu_item "
              + "WHERE foodId = ? "
              + "AND adminId = ?";

        try {

            return jdbcTemplate.queryForObject(
                    sql,
                    new BeanPropertyRowMapper<MenuItem>(
                            MenuItem.class
                    ),
                    foodId,
                    adminId
            );

        } catch (EmptyResultDataAccessException e) {

            return null;
        }
    }


    // =====================================================
    // UPDATE MENU
    // =====================================================

    public int updateMenuItem(
            MenuItem menu,
            int adminId) {

        String sql =
                "UPDATE menu_item SET "
              + "foodName=?, "
              + "category=?, "
              + "price=?, "
              + "description=?, "
              + "foodImage=? "
              + "WHERE foodId=? "
              + "AND adminId=?";

        return jdbcTemplate.update(
                sql,
                menu.getFoodName(),
                menu.getCategory(),
                menu.getPrice(),
                menu.getDescription(),
                menu.getFoodImage(),
                menu.getFoodId(),
                adminId
        );
    }


    // =====================================================
    // DELETE MENU
    // =====================================================

    public int deleteMenuItem(
            int foodId,
            int adminId) {

        String sql =
                "DELETE FROM menu_item "
              + "WHERE foodId=? "
              + "AND adminId=?";

        return jdbcTemplate.update(
                sql,
                foodId,
                adminId
        );
    }
}