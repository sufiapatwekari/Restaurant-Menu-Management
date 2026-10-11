package com.rt.cntlr;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.rt.entity.Admin;
import com.rt.entity.ContactQuery;
import com.rt.entity.MenuItem;
import com.rt.entity.Order;
import com.rt.service.ContactQueryService;
import com.rt.service.MenuService;
import com.rt.service.OrderService;

@Controller
public class MenuController {

    @Autowired
    private MenuService menuService;

    @Autowired
    private ServletContext servletContext;

    @Autowired
    private OrderService orderService;

    @Autowired
    private ContactQueryService contactQueryService;


    // =====================================================
    // HOME
    // =====================================================

    @RequestMapping("/")
    public String home() {

        return "index";
    }


    // =====================================================
    // ADD MENU PAGE
    // =====================================================

    @RequestMapping("/addMenuPage")
    public String addMenuPage(HttpSession session) {

        Admin admin = getLoggedInAdmin(session);

        if (admin == null) {

            return "redirect:/loginPage";
        }

        return "AddMenu";
    }


    // =====================================================
    // SAVE MENU
    // =====================================================

    @RequestMapping("/saveMenu")
    public String saveMenu(
            MenuItem menu,
            @RequestParam("imageFile") MultipartFile imageFile,
            HttpSession session) {

        try {

            // -------------------------------------------------
            // CHECK ADMIN LOGIN
            // -------------------------------------------------

            Admin admin = getLoggedInAdmin(session);

            if (admin == null) {

                return "redirect:/loginPage";
            }


            // -------------------------------------------------
            // GET LOGGED-IN ADMIN ID
            // -------------------------------------------------

            int adminId = admin.getId();


            // -------------------------------------------------
            // IMAGE UPLOAD
            // -------------------------------------------------

            String uploadPath =
                    "C:\\RestaurantMenuUploads";

            File folder =
                    new File(uploadPath);

            if (!folder.exists()) {

                folder.mkdirs();
            }


            if (!imageFile.isEmpty()) {

                String fileName =
                        imageFile.getOriginalFilename();

                File file =
                        new File(folder, fileName);

                imageFile.transferTo(file);

                menu.setFoodImage(
                        "uploads/" + fileName
                );
            }


            // -------------------------------------------------
            // IMPORTANT:
            // ADMIN ID COMES FROM SESSION
            // NEVER FROM JSP
            // -------------------------------------------------

            menu.setAdminId(adminId);


            // -------------------------------------------------
            // SAVE MENU
            // -------------------------------------------------

            menuService.addMenuItem(menu);

            return "redirect:/addMenuPage";

        } catch (Exception e) {

            e.printStackTrace();

            return "error";
        }
    }


    // =====================================================
    // VIEW MENU
    // Only logged-in admin's menu
    // =====================================================

    @RequestMapping("/viewMenu")
    public String viewMenu(
            Model model,
            HttpSession session) {

        Admin admin = getLoggedInAdmin(session);

        if (admin == null) {

            return "redirect:/loginPage";
        }


        // -------------------------------------------------
        // GET ADMIN ID
        // -------------------------------------------------

        int adminId = admin.getId();


        // -------------------------------------------------
        // GET ONLY THIS ADMIN'S MENU
        // -------------------------------------------------

        List<MenuItem> menuList =
                menuService.getAllMenuItems(adminId);


        model.addAttribute(
                "menuList",
                menuList
        );


        // -------------------------------------------------
        // SEND RESTAURANT NAME TO JSP
        // -------------------------------------------------

        model.addAttribute(
                "restaurantName",
                admin.getRestaurantName()
        );


        return "ViewMenu";
    }


    // =====================================================
    // SHOW IMAGE
    // =====================================================

    @RequestMapping("/uploads/{fileName:.+}")
    @ResponseBody
    public void showImage(
            @PathVariable("fileName") String fileName,
            HttpServletResponse response)
            throws IOException {

        String uploadPath =
                "C:\\RestaurantMenuUploads";

        File file =
                new File(uploadPath, fileName);


        if (file.exists()) {

            String contentType =
                    servletContext.getMimeType(
                            file.getName()
                    );

            if (contentType == null) {

                contentType =
                        "application/octet-stream";
            }

            response.setContentType(contentType);

            java.nio.file.Files.copy(
                    file.toPath(),
                    response.getOutputStream()
            );

        } else {

            response.sendError(
                    HttpServletResponse.SC_NOT_FOUND
            );
        }
    }


