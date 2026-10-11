package com.rt.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.rt.dao.MenuDao;
import com.rt.entity.MenuItem;

@Service
public class MenuService {

    @Autowired
    private MenuDao menuDao;


    public int addMenuItem(MenuItem menu) {

        return menuDao.addMenuItem(menu);
    }


    public List<MenuItem> getAllMenuItems(
            int adminId) {

        return menuDao.getAllMenuItems(
                adminId
        );
    }


    public MenuItem getMenuItemById(
            int foodId,
            int adminId) {

        return menuDao.getMenuItemById(
                foodId,
                adminId
        );
    }


    public int updateMenuItem(
            MenuItem menu,
            int adminId) {

        return menuDao.updateMenuItem(
                menu,
                adminId
        );
    }


    public int deleteMenuItem(
            int foodId,
            int adminId) {

        return menuDao.deleteMenuItem(
                foodId,
                adminId
        );
    }
}