package com.rt.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.rt.dao.CartDao;
import com.rt.entity.Cart;
import com.rt.entity.CartItem;

@Service
public class CartService {

    @Autowired
    private CartDao cartDao;


    public int addToCart(Cart cart) {

        return cartDao.addToCart(cart);
    }


    public List<CartItem> getCustomerCart(
            int customerId) {

        return cartDao.getCustomerCart(
                customerId
        );
    }


    public int removeFromCart(
            int cartId) {

        return cartDao.removeFromCart(
                cartId
        );
    }


    public int updateQuantity(
            int cartId,
            int quantity) {

        return cartDao.updateQuantity(
                cartId,
                quantity
        );
    }


    public int clearCart(
            int customerId) {

        return cartDao.clearCart(
                customerId
        );
    }
}