    // =====================================================
    // EDIT MENU PAGE
    // =====================================================

    @RequestMapping("/editMenu")
    public String editMenu(
            @RequestParam("foodId") int foodId,
            Model model,
            HttpSession session) {

        Admin admin =
                getLoggedInAdmin(session);

        if (admin == null) {

            return "redirect:/loginPage";
        }


        int adminId =
                admin.getId();


        // -------------------------------------------------
        // GET MENU ONLY FROM LOGGED-IN ADMIN
        // -------------------------------------------------

        MenuItem menu =
                menuService.getMenuItemById(
                        foodId,
                        adminId
                );


        if (menu == null) {

            return "redirect:/viewMenu";
        }


        model.addAttribute(
                "menu",
                menu
        );


        model.addAttribute(
                "restaurantName",
                admin.getRestaurantName()
        );


        return "UpdateMenu";
    }


    // =====================================================
    // UPDATE MENU
    // =====================================================

    @RequestMapping("/updateMenu")
    public String updateMenu(
            MenuItem menu,
            @RequestParam("imageFile") MultipartFile imageFile,
            HttpSession session) {

        try {

            // -------------------------------------------------
            // CHECK ADMIN LOGIN
            // -------------------------------------------------

            Admin admin =
                    getLoggedInAdmin(session);

            if (admin == null) {

                return "redirect:/loginPage";
            }


            // -------------------------------------------------
            // GET ADMIN ID FROM SESSION
            // -------------------------------------------------

            int adminId =
                    admin.getId();


            // -------------------------------------------------
            // VERIFY THAT THIS MENU BELONGS
            // TO THE LOGGED-IN ADMIN
            // -------------------------------------------------

            MenuItem oldMenu =
                    menuService.getMenuItemById(
                            menu.getFoodId(),
                            adminId
                    );


            if (oldMenu == null) {

                return "redirect:/viewMenu";
            }


            // -------------------------------------------------
            // IF NEW IMAGE SELECTED
            // -------------------------------------------------

            if (!imageFile.isEmpty()) {

                String uploadPath =
                        "C:\\RestaurantMenuUploads";

                File folder =
                        new File(uploadPath);

                if (!folder.exists()) {

                    folder.mkdirs();
                }


                String fileName =
                        imageFile.getOriginalFilename();

                File file =
                        new File(folder, fileName);

                imageFile.transferTo(file);


                menu.setFoodImage(
                        "uploads/" + fileName
                );

            } else {

                // -------------------------------------------------
                // KEEP OLD IMAGE
                // -------------------------------------------------

                menu.setFoodImage(
                        oldMenu.getFoodImage()
                );
            }


            // -------------------------------------------------
            // IMPORTANT:
            // DO NOT TAKE ADMIN ID FROM JSP
            // -------------------------------------------------

            menu.setAdminId(adminId);


            // -------------------------------------------------
            // UPDATE ONLY THIS ADMIN'S MENU
            // -------------------------------------------------

            menuService.updateMenuItem(
                    menu,
                    adminId
            );


            return "redirect:/viewMenu";

        } catch (Exception e) {

            e.printStackTrace();

            return "error";
        }
    }


    // =====================================================
    // DELETE MENU
    // =====================================================

    @RequestMapping("/deleteMenu")
    public String deleteMenu(
            @RequestParam("foodId") int foodId,
            HttpSession session) {

        try {

            // -------------------------------------------------
            // CHECK ADMIN LOGIN
            // -------------------------------------------------

            Admin admin =
                    getLoggedInAdmin(session);

            if (admin == null) {

                return "redirect:/loginPage";
            }


            // -------------------------------------------------
            // GET ADMIN ID
            // -------------------------------------------------

            int adminId =
                    admin.getId();


            // -------------------------------------------------
            // DELETE ONLY THIS ADMIN'S MENU
            // -------------------------------------------------

            menuService.deleteMenuItem(
                    foodId,
                    adminId
            );


            return "redirect:/viewMenu";

        } catch (Exception e) {

            e.printStackTrace();

            return "error";
        }
    }


    // =====================================================
    // ADMIN HOME / DASHBOARD
    // =====================================================

