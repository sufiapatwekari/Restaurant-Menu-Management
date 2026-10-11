<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="UTF-8">

    <meta name="viewport"
        content="width=device-width, initial-scale=1.0">

    <title>Customer Home - Restaurant Menu Management</title>


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
         CUSTOMER HOME PAGE CSS
    ================================================== -->

    <style>

        /* =================================================
           CUSTOMER HOME BOX - LIGHT MODE
        ================================================= */

        .customer-home-box {
            background: #ffffff !important;
            padding: 40px;
            border-radius: 8px;
            box-shadow: 0 5px 30px rgba(0, 0, 0, 0.08);
            text-align: center;
            margin-bottom: 30px;
        }


        .customer-home-box h2 {
            margin-bottom: 10px;
            color: #222222 !important;
        }


        .customer-home-box > p {
            margin-bottom: 30px;
            color: #666666 !important;
        }


        /* =================================================
           CUSTOMER OPTIONS - LIGHT MODE
        ================================================= */

        .customer-option {
            display: block;
            padding: 25px 15px;
            margin-bottom: 25px;
            background: #f8f8f8 !important;
            border-radius: 8px;
            text-decoration: none !important;
            transition: 0.3s;
        }


        .customer-option i {
            font-size: 35px;
            margin-bottom: 10px;
            display: block;
            color: #f7b731 !important;
        }


        .customer-option h4 {
            margin-bottom: 5px;
            color: #222222 !important;
        }


        .customer-option p {
            margin: 0;
            font-size: 14px;
            color: #666666 !important;
        }


        .customer-option:hover {
            transform: translateY(-5px);
            text-decoration: none !important;
        }


        /* =================================================
           CUSTOMER HOME BOX - DARK MODE
        ================================================= */

        .theme-dark .customer-home-box {
            background: #252525 !important;
            box-shadow: 0 5px 30px rgba(0, 0, 0, 0.30);
        }


        .theme-dark .customer-home-box h2 {
            color: #ffffff !important;
        }


        .theme-dark .customer-home-box > p {
            color: #cccccc !important;
        }


        /* =================================================
           CUSTOMER OPTIONS - DARK MODE
        ================================================= */

        .theme-dark .customer-option {
            background: #303030 !important;
            color: #ffffff !important;
        }


        .theme-dark .customer-option i {
            color: #f7b731 !important;
        }


        .theme-dark .customer-option h4 {
            color: #ffffff !important;
        }


        .theme-dark .customer-option p {
            color: #cccccc !important;
        }


        .theme-dark .customer-option:hover {
            background: #383838 !important;
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

            .customer-home-box {
                padding: 25px 20px;
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

                            <a href="${pageContext.request.contextPath}/customerHome"
                               class="active">

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
                Welcome, ${sessionScope.customer.customerName}
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
                    Customer Home
                </li>

            </ul>

        </div>

    </div>

</div>


<!-- =================================================
     CUSTOMER HOME
================================================== -->

<section class="blog-area pt-100 pb-70">

    <div class="container">

        <div class="customer-home-box">


            <h2>
                Welcome to Our Restaurant
            </h2>


            <p>
                Explore our delicious menu, add your favourite food
                to cart and place your order easily.
            </p>


            <div class="row">


                <!-- View Menu -->

                <div class="col-sm-6 col-lg-4">

                    <a href="${pageContext.request.contextPath}/customerMenu"
                       class="customer-option">

                        <i class="bx bx-restaurant"></i>

                        <h4>
                            View Menu
                        </h4>

                        <p>
                            Explore our available food items.
                        </p>

                    </a>

                </div>


                <!-- My Cart -->

                <div class="col-sm-6 col-lg-4">

                    <a href="${pageContext.request.contextPath}/viewCart"
                       class="customer-option">

                        <i class="bx bx-cart"></i>

                        <h4>
                            My Cart
                        </h4>

                        <p>
                            View and manage your selected items.
                        </p>

                    </a>

                </div>


                <!-- My Orders -->

                <div class="col-sm-6 col-lg-4">

                    <a href="${pageContext.request.contextPath}/myOrders"
                       class="customer-option">

                        <i class="bx bx-package"></i>

                        <h4>
                            My Orders
                        </h4>

                        <p>
                            Check your previous and current orders.
                        </p>

                    </a>

                </div>


                <!-- Contact Us -->

                <div class="col-sm-6 col-lg-4">

                    <a href="${pageContext.request.contextPath}/contactQueryPage"
                       class="customer-option">

                        <i class="bx bx-message-detail"></i>

                        <h4>
                            Contact Us
                        </h4>

                        <p>
                            Submit your questions or queries.
                        </p>

                    </a>

                </div>


                <!-- My Queries -->

                <div class="col-sm-6 col-lg-4">

                    <a href="${pageContext.request.contextPath}/myQueries"
                       class="customer-option">

                        <i class="bx bx-conversation"></i>

                        <h4>
                            My Queries
                        </h4>

                        <p>
                            Check the status of your queries.
                        </p>

                    </a>

                </div>


                <!-- Logout -->

                <div class="col-sm-6 col-lg-4">

                    <a href="${pageContext.request.contextPath}/customerLogout"
                       class="customer-option">

                        <i class="bx bx-log-out"></i>

                        <h4>
                            Logout
                        </h4>

                        <p>
                            Logout from your customer account.
                        </p>

                    </a>

                </div>


            </div>

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