package com.rt.cntlr;

import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.rt.entity.Admin;
import com.rt.entity.Cart;
import com.rt.entity.CartItem;
import com.rt.entity.ContactQuery;
import com.rt.entity.Customer;
import com.rt.entity.MenuItem;
import com.rt.entity.Order;
import com.rt.entity.OrderItem;
import com.rt.service.AdminService;
import com.rt.service.CartService;
import com.rt.service.ContactQueryService;
import com.rt.service.CustomerService;
import com.rt.service.MenuService;
import com.rt.service.OrderService;

@Controller
public class CustomerController {

    @Autowired
    private CustomerService customerService;

    @Autowired
    private AdminService adminService;

    @Autowired
    private MenuService menuService;

    @Autowired
    private CartService cartService;

    @Autowired
    private OrderService orderService;

    @Autowired
    private ContactQueryService contactQueryService;


    // =====================================================
    // CUSTOMER REGISTER PAGE
    // =====================================================

    @RequestMapping("/registerPage")
    public String registerPage() {

        return "Register";
    }


    // =====================================================
    // CUSTOMER REGISTER
    // =====================================================

    @RequestMapping("/registerCustomer")
    public String registerCustomer(
            Customer customer) {

        customerService.registerCustomer(
                customer
        );

        return "redirect:/registerPage";
    }


    // =====================================================
    // CUSTOMER LOGIN PAGE
    // =====================================================

    @RequestMapping("/customerLoginPage")
    public String customerLoginPage() {

        return "CustomerLogin";
    }


    // =====================================================
    // CUSTOMER LOGIN
    // =====================================================

    @RequestMapping("/customerLogin")
    public String customerLogin(
            @RequestParam("email") String email,
            @RequestParam("password") String password,
            HttpSession session) {

        Customer customer =
                customerService.loginCustomer(
                        email,
                        password
                );

        if (customer != null) {

            session.setAttribute(
                    "customer",
                    customer
            );

            // Remove previously selected restaurant
            session.removeAttribute(
                    "selectedAdminId"
            );

            session.removeAttribute(
                    "selectedRestaurantName"
            );

            // Customer MUST choose restaurant
            return "redirect:/selectRestaurant";
        }

        return "CustomerLogin";
    }


    // =====================================================
    // RESTAURANT SELECTION PAGE
    // =====================================================

    @RequestMapping("/selectRestaurant")
    public String selectRestaurant(
            Model model,
            HttpSession session) {

        if (session.getAttribute("customer") == null) {

            return "redirect:/customerLoginPage";
        }

        List<Admin> restaurantList =
                adminService.getAllRestaurants();

        model.addAttribute(
                "restaurantList",
                restaurantList
        );

        return "SelectRestaurant";
    }


    // =====================================================
    // SELECT RESTAURANT
    // =====================================================

    @RequestMapping("/chooseRestaurant")
    public String chooseRestaurant(
            @RequestParam("adminId") int adminId,
            HttpSession session) {

        if (session.getAttribute("customer") == null) {

            return "redirect:/customerLoginPage";
        }

        List<Admin> restaurantList =
                adminService.getAllRestaurants();

        Admin selectedRestaurant = null;

        for (Admin admin : restaurantList) {

            if (admin.getId() == adminId) {

                selectedRestaurant = admin;
                break;
            }
        }

        if (selectedRestaurant == null) {

            return "redirect:/selectRestaurant";
        }


        // Store selected restaurant in session
        session.setAttribute(
                "selectedAdminId",
                selectedRestaurant.getId()
        );

        session.setAttribute(
                "selectedRestaurantName",
                selectedRestaurant.getRestaurantName()
        );


        // Clear old restaurant's cart
        Customer customer =
                (Customer) session.getAttribute(
                        "customer"
                );

        if (customer != null) {

            cartService.clearCart(
                    customer.getCustomerId()
            );
        }


        return "redirect:/customerMenu";
    }


    // =====================================================
    // CUSTOMER HOME
    // =====================================================

    @RequestMapping("/customerHome")
    public String customerHome(
            HttpSession session) {

        if (session.getAttribute("customer") == null) {

            return "redirect:/customerLoginPage";
        }

        // If restaurant has not been selected
        if (session.getAttribute(
                "selectedAdminId") == null) {

            return "redirect:/selectRestaurant";
        }

        return "CustomerHome";
    }


    // =====================================================
    // CUSTOMER MENU
    // =====================================================

