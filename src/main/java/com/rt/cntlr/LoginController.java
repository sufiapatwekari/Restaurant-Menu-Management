package com.rt.cntlr;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.rt.entity.Admin;
import com.rt.service.AdminService;

@Controller
public class LoginController {

    @Autowired
    private AdminService adminService;


    // =====================================================
    // ADMIN LOGIN PAGE
    // =====================================================
    @RequestMapping("/loginPage")
    public String loginPage() {

        return "Login";
    }


    // =====================================================
    // ADMIN LOGIN
    // =====================================================
    @RequestMapping(
            value = "/login",
            method = RequestMethod.POST)
    public String login(
            @RequestParam("username") String username,
            @RequestParam("password") String password,
            HttpSession session,
            Model model) {

        Admin admin =
                adminService.login(username, password);

        if (admin != null) {

            // Store complete admin object
            session.setAttribute("admin", admin);

            // Store logged-in admin ID
            session.setAttribute(
                    "adminId",
                    admin.getId()
            );

            return "redirect:/menuHome";

        } else {

            model.addAttribute(
                    "error",
                    "Invalid username or password"
            );

            return "Login";
        }
    }


    // =====================================================
    // ADMIN REGISTRATION PAGE
    // =====================================================
    @RequestMapping("/adminRegisterPage")
    public String adminRegisterPage() {

        return "AdminRegister";
    }


    // =====================================================
    // ADMIN REGISTRATION
    // =====================================================
    @RequestMapping(
            value = "/registerAdmin",
            method = RequestMethod.POST)
    public String registerAdmin(

            @RequestParam("username")
            String username,

            @RequestParam("password")
            String password,

            @RequestParam("confirmPassword")
            String confirmPassword,

            @RequestParam("restaurantName")
            String restaurantName,

            Model model) {


        // =================================================
        // CHECK USERNAME
        // =================================================
        if (adminService.usernameExists(username)) {

            model.addAttribute(
                    "error",
                    "Username already exists. Please choose another username."
            );

            return "AdminRegister";
        }


        // =================================================
        // CHECK PASSWORD
        // =================================================
        if (!password.equals(confirmPassword)) {

            model.addAttribute(
                    "error",
                    "Password and Confirm Password do not match"
            );

            return "AdminRegister";
        }


        // =================================================
        // CHECK RESTAURANT NAME
        // =================================================
        if (restaurantName == null
                || restaurantName.trim().isEmpty()) {

            model.addAttribute(
                    "error",
                    "Restaurant name is required"
            );

            return "AdminRegister";
        }


        // =================================================
        // CREATE ADMIN OBJECT
        // =================================================
        Admin admin = new Admin();

        admin.setUsername(username);

        admin.setPassword(password);

        admin.setRestaurantName(
                restaurantName.trim()
        );


        // =================================================
        // SAVE ADMIN
        // =================================================
        adminService.register(admin);


        // =================================================
        // REGISTRATION SUCCESS
        // =================================================
        return "redirect:/loginPage";
    }


    // =====================================================
    // ADMIN LOGOUT
    // =====================================================
    @RequestMapping("/logout")
    public String logout(HttpSession session) {

        session.invalidate();

        return "redirect:/loginPage";
    }
}