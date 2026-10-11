<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c"
    uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="UTF-8">

    <meta name="viewport"
        content="width=device-width, initial-scale=1.0">

    <title>My Orders - Restaurant Menu Management</title>


    <!-- Bootstrap CSS -->
    <link rel="stylesheet"
        href="${pageContext.request.contextPath}/assets/css/bootstrap.min.css">

    <!-- Meanmenu CSS -->
    <link rel="stylesheet"
        href="${pageContext.request.contextPath}/assets/css/meanmenu.css">

    <!-- Boxicons CSS -->
    <link rel="stylesheet"
        href="${pageContext.request.contextPath}/assets/css/boxicons.min.css">

    <!-- Owl Carousel CSS -->
    <link rel="stylesheet"
        href="${pageContext.request.contextPath}/assets/css/owl.carousel.min.css">

    <link rel="stylesheet"
        href="${pageContext.request.contextPath}/assets/css/owl.theme.default.min.css">

    <!-- Slick CSS -->
    <link rel="stylesheet"
        href="${pageContext.request.contextPath}/assets/css/slick.min.css">

    <link rel="stylesheet"
        href="${pageContext.request.contextPath}/assets/css/slick-theme.min.css">

    <!-- Magnific Popup CSS -->
    <link rel="stylesheet"
        href="${pageContext.request.contextPath}/assets/css/magnific-popup.min.css">

    <!-- Main CSS -->
    <link rel="stylesheet"
        href="${pageContext.request.contextPath}/assets/css/style.css">

    <!-- Responsive CSS -->
    <link rel="stylesheet"
        href="${pageContext.request.contextPath}/assets/css/responsive.css">

    <!-- Dark Theme CSS -->
    <link rel="stylesheet"
        href="${pageContext.request.contextPath}/assets/css/theme-dark.css">


    <!-- =================================================
         MY ORDERS PAGE CSS
    ================================================== -->

    <style>

        /* =================================================
           ORDERS BOX - LIGHT MODE
        ================================================= */

        .orders-box {
            background: #ffffff !important;
            padding: 40px;
            border-radius: 8px;
            box-shadow: 0 5px 30px rgba(0, 0, 0, 0.08);
            margin-bottom: 30px;
        }


        .orders-box > h2 {
            text-align: center;
            margin-bottom: 10px;
            color: #222222 !important;
        }


        .orders-box > p {
            text-align: center;
            margin-bottom: 30px;
            color: #666666 !important;
        }


        /* =================================================
           ORDER CARD - LIGHT MODE
        ================================================= */

        .order-card {
            background: #f8f8f8 !important;
            border: 1px solid #eeeeee;
            border-radius: 8px;
            padding: 25px;
            margin-bottom: 25px;
            transition: 0.3s;
        }


        .order-card:hover {
            transform: translateY(-3px);
            box-shadow: 0 8px 25px rgba(0, 0, 0, 0.08);
        }


        .order-card h3 {
            margin-bottom: 20px;
            color: #222222 !important;
        }


        .order-card h3 i {
            color: #f7b731 !important;
            margin-right: 8px;
        }


        /* =================================================
           ORDER INFORMATION
        ================================================= */

        .order-info {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 13px 0;
            border-bottom: 1px solid #e5e5e5;
        }


        .order-info:last-child {
            border-bottom: none;
        }


        .order-info strong {
            color: #222222 !important;
        }


        .order-info span {
            color: #666666 !important;
        }


        /* =================================================
           TOTAL AMOUNT
        ================================================= */

        .order-total {
            font-size: 20px;
            font-weight: 600;
            color: #f7b731 !important;
        }


        /* =================================================
           ORDER STATUS
        ================================================= */

        .order-status {
            font-weight: 600;
            color: #f7b731 !important;
        }


        /* =================================================
           BUTTON
        ================================================= */

        .order-btn {
            display: inline-block;
            padding: 12px 25px;
            border-radius: 5px;
            color: #222222 !important;
            background: #f7b731 !important;
            text-decoration: none !important;
            margin-top: 20px;
            font-weight: 600;
            transition: 0.3s;
        }


        .order-btn i {
            margin-right: 5px;
        }


        .order-btn:hover {
            color: #222222 !important;
            background: #e5a91f !important;
            text-decoration: none !important;
            transform: translateY(-2px);
        }


        /* =================================================
           EMPTY ORDERS
        ================================================= */

        .empty-orders {
            text-align: center;
            padding: 60px 20px;
        }


        .empty-orders i {
            display: block;
            font-size: 60px;
            margin-bottom: 20px;
            color: #f7b731 !important;
        }


        .empty-orders h3 {
            margin-bottom: 10px;
            color: #222222 !important;
        }


        .empty-orders p {
            color: #666666 !important;
            margin-bottom: 10px;
        }


        /* =================================================
           DARK MODE - ORDERS BOX
        ================================================= */

        .theme-dark .orders-box {
            background: #252525 !important;
            box-shadow: 0 5px 30px rgba(0, 0, 0, 0.30);
        }


        .theme-dark .orders-box > h2 {
            color: #ffffff !important;
        }


        .theme-dark .orders-box > p {
            color: #cccccc !important;
        }


        /* =================================================
           DARK MODE - ORDER CARD
        ================================================= */

        .theme-dark .order-card {
            background: #303030 !important;
            border-color: #444444 !important;
        }


        .theme-dark .order-card:hover {
            background: #383838 !important;
        }


        .theme-dark .order-card h3 {
            color: #ffffff !important;
        }


        .theme-dark .order-info {
            border-color: #444444 !important;
        }


        .theme-dark .order-info strong {
            color: #ffffff !important;
        }


        .theme-dark .order-info span {
            color: #cccccc !important;
        }


        .theme-dark .order-total {
            color: #f7b731 !important;
        }


        .theme-dark .order-status {
            color: #f7b731 !important;
        }


        .theme-dark .empty-orders h3 {
            color: #ffffff !important;
        }


        .theme-dark .empty-orders p {
            color: #cccccc !important;
        }


        /* =================================================
           LOGO - LIGHT / DARK MODE
        ================================================= */

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


        /* =================================================
           MOBILE
        ================================================= */

        @media (max-width: 768px) {

            .orders-box {
                padding: 25px 20px;
            }


            .order-card {
                padding: 20px;
            }


            .order-info {
                display: block;
            }


            .order-info strong {
                display: block;
                margin-bottom: 5px;
            }


            .empty-orders {
                padding: 40px 15px;
            }

        }

    </style>