    @RequestMapping("/menuHome")
    public String menuHome(
            HttpSession session,
            Model model) {

        Admin admin =
                getLoggedInAdmin(session);

        if (admin == null) {

            return "redirect:/loginPage";
        }


        // -------------------------------------------------
        // SEND RESTAURANT NAME TO DASHBOARD
        // -------------------------------------------------

        model.addAttribute(
                "restaurantName",
                admin.getRestaurantName()
        );


        return "MenuHome";
    }


    // =====================================================
    // ADMIN ORDERS
    // Only logged-in admin's orders
    // =====================================================

    @RequestMapping("/adminOrders")
    public String adminOrders(
            Model model,
            HttpSession session) {

        Admin admin =
                getLoggedInAdmin(session);

        if (admin == null) {

            return "redirect:/loginPage";
        }


        // -------------------------------------------------
        // GET LOGGED-IN ADMIN ID
        // -------------------------------------------------

        int adminId =
                admin.getId();


        // -------------------------------------------------
        // GET ONLY THIS ADMIN'S ORDERS
        // -------------------------------------------------

        List<Order> orderList =
                orderService.getAllOrders(
                        adminId
                );


        model.addAttribute(
                "orderList",
                orderList
        );


        model.addAttribute(
                "restaurantName",
                admin.getRestaurantName()
        );


        return "AdminOrders";
    }


    // =====================================================
    // UPDATE ORDER STATUS
    // Only logged-in admin can update own restaurant orders
    // =====================================================

    @RequestMapping("/updateOrderStatus")
    public String updateOrderStatus(
            @RequestParam("orderId") int orderId,
            @RequestParam("orderStatus") String orderStatus,
            HttpSession session) {

        Admin admin =
                getLoggedInAdmin(session);

        if (admin == null) {

            return "redirect:/loginPage";
        }


        // -------------------------------------------------
        // GET ADMIN ID
        // -------------------------------------------------

        int adminId =
                admin.getId();


        // -------------------------------------------------
        // UPDATE ONLY THIS ADMIN'S ORDER
        // -------------------------------------------------

        orderService.updateOrderStatus(
                orderId,
                orderStatus,
                adminId
        );


        return "redirect:/adminOrders";
    }


    // =====================================================
    // ADMIN QUERIES
    // Only logged-in admin's queries
    // =====================================================

    @RequestMapping("/adminQueries")
    public String adminQueries(
            Model model,
            HttpSession session) {

        Admin admin =
                getLoggedInAdmin(session);

        if (admin == null) {

            return "redirect:/loginPage";
        }


        // -------------------------------------------------
        // GET LOGGED-IN ADMIN ID
        // -------------------------------------------------

        int adminId =
                admin.getId();


        // -------------------------------------------------
        // GET ONLY THIS ADMIN'S QUERIES
        // -------------------------------------------------

        List<ContactQuery> queryList =
                contactQueryService.getAllQueries(
                        adminId
                );


        model.addAttribute(
                "queryList",
                queryList
        );


        model.addAttribute(
                "restaurantName",
                admin.getRestaurantName()
        );


        return "AdminQueries";
    }


    // =====================================================
    // UPDATE QUERY STATUS
    // Only logged-in admin can update own restaurant queries
    // =====================================================

    @RequestMapping("/updateQueryStatus")
    public String updateQueryStatus(
            @RequestParam("queryId") int queryId,
            @RequestParam("status") String status,
            HttpSession session) {

        Admin admin =
                getLoggedInAdmin(session);

        if (admin == null) {

            return "redirect:/loginPage";
        }


        // -------------------------------------------------
        // GET ADMIN ID
        // -------------------------------------------------

        int adminId =
                admin.getId();


        // -------------------------------------------------
        // UPDATE ONLY THIS ADMIN'S QUERY
        // -------------------------------------------------

        contactQueryService.updateQueryStatus(
                queryId,
                status,
                adminId
        );


        return "redirect:/adminQueries";
    }


    // =====================================================
    // GET LOGGED-IN ADMIN
    // =====================================================

    private Admin getLoggedInAdmin(
            HttpSession session) {

        Object adminObject =
                session.getAttribute("admin");


        if (adminObject instanceof Admin) {

            return (Admin) adminObject;
        }


        return null;
    }
}