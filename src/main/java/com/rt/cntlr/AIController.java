package com.rt.cntlr;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.rt.entity.Admin;
import com.rt.entity.MenuItem;
import com.rt.service.AIService;
import com.rt.service.MenuService;

@Controller
public class AIController {

    @Autowired
    private AIService aiService;

    @Autowired
    private MenuService menuService;


    @RequestMapping(
        value = "/askAI",
        method = RequestMethod.POST
    )
    @ResponseBody
    public String askAI(
            @RequestParam("question") String question,
            HttpSession session) {

        // Customer must be logged in
        if (session.getAttribute("customer") == null) {
            return "Please login as a customer first.";
        }

        // Customer must select a restaurant
        Integer selectedAdminId =
                (Integer) session.getAttribute("selectedAdminId");

        String restaurantName =
                (String) session.getAttribute("selectedRestaurantName");

        if (selectedAdminId == null) {
            return "Please select a restaurant first.";
        }

        if (restaurantName == null) {
            restaurantName = "Restaurant";
        }

        // Get ONLY this restaurant's menu
        List<MenuItem> menuList =
                menuService.getAllMenuItems(selectedAdminId);

        StringBuilder menuContext =
                new StringBuilder();

        if (menuList == null || menuList.isEmpty()) {

            menuContext.append(
                "No menu items are currently available."
            );

        } else {

            for (MenuItem menu : menuList) {

                menuContext.append(
                    "Food Name: "
                    + menu.getFoodName()
                    + "\n"
                );

                menuContext.append(
                    "Category: "
                    + menu.getCategory()
                    + "\n"
                );

                menuContext.append(
                    "Price: ₹"
                    + menu.getPrice()
                    + "\n"
                );

                menuContext.append(
                    "Description: "
                    + menu.getDescription()
                    + "\n\n"
                );
            }
        }

        return aiService.askGemini(
                question,
                menuContext.toString(),
                restaurantName
        );
    }
}