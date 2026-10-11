<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>My Cart - Restaurant Menu Management</title>

<!-- Bootstrap CSS -->
<link rel="stylesheet"
    href="${pageContext.request.contextPath}/assets/css/bootstrap.min.css">

<link rel="stylesheet"
    href="${pageContext.request.contextPath}/assets/css/meanmenu.css">

<link rel="stylesheet"
    href="${pageContext.request.contextPath}/assets/css/boxicons.min.css">

<link rel="stylesheet"
    href="${pageContext.request.contextPath}/assets/css/owl.carousel.min.css">

<link rel="stylesheet"
    href="${pageContext.request.contextPath}/assets/css/owl.theme.default.min.css">

<link rel="stylesheet"
    href="${pageContext.request.contextPath}/assets/css/slick.min.css">

<link rel="stylesheet"
    href="${pageContext.request.contextPath}/assets/css/slick-theme.min.css">

<link rel="stylesheet"
    href="${pageContext.request.contextPath}/assets/css/magnific-popup.min.css">

<link rel="stylesheet"
    href="${pageContext.request.contextPath}/assets/css/style.css">

<link rel="stylesheet"
    href="${pageContext.request.contextPath}/assets/css/responsive.css">

<link rel="stylesheet"
    href="${pageContext.request.contextPath}/assets/css/theme-dark.css">


<style>

/* ================================
   CART BOX
================================ */

.cart-box {
    background: #ffffff;
    padding: 30px;
    border-radius: 8px;
    box-shadow: 0 5px 30px rgba(0, 0, 0, 0.08);
    margin-bottom: 30px;
}

.cart-item {
    padding: 25px 0;
    border-bottom: 1px solid #eeeeee;
}

.cart-item:last-child {
    border-bottom: none;
}

.cart-image {
    width: 120px;
    height: 100px;
    object-fit: cover;
    border-radius: 8px;
}

.cart-item h4 {
    font-size: 20px;
    font-weight: 600;
    margin-bottom: 8px;
}

.cart-item p {
    margin-bottom: 8px;
}

.cart-price {
    font-size: 18px;
    font-weight: 600;
    color: #f7b731 !important;
}


/* ================================
   QUANTITY
================================ */

.quantity-form {
    display: flex;
    align-items: center;
    gap: 8px;
}

.quantity-input {
    width: 75px;
    height: 40px;
    border: 1px solid #dddddd;
    border-radius: 5px;
    padding: 8px;
    text-align: center;
}


/* ================================
   BUTTONS
================================ */

.update-btn {
    border: none;
    padding: 8px 15px;
    border-radius: 5px;
    color: #222222;
    background: #f7b731;
    font-size: 14px;
    font-weight: 500;
    cursor: pointer;
}

.update-btn:hover {
    color: #222222;
    background: #e5a91f;
}

.remove-btn {
    display: inline-block;
    padding: 8px 15px;
    border-radius: 5px;
    color: #ffffff;
    background: #dc3545;
    text-decoration: none;
    font-size: 14px;
}

.remove-btn:hover {
    color: #ffffff;
    background: #c82333;
    text-decoration: none;
}


/* ================================
   ITEM TOTAL
================================ */

.item-total {
    text-align: right;
    margin-top: 10px;
    margin-bottom: 0;
}

.item-total span {
    font-weight: 600;
    color: #f7b731;
}


/* ================================
   CART TOTAL
================================ */

.cart-total {
    text-align: right;
    padding-top: 30px;
}

.cart-total h3 {
    font-size: 24px;
    font-weight: 600;
    margin-bottom: 25px;
}

.cart-total h3 span {
    color: #f7b731;
}


/* ================================
   CART BUTTONS
================================ */

.cart-actions {
    display: flex;
    justify-content: flex-end;
    align-items: center;
    gap: 10px;
}

.order-btn,
.menu-btn {
    display: inline-block;
    padding: 12px 25px;
    border-radius: 5px;
    text-decoration: none;
    font-weight: 500;
}

.order-btn {
    color: #222222;
    background: #f7b731;
}

.order-btn:hover {
    color: #222222;
    background: #e5a91f;
    text-decoration: none;
}

.menu-btn {
    color: #ffffff;
    background: #333333;
}

.menu-btn:hover {
    color: #ffffff;
    background: #222222;
    text-decoration: none;
}


/* ================================
   EMPTY CART
================================ */