    @RequestMapping("/customerMenu")
    public String customerMenu(
            Model model,
            HttpSession session) {

        if (session.getAttribute("customer") == null) {

            return "redirect:/customerLoginPage";
        }


        Object adminObject =
                session.getAttribute(
                        "selectedAdminId"
                );

        if (adminObject == null) {

            return "redirect:/selectRestaurant";
        }


        int adminId =
                (Integer) adminObject;


        List<MenuItem> menuList =
                menuService.getAllMenuItems(
                        adminId
                );


        // =================================================
        // GROUP MENU BY CATEGORY
        // =================================================

        Map<String, List<MenuItem>> categoryMenus =
                new LinkedHashMap<String, List<MenuItem>>();


        for (MenuItem menu : menuList) {

            String category =
                    menu.getCategory();

            if (category == null
                    || category.trim().isEmpty()) {

                category = "Other";
            }


            if (!categoryMenus.containsKey(category)) {

                categoryMenus.put(
                        category,
                        new java.util.ArrayList<MenuItem>()
                );
            }


            categoryMenus
                    .get(category)
                    .add(menu);
        }


        model.addAttribute(
                "categoryMenus",
                categoryMenus
        );

        model.addAttribute(
                "menuList",
                menuList
        );


        return "CustomerMenu";
    }


    // =====================================================
    // CHANGE RESTAURANT
    // =====================================================

    @RequestMapping("/changeRestaurant")
    public String changeRestaurant(
            HttpSession session) {

        if (session.getAttribute("customer") == null) {

            return "redirect:/customerLoginPage";
        }

        return "redirect:/selectRestaurant";
    }


    // =====================================================
    // ADD TO CART
    // =====================================================

    @RequestMapping("/addToCart")
    public String addToCart(
            @RequestParam("foodId") int foodId,
            @RequestParam("quantity") int quantity,
            HttpSession session) {


        Customer customer =
                (Customer) session.getAttribute(
                        "customer"
                );

        if (customer == null) {

            return "redirect:/customerLoginPage";
        }


        Object adminObject =
                session.getAttribute(
                        "selectedAdminId"
                );

        if (adminObject == null) {

            return "redirect:/selectRestaurant";
        }


        int adminId =
                (Integer) adminObject;


        // =================================================
        // SECURITY CHECK
        // Make sure food belongs to selected restaurant
        // =================================================

        MenuItem menu =
                menuService.getMenuItemById(
                        foodId,
                        adminId
                );

        if (menu == null) {

            return "redirect:/customerMenu";
        }


        if (quantity < 1) {

            quantity = 1;
        }


        Cart cart = new Cart();

        cart.setCustomerId(
                customer.getCustomerId()
        );

        cart.setFoodId(
                foodId
        );

        cart.setQuantity(
                quantity
        );


        cartService.addToCart(cart);


        return "redirect:/customerMenu";
    }


    // =====================================================
    // VIEW CART
    // =====================================================

    @RequestMapping("/viewCart")
    public String viewCart(
            Model model,
            HttpSession session) {

        Customer customer =
                (Customer) session.getAttribute(
                        "customer"
                );

        if (customer == null) {

            return "redirect:/customerLoginPage";
        }


        List<CartItem> cartList =
                cartService.getCustomerCart(
                        customer.getCustomerId()
                );


        model.addAttribute(
                "cartList",
                cartList
        );


        return "Cart";
    }


    // =====================================================
    // REMOVE FROM CART
    // =====================================================

    @RequestMapping("/removeFromCart")
    public String removeFromCart(
            @RequestParam("cartId") int cartId,
            HttpSession session) {

        if (session.getAttribute("customer") == null) {

            return "redirect:/customerLoginPage";
        }


        cartService.removeFromCart(
                cartId
        );


        return "redirect:/viewCart";
    }


    // =====================================================
    // UPDATE CART QUANTITY
    // =====================================================

    @RequestMapping("/updateCartQuantity")
    public String updateCartQuantity(
            @RequestParam("cartId") int cartId,
            @RequestParam("quantity") int quantity,
            HttpSession session) {

        if (session.getAttribute("customer") == null) {

            return "redirect:/customerLoginPage";
        }


        if (quantity < 1) {

            quantity = 1;
        }


        cartService.updateQuantity(
                cartId,
                quantity
        );


        return "redirect:/viewCart";
    }


    // =====================================================
    // PLACE ORDER
    // =====================================================

    @RequestMapping("/placeOrder")
    public String placeOrder(
            HttpSession session) {

        Customer customer =
                (Customer) session.getAttribute(
                        "customer"
                );

        if (customer == null) {

            return "redirect:/customerLoginPage";
        }


        Object adminObject =
                session.getAttribute(
                        "selectedAdminId"
                );

        if (adminObject == null) {

            return "redirect:/selectRestaurant";
        }


        int adminId =
                (Integer) adminObject;


        List<CartItem> cartList =
                cartService.getCustomerCart(
                        customer.getCustomerId()
                );


        if (cartList.isEmpty()) {

            return "redirect:/viewCart";
        }


        float grandTotal = 0;


        for (CartItem item : cartList) {

            grandTotal +=
                    item.getPrice()
                    * item.getQuantity();
        }


        Order order = new Order();

        order.setCustomerId(
                customer.getCustomerId()
        );

        order.setAdminId(
                adminId
        );

        order.setTotalAmount(
                grandTotal
        );

        order.setOrderStatus(
                "Pending"
        );


        int orderId =
                orderService.createOrder(
                        order
                );


        order.setOrderId(
                orderId
        );


        for (CartItem item : cartList) {

            OrderItem orderItem =
                    new OrderItem();

            orderItem.setOrderId(
                    orderId
            );

            orderItem.setFoodId(
                    item.getFoodId()
            );

            orderItem.setQuantity(
                    item.getQuantity()
            );

            orderItem.setPrice(
                    item.getPrice()
            );


            orderService.addOrderItem(
                    orderItem
            );
        }


        cartService.clearCart(
                customer.getCustomerId()
        );


        session.setAttribute(
                "order",
                order
        );


        return "OrderSuccess";
    }


    // =====================================================
    // CUSTOMER ORDERS
    // =====================================================

    @RequestMapping("/myOrders")
    public String myOrders(
            Model model,
            HttpSession session) {

        Customer customer =
                (Customer) session.getAttribute(
                        "customer"
                );

        if (customer == null) {

            return "redirect:/customerLoginPage";
        }


        List<Order> orderList =
                orderService.getCustomerOrders(
                        customer.getCustomerId()
                );


        model.addAttribute(
                "orderList",
                orderList
        );


        return "MyOrders";
    }


    // =====================================================
    // CONTACT QUERY PAGE
    // =====================================================

    @RequestMapping("/contactQueryPage")
    public String contactQueryPage(
            HttpSession session) {

        if (session.getAttribute("customer") == null) {

            return "redirect:/customerLoginPage";
        }


        if (session.getAttribute(
                "selectedAdminId") == null) {

            return "redirect:/selectRestaurant";
        }


        return "ContactQuery";
    }


    // =====================================================
    // SUBMIT QUERY
    // =====================================================

    @RequestMapping("/submitQuery")
    public String submitQuery(
            @RequestParam("subject") String subject,
            @RequestParam("message") String message,
            HttpSession session) {


        Customer customer =
                (Customer) session.getAttribute(
                        "customer"
                );

        if (customer == null) {

            return "redirect:/customerLoginPage";
        }


        Object adminObject =
                session.getAttribute(
                        "selectedAdminId"
                );

        if (adminObject == null) {

            return "redirect:/selectRestaurant";
        }


        int adminId =
                (Integer) adminObject;


        ContactQuery query =
                new ContactQuery();


        query.setCustomerId(
                customer.getCustomerId()
        );

        query.setAdminId(
                adminId
        );

        query.setSubject(
                subject
        );

        query.setMessage(
                message
        );

        query.setStatus(
                "Pending"
        );


        contactQueryService.saveQuery(
                query
        );


        return "redirect:/customerHome";
    }


    // =====================================================
    // MY QUERIES
    // =====================================================

    @RequestMapping("/myQueries")
    public String myQueries(
            Model model,
            HttpSession session) {

        Customer customer =
                (Customer) session.getAttribute(
                        "customer"
                );

        if (customer == null) {

            return "redirect:/customerLoginPage";
        }


        List<ContactQuery> queryList =
                contactQueryService
                .getCustomerQueries(
                        customer.getCustomerId()
                );


        model.addAttribute(
                "queryList",
                queryList
        );


        return "MyQueries";
    }


    // =====================================================
    // CUSTOMER LOGOUT
    // =====================================================

    @RequestMapping("/customerLogout")
    public String customerLogout(
            HttpSession session) {

        session.invalidate();

        return "redirect:/";
    }
}