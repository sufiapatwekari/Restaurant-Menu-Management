package com.rt.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.rt.entity.Cart;
import com.rt.entity.CartItem;

@Repository
public class CartDao {

    @Autowired
    private JdbcTemplate jdbcTemplate;


    public int addToCart(Cart cart) {

        String checkSql =
                "SELECT quantity FROM cart "
              + "WHERE customerId=? AND foodId=?";

        List<Integer> list =
                jdbcTemplate.query(
                        checkSql,
                        (rs, rowNum) ->
                                rs.getInt("quantity"),
                        cart.getCustomerId(),
                        cart.getFoodId()
                );

        if (!list.isEmpty()) {

            String updateSql =
                    "UPDATE cart SET quantity=? "
                  + "WHERE customerId=? AND foodId=?";

            return jdbcTemplate.update(
                    updateSql,
                    list.get(0) + cart.getQuantity(),
                    cart.getCustomerId(),
                    cart.getFoodId()
            );

        } else {

            String insertSql =
                    "INSERT INTO cart "
                  + "(customerId, foodId, quantity) "
                  + "VALUES (?, ?, ?)";

            return jdbcTemplate.update(
                    insertSql,
                    cart.getCustomerId(),
                    cart.getFoodId(),
                    cart.getQuantity()
            );
        }
    }


    public List<CartItem> getCustomerCart(
            int customerId) {

        String sql =
                "SELECT c.cartId, "
              + "c.customerId, "
              + "c.foodId, "
              + "c.quantity, "
              + "m.foodName, "
              + "m.price, "
              + "m.description, "
              + "m.foodImage "
              + "FROM cart c "
              + "JOIN menu_item m "
              + "ON c.foodId = m.foodId "
              + "WHERE c.customerId=?";

        return jdbcTemplate.query(
                sql,
                new BeanPropertyRowMapper<CartItem>(
                        CartItem.class
                ),
                customerId
        );
    }


    public int removeFromCart(int cartId) {

        String sql =
                "DELETE FROM cart "
              + "WHERE cartId=?";

        return jdbcTemplate.update(
                sql,
                cartId
        );
    }


    public int updateQuantity(
            int cartId,
            int quantity) {

        String sql =
                "UPDATE cart SET quantity=? "
              + "WHERE cartId=?";

        return jdbcTemplate.update(
                sql,
                quantity,
                cartId
        );
    }


    public int clearCart(
            int customerId) {

        String sql =
                "DELETE FROM cart "
              + "WHERE customerId=?";

        return jdbcTemplate.update(
                sql,
                customerId
        );
    }
}