<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="UTF-8">

    <meta name="viewport"
        content="width=device-width, initial-scale=1.0">

    <title>Order Successful - Restaurant Menu Management</title>


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
         ORDER SUCCESS PAGE CSS
    ================================================== -->

    <style>

        /* =================================================
           ORDER SUCCESS BOX - LIGHT MODE
        ================================================= */

        .order-success-box {
            background: #ffffff !important;
            padding: 40px;
            border-radius: 8px;
            box-shadow: 0 5px 30px rgba(0, 0, 0, 0.08);
            text-align: center;
            margin-bottom: 30px;
        }


        .order-success-box h2 {
            margin-bottom: 10px;
            color: #222222 !important;
        }


        .order-success-box > p {
            color: #666666 !important;
            margin-bottom: 30px;
        }


        /* =================================================
           SUCCESS ICON
        ================================================= */

        .success-icon {
            width: 80px;
            height: 80px;
            line-height: 80px;
            border-radius: 50%;
            margin: 0 auto 25px;
            background: #fff4d6 !important;
            color: #f7b731 !important;
            font-size: 45px;
        }


        .success-icon i {
            color: #f7b731 !important;
        }


        /* =================================================
           ORDER DETAILS
        ================================================= */

        .order-details {
            max-width: 550px;
            margin: 0 auto 30px;
            border: 1px solid #eeeeee;
            border-radius: 8px;
            overflow: hidden;
            background: #ffffff !important;
        }


        .order-detail-row {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 15px 20px;
            border-bottom: 1px solid #eeeeee;
            text-align: left;
        }


        .order-detail-row:last-child {
            border-bottom: none;
        }


        .order-detail-row strong {
            font-weight: 600;
            color: #222222 !important;
        }


        .order-detail-row span {
            color: #666666 !important;
        }


        /* =================================================
           ORDER STATUS
        ================================================= */

        .status-pending {
            font-weight: 600;
            color: #f7b731 !important;
        }


        /* =================================================
           BUTTONS
        ================================================= */

        .success-btn {
            display: inline-block;
            padding: 12px 25px;
            margin: 5px;
            border-radius: 5px;
            color: #222222 !important;
            background: #f7b731 !important;
            text-decoration: none !important;
            font-weight: 600;
            transition: 0.3s;
        }


        .success-btn i {
            margin-right: 5px;
        }


        .success-btn:hover {
            color: #222222 !important;
            background: #e5a91f !important;
            text-decoration: none !important;
            transform: translateY(-2px);
        }


        /* =================================================
           HOME BUTTON
        ================================================= */

        .home-btn {
            background: #333333 !important;
            color: #ffffff !important;
        }


        .home-btn:hover {
            background: #222222 !important;
            color: #ffffff !important;
        }


        /* =================================================
           DARK MODE - SUCCESS BOX
        ================================================= */

        .theme-dark .order-success-box {
            background: #252525 !important;
            box-shadow: 0 5px 30px rgba(0, 0, 0, 0.30);
        }


        .theme-dark .order-success-box h2 {
            color: #ffffff !important;
        }


        .theme-dark .order-success-box > p {
            color: #cccccc !important;
        }


        /* =================================================
           DARK MODE - SUCCESS ICON
        ================================================= */

        .theme-dark .success-icon {
            background: #3a321f !important;
            color: #f7b731 !important;
        }


        .theme-dark .success-icon i {
            color: #f7b731 !important;
        }


        /* =================================================
           DARK MODE - ORDER DETAILS
        ================================================= */

        .theme-dark .order-details {
            background: #303030 !important;
            border-color: #444444 !important;
        }


        .theme-dark .order-detail-row {
            border-color: #444444 !important;
        }


        .theme-dark .order-detail-row strong {
            color: #ffffff !important;
        }


        .theme-dark .order-detail-row span {
            color: #cccccc !important;
        }


        .theme-dark .status-pending {
            color: #f7b731 !important;
        }


        /* =================================================
           DARK MODE - BUTTONS
        ================================================= */

        .theme-dark .success-btn {
            background: #f7b731 !important;
            color: #222222 !important;
        }


        .theme-dark .success-btn:hover {
            background: #e5a91f !important;
            color: #222222 !important;
        }


        .theme-dark .home-btn {
            background: #444444 !important;
            color: #ffffff !important;
        }


        .theme-dark .home-btn:hover {
            background: #555555 !important;
            color: #ffffff !important;
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

            .order-success-box {
                padding: 25px 20px;
            }


            .order-details {
                width: 100%;
            }


            .order-detail-row {
                display: block;
            }


            .order-detail-row strong {
                display: block;
                margin-bottom: 5px;
            }


            .success-btn {
                display: block;
                margin: 10px auto;
                max-width: 250px;
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


<!-- =================================================
     PAGE TITLE
================================================== -->

<div class="page-title-area page-title-img-one">

    <div class="container">

        <div class="page-title-item">

            <h2>
                Order Successful
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

                    Order Successful

                </li>

            </ul>

        </div>

    </div>

</div>


<!-- =================================================
     ORDER SUCCESS
================================================== -->

<section class="blog-area pt-100 pb-70">

    <div class="container">


        <div class="order-success-box">


            <!-- Success Icon -->

            <div class="success-icon">

                <i class="bx bx-check"></i>

            </div>


            <!-- Heading -->

            <h2>

                Order Placed Successfully!

            </h2>


            <p>

                Thank you for ordering from our restaurant.
                Your order has been placed successfully.

            </p>


            <!-- =================================================
                 ORDER DETAILS
            ================================================== -->

            <div class="order-details">


                <!-- Order ID -->

                <div class="order-detail-row">

                    <strong>

                        Order ID

                    </strong>

                    <span>

                        ${order.orderId}

                    </span>

                </div>


                <!-- Customer -->

                <div class="order-detail-row">

                    <strong>

                        Customer

                    </strong>

                    <span>

                        ${sessionScope.customer.customerName}

                    </span>

                </div>


                <!-- Total Amount -->

                <div class="order-detail-row">

                    <strong>

                        Total Amount

                    </strong>

                    <span class="status-pending">

                        ₹${order.totalAmount}

                    </span>

                </div>


                <!-- Order Status -->

                <div class="order-detail-row">

                    <strong>

                        Order Status

                    </strong>

                    <span class="status-pending">

                        ${order.orderStatus}

                    </span>

                </div>


            </div>


            <!-- =================================================
                 BUTTONS
            ================================================== -->


            <a href="${pageContext.request.contextPath}/customerMenu"
               class="success-btn">

                <i class="bx bx-restaurant"></i>

                Continue Shopping

            </a>


            <a href="${pageContext.request.contextPath}/myOrders"
               class="success-btn">

                <i class="bx bx-package"></i>

                View My Orders

            </a>


            <a href="${pageContext.request.contextPath}/customerHome"
               class="success-btn home-btn">

                <i class="bx bx-home"></i>

                Back to Home

            </a>


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