</head>


<body>


<!-- =================================================
     NAVBAR
================================================== -->

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


                <!-- Navigation -->

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

                            <a href="${pageContext.request.contextPath}/viewCart">

                                My Cart

                            </a>

                        </li>


                        <li class="nav-item">

                            <a href="${pageContext.request.contextPath}/myOrders"
                               class="active">

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


<!-- =================================================
     PAGE TITLE
================================================== -->

<div class="page-title-area page-title-img-one">

    <div class="container">

        <div class="page-title-item">

            <h2>
                My Orders
            </h2>

            <ul>

                <li>

                    <a href="${pageContext.request.contextPath}/customerHome">

                        Home

                    </a>

                </li>


                <li>

                    <i class="bx bx-chevron-right"></i>

                </li>


                <li>

                    My Orders

                </li>

            </ul>

        </div>

    </div>

</div>


<!-- =================================================
     MY ORDERS
================================================== -->

<section class="blog-area pt-100 pb-70">

    <div class="container">


        <div class="orders-box">


            <!-- Heading -->

            <h2>
                My Orders
            </h2>

            <p>
                View your previous and current orders.
            </p>


            <!-- =================================================
                 NO ORDERS
            ================================================== -->

            <c:if test="${empty orderList}">

                <div class="empty-orders">

                    <i class="bx bx-package"></i>

                    <h3>
                        No Orders Found
                    </h3>

                    <p>
                        You have not placed any orders yet.
                    </p>


                    <a href="${pageContext.request.contextPath}/customerMenu"
                       class="order-btn">

                        <i class="bx bx-restaurant"></i>

                        Explore Menu

                    </a>

                </div>

            </c:if>


            <!-- =================================================
                 ORDERS
            ================================================== -->

            <c:if test="${not empty orderList}">


                <c:forEach var="order"
                           items="${orderList}">


                    <div class="order-card">


                        <h3>

                            <i class="bx bx-receipt"></i>

                            Order #${order.orderId}

                        </h3>


                        <!-- Order ID -->

                        <div class="order-info">

                            <strong>
                                Order ID
                            </strong>

                            <span>
                                ${order.orderId}
                            </span>

                        </div>


                        <!-- Order Date -->

                        <div class="order-info">

                            <strong>
                                Order Date
                            </strong>

                            <span>
                                ${order.orderDate}
                            </span>

                        </div>


                        <!-- Total Amount -->

                        <div class="order-info">

                            <strong>
                                Total Amount
                            </strong>

                            <span class="order-total">

                                ₹${order.totalAmount}

                            </span>

                        </div>


                        <!-- Order Status -->

                        <div class="order-info">

                            <strong>
                                Order Status
                            </strong>

                            <span class="order-status">

                                ${order.orderStatus}

                            </span>

                        </div>


                    </div>


                </c:forEach>


                <!-- Continue Shopping -->

                <div class="text-center">

                    <a href="${pageContext.request.contextPath}/customerMenu"
                       class="order-btn">

                        <i class="bx bx-restaurant"></i>

                        Continue Shopping

                    </a>

                </div>


            </c:if>


        </div>

    </div>

</section>


<!-- =================================================
     FOOTER
================================================== -->

<footer class="footer-area-two pt-100 pb-70">

    <div class="container">

        <div class="row justify-content-center">


            <!-- Footer Logo -->

            <div class="col-sm-6 col-lg-4">

                <div class="footer-item">

                    <div class="footer-logo">

                        <a href="${pageContext.request.contextPath}/customerHome">

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

                    <h3>
                        Customer Services
                    </h3>


                    <ul>


                        <li>

                            <a href="${pageContext.request.contextPath}/customerHome">

                                Home

                            </a>

                        </li>


                        <li>

                            <a href="${pageContext.request.contextPath}/customerMenu">

                                View Menu

                            </a>

                        </li>


                        <li>

                            <a href="${pageContext.request.contextPath}/viewCart">

                                My Cart

                            </a>

                        </li>


                        <li>

                            <a href="${pageContext.request.contextPath}/myOrders">

                                My Orders

                            </a>

                        </li>


                        <li>

                            <a href="${pageContext.request.contextPath}/myQueries">

                                My Queries

                            </a>

                        </li>


                    </ul>

                </div>

            </div>


            <!-- Contact -->

            <div class="col-sm-6 col-lg-4">

                <div class="footer-item">

                    <h3>
                        Contact Us
                    </h3>


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

                            <a href="${pageContext.request.contextPath}/contactQueryPage">

                                Submit Query

                            </a>

                        </li>


                    </ul>

                </div>

            </div>


        </div>

    </div>

</footer>


<!-- =================================================
     COPYRIGHT
================================================== -->

<div class="copyright-area copyright-area-two">

    <div class="container">

        <div class="copyright-item">

            <p>

                @ Restaurant Menu Management System

            </p>

        </div>

    </div>

</div>


<!-- =================================================
     JAVASCRIPT
================================================== -->

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