.empty-cart {
    text-align: center;
    padding: 60px 20px;
}

.empty-cart i {
    display: block;
    font-size: 60px;
    color: #f7b731;
    margin-bottom: 20px;
}

.empty-cart h3 {
    font-size: 25px;
    margin-bottom: 10px;
}

.empty-cart p {
    margin-bottom: 25px;
}


/* ================================
   LOGO - LIGHT / DARK MODE
================================ */

.main-nav .navbar-brand .logo-one {
    display: block !important;
}

.main-nav .navbar-brand .logo-two {
    display: none !important;
}

.theme-dark .main-nav .navbar-brand .logo-one {
    display: none !important;
}

.theme-dark .main-nav .navbar-brand .logo-two {
    display: block !important;
}


/* ================================
   LIGHT MODE
================================ */

body {
    background: #ffffff;
}

.cart-box {
    background: #ffffff !important;
    color: #333333;
}

.cart-item {
    border-color: #eeeeee !important;
}

.cart-item h4 {
    color: #222222;
}

.cart-item p {
    color: #666666;
}

.quantity-input {
    background: #ffffff !important;
    color: #333333 !important;
}


/* ================================
   DARK MODE
================================ */

.theme-dark .cart-box {
    background: #252525 !important;
    color: #ffffff;
    box-shadow: 0 5px 30px rgba(0, 0, 0, 0.20);
}

.theme-dark .cart-item {
    border-color: #444444 !important;
}

.theme-dark .cart-item h4 {
    color: #ffffff !important;
}

.theme-dark .cart-item p {
    color: #cccccc !important;
}

.theme-dark .quantity-input {
    background: #303030 !important;
    border-color: #555555 !important;
    color: #ffffff !important;
}

.theme-dark .menu-btn {
    background: #444444;
    color: #ffffff;
}

.theme-dark .menu-btn:hover {
    background: #555555;
    color: #ffffff;
}

.theme-dark .empty-cart h3 {
    color: #ffffff !important;
}

.theme-dark .empty-cart p {
    color: #cccccc !important;
}


/* ================================
   RESPONSIVE
================================ */

@media only screen and (max-width: 991px) {

    .cart-box {
        padding: 25px;
    }

    .cart-image {
        width: 100px;
        height: 85px;
    }

    .cart-item h4 {
        font-size: 18px;
    }

    .cart-actions {
        justify-content: center;
    }

    .cart-total {
        text-align: center;
    }
}


@media only screen and (max-width: 767px) {

    .cart-box {
        padding: 20px;
    }

    .cart-item {
        text-align: center;
    }

    .cart-image {
        margin-bottom: 15px;
    }

    .quantity-form {
        justify-content: center;
        margin: 15px 0;
    }

    .item-total {
        text-align: center;
        margin-top: 15px;
    }

    .cart-total {
        text-align: center;
    }

    .cart-actions {
        flex-direction: column;
        gap: 10px;
    }

    .menu-btn,
    .order-btn {
        width: 100%;
        text-align: center;
    }
}

</style>

</head>


<body>


<!-- ================================
     NAVBAR START
================================ -->

<div class="navbar-area fixed-top">

    <!-- Mobile Navbar -->
    <div class="mobile-nav">

        <a href="${pageContext.request.contextPath}/customerHome"
            class="logo">

            <img
                src="${pageContext.request.contextPath}/assets/img/logo-two.png"
                alt="Logo">

        </a>

    </div>


    <!-- Desktop Navbar -->
    <div class="main-nav main-nav-three">

        <div class="container">

            <nav class="navbar navbar-expand-md navbar-light">

                <!-- Logo -->
                <a class="navbar-brand"
                    href="${pageContext.request.contextPath}/customerHome">

                    <img
                        src="${pageContext.request.contextPath}/assets/img/logo.png"
                        class="logo-one"
                        alt="Logo">

                    <img
                        src="${pageContext.request.contextPath}/assets/img/logo-two.png"
                        class="logo-two"
                        alt="Logo">

                </a>


                <!-- Menu -->
                <div class="collapse navbar-collapse mean-menu"
                    id="navbarSupportedContent">

                    <ul class="navbar-nav">

                        <li class="nav-item">
                            <a href="${pageContext.request.contextPath}/customerHome">
                                Home
                            </a>
                        </li>

                        <li class="nav-item">
                            <a href="${pageContext.request.contextPath}/customerMenu">
                                Menu
                            </a>
                        </li>

                        <li class="nav-item">
                            <a href="${pageContext.request.contextPath}/viewCart"
                                class="active">
                                My Cart
                            </a>
                        </li>

                        <li class="nav-item">
                            <a href="${pageContext.request.contextPath}/myOrders">
                                My Orders
                            </a>
                        </li>

                        <li class="nav-item">
                            <a href="${pageContext.request.contextPath}/myQueries">
                                My Queries
                            </a>
                        </li>

                        <li class="nav-item">
                            <a href="${pageContext.request.contextPath}/customerLogout">
                                Logout
                            </a>
                        </li>

                    </ul>


                    <!-- Customer Name -->
                    <div class="side-nav">

                        <span class="nav-tel">

                            <i class="bx bx-user"></i>

                            ${sessionScope.customer.customerName}

                        </span>

                    </div>

                </div>

            </nav>

        </div>

    </div>

</div>

<!-- ================================
     NAVBAR END
================================ -->


<!-- ================================
     PAGE TITLE START
================================ -->

<div class="page-title-area page-title-img-one">

    <div class="container">

        <div class="page-title-item">

            <h2>My Cart</h2>

            <ul>

                <li>
                    Restaurant Menu Management
                </li>

            </ul>

        </div>

    </div>

</div>

<!-- ================================
     PAGE TITLE END
================================ -->


<!-- ================================
     CART START
================================ -->

<section class="blog-area pt-100 pb-70">

    <div class="container">

        <div class="cart-box">


            <!-- EMPTY CART -->

            <c:if test="${empty cartList}">

                <div class="empty-cart">

                    <i class="bx bx-cart"></i>

                    <h3>Your Cart is Empty</h3>

                    <p>
                        Add some delicious food items from our menu.
                    </p>

                    <a
                        href="${pageContext.request.contextPath}/customerMenu"
                        class="order-btn">

                        View Menu

                    </a>

                </div>

            </c:if>


            <!-- CART ITEMS -->

            <c:if test="${not empty cartList}">

                <c:set var="grandTotal" value="0" />


                <c:forEach var="item" items="${cartList}">

                    <div class="cart-item">

                        <div class="row align-items-center">


                            <!-- Food Image -->

                            <div class="col-lg-2 col-md-2 col-sm-12">

                                <img
                                    src="${pageContext.request.contextPath}/${item.foodImage}"
                                    class="cart-image"
                                    alt="${item.foodName}">

                            </div>


                            <!-- Food Details -->

                            <div class="col-lg-3 col-md-3 col-sm-12">

                                <h4>
                                    ${item.foodName}
                                </h4>

                                <p>
                                    ${item.description}
                                </p>

                            </div>


                            <!-- Price -->

                            <div class="col-lg-2 col-md-2 col-sm-12">

                                <p class="cart-price">
                                    ₹${item.price}
                                </p>

                            </div>


                            <!-- Quantity -->

                            <div class="col-lg-3 col-md-3 col-sm-12">

                                <form
                                    action="${pageContext.request.contextPath}/updateCartQuantity"
                                    method="post"
                                    class="quantity-form">

                                    <input
                                        type="hidden"
                                        name="cartId"
                                        value="${item.cartId}">

                                    <input
                                        type="number"
                                        name="quantity"
                                        value="${item.quantity}"
                                        min="1"
                                        class="quantity-input"
                                        required>

                                    <button
                                        type="submit"
                                        class="update-btn">

                                        Update

                                    </button>

                                </form>

                            </div>


                            <!-- Remove -->

                            <div class="col-lg-2 col-md-2 col-sm-12 text-center">

                                <a
                                    href="${pageContext.request.contextPath}/removeFromCart?cartId=${item.cartId}"
                                    class="remove-btn">

                                    Remove

                                </a>

                            </div>

                        </div>


                        <!-- Item Total -->

                        <div class="row">

                            <div class="col-12">

                                <p class="item-total">

                                    Item Total:
                                    <span>
                                        ₹${item.price * item.quantity}
                                    </span>

                                </p>

                            </div>

                        </div>


                        <!-- Calculate Grand Total -->

                        <c:set
                            var="grandTotal"
                            value="${grandTotal + (item.price * item.quantity)}" />

                    </div>

                </c:forEach>


                <!-- CART TOTAL -->

                <div class="cart-total">

                    <h3>
                        Grand Total:
                        <span>₹${grandTotal}</span>
                    </h3>


                    <div class="cart-actions">

                        <a
                            href="${pageContext.request.contextPath}/customerMenu"
                            class="menu-btn">

                            Continue Shopping

                        </a>


                        <a
                            href="${pageContext.request.contextPath}/placeOrder"
                            class="order-btn">

                            Place Order

                        </a>

                    </div>

                </div>

            </c:if>

        </div>

    </div>

</section>

<!-- ================================
     CART END
================================ -->


<!-- ================================
     FOOTER START
================================ -->

<footer class="footer-area-two pt-100 pb-70">

    <div class="container">

        <div class="row justify-content-center">


            <!-- Logo -->

            <div class="col-sm-6 col-lg-4">

                <div class="footer-item">

                    <div class="footer-logo">

                        <a
                            href="${pageContext.request.contextPath}/customerHome">

                            <img
                                src="${pageContext.request.contextPath}/assets/img/logo-two.png"
                                alt="Logo">

                        </a>

                        <p>
                            Restaurant Menu Management System
                            for ordering delicious food easily.
                        </p>

                    </div>

                </div>

            </div>


            <!-- Customer Services -->

            <div class="col-sm-6 col-lg-4">

                <div class="footer-item">

                    <h3>Customer Services</h3>

                    <ul>

                        <li>
                            <a
                                href="${pageContext.request.contextPath}/customerHome">
                                Home
                            </a>
                        </li>

                        <li>
                            <a
                                href="${pageContext.request.contextPath}/customerMenu">
                                View Menu
                            </a>
                        </li>

                        <li>
                            <a
                                href="${pageContext.request.contextPath}/viewCart">
                                My Cart
                            </a>
                        </li>

                        <li>
                            <a
                                href="${pageContext.request.contextPath}/myOrders">
                                My Orders
                            </a>
                        </li>

                        <li>
                            <a
                                href="${pageContext.request.contextPath}/myQueries">
                                My Queries
                            </a>
                        </li>

                    </ul>

                </div>

            </div>


            <!-- Contact -->

            <div class="col-sm-6 col-lg-4">

                <div class="footer-item">

                    <h3>Contact Us</h3>

                    <ul>

                        <li>
                            <i class="bx bx-user"></i>
                            ${sessionScope.customer.customerName}
                        </li>

                        <li>
                            <i class="bx bx-phone"></i>
                            +91 9503221889
                        </li>

                        <li>
                            <i class="bx bx-map"></i>
                            Pune, India
                        </li>

                        <li>

                            <i class="bx bx-message-detail"></i>

                            <a
                                href="${pageContext.request.contextPath}/contactQueryPage">

                                Submit Query

                            </a>

                        </li>

                    </ul>

                </div>

            </div>

        </div>

    </div>

</footer>

<!-- ================================
     FOOTER END
================================ -->


<!-- ================================
     COPYRIGHT START
================================ -->

<div class="copyright-area copyright-area-two">

    <div class="container">

        <div class="copyright-item">

            <p>
                @ Restaurant Menu Management System
            </p>

        </div>

    </div>

</div>

<!-- ================================
     COPYRIGHT END
================================ -->


<!-- ================================
     JAVASCRIPT
================================ -->

<script
    src="${pageContext.request.contextPath}/assets/js/jquery.min.js">
</script>

<script
    src="${pageContext.request.contextPath}/assets/js/bootstrap.bundle.min.js">
</script>

<script
    src="${pageContext.request.contextPath}/assets/js/jquery.meanmenu.js">
</script>

<script
    src="${pageContext.request.contextPath}/assets/js/owl.carousel.min.js">
</script>

<script
    src="${pageContext.request.contextPath}/assets/js/jquery.mixitup.min.js">
</script>

<script
    src="${pageContext.request.contextPath}/assets/js/slick.min.js">
</script>

<script
    src="${pageContext.request.contextPath}/assets/js/jquery.ajaxchimp.min.js">
</script>

<script
    src="${pageContext.request.contextPath}/assets/js/form-validator.min.js">
</script>

<script
    src="${pageContext.request.contextPath}/assets/js/contact-form-script.js">
</script>

<script
    src="${pageContext.request.contextPath}/assets/js/jquery.magnific-popup.min.js">
</script>

<script
    src="${pageContext.request.contextPath}/assets/js/custom.js">
</script>

</body>

</html>