<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="UTF-8">

    <meta name="viewport"
        content="width=device-width, initial-scale=1.0">

    <title>Customer Registration - Restaurant Menu Management</title>


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


    <style>

        /* =========================================
           REGISTRATION BOX
        ========================================= */

        .customer-register-box {
            background: #ffffff;
            padding: 35px;
            border-radius: 10px;
            box-shadow: 0 5px 25px rgba(0, 0, 0, 0.08);
        }


        /* =========================================
           FORM LABELS
        ========================================= */

        .customer-register-box label {
            color: #222222 !important;
            font-weight: 500;
            margin-bottom: 8px;
        }


        /* =========================================
           INPUT FIELDS
        ========================================= */

        .customer-register-box .form-control {
            background: #ffffff !important;
            color: #222222 !important;
            border: 1px solid #dddddd !important;
            height: 50px;
            border-radius: 5px;
        }


        /* Textarea */

        .customer-register-box textarea.form-control {
            height: auto;
            min-height: 120px;
            resize: vertical;
        }


        /* Placeholder */

        .customer-register-box .form-control::placeholder {
            color: #888888 !important;
            opacity: 1;
        }


        /* Input Focus */

        .customer-register-box .form-control:focus {
            background: #ffffff !important;
            color: #222222 !important;
            border-color: #f7b731 !important;
            box-shadow: none !important;
        }


        /* =========================================
           REGISTER BUTTON
        ========================================= */

        .customer-register-btn {
            border: none !important;
            background: #f7b731 !important;
            color: #222222 !important;
            padding: 12px 30px;
            border-radius: 5px;
            font-weight: 600;
            cursor: pointer;
        }


        .customer-register-btn:hover {
            background: #e5a91f !important;
            color: #222222 !important;
        }


        /* =========================================
           REGISTER BOX TEXT
        ========================================= */

        .customer-register-box p {
            color: #555555 !important;
        }


        .customer-register-box a {
            color: #d99a00 !important;
            text-decoration: none;
            font-weight: 500;
        }


        .customer-register-box a:hover {
            color: #f7b731 !important;
        }


        /* =========================================
           SECTION TITLE - LIGHT MODE
        ========================================= */

        .customer-register-section .section-title .sub-title {
            color: #f7b731 !important;
        }


        .customer-register-section .section-title h2 {
            color: #222222 !important;
        }


        .customer-register-section .section-title p {
            color: #555555 !important;
        }


        /* =========================================
           DARK MODE
        ========================================= */

        .theme-dark .customer-register-box {
            background: #252525 !important;
            box-shadow: 0 5px 25px rgba(0, 0, 0, 0.30);
        }


        .theme-dark .customer-register-box label {
            color: #ffffff !important;
        }


        .theme-dark .customer-register-box .form-control {
            background: #333333 !important;
            color: #ffffff !important;
            border: 1px solid #555555 !important;
        }


        .theme-dark .customer-register-box .form-control::placeholder {
            color: #cccccc !important;
            opacity: 1;
        }


        .theme-dark .customer-register-box .form-control:focus {
            background: #333333 !important;
            color: #ffffff !important;
            border-color: #f7b731 !important;
            box-shadow: none !important;
        }


        .theme-dark .customer-register-box p {
            color: #cccccc !important;
        }


        .theme-dark .customer-register-box a {
            color: #f7b731 !important;
        }


        .theme-dark .customer-register-box a:hover {
            color: #ffffff !important;
        }


        /* Dark Section Heading */

        .theme-dark .customer-register-section .section-title h2 {
            color: #ffffff !important;
        }


        .theme-dark .customer-register-section .section-title p {
            color: #cccccc !important;
        }


        .theme-dark .customer-register-section .section-title .sub-title {
            color: #f7b731 !important;
        }


        /* =========================================
           LOGO - LIGHT / DARK MODE
        ========================================= */

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


        /* =========================================
           MOBILE
        ========================================= */

        @media (max-width: 768px) {

            .customer-register-box {
                padding: 25px 20px;
            }

        }

    </style>

</head>


<body>


<!-- =========================================
     NAVBAR START
========================================= -->

<div class="navbar-area fixed-top">


    <!-- Mobile Navbar -->

    <div class="mobile-nav">

        <a href="${pageContext.request.contextPath}/"
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
                    href="${pageContext.request.contextPath}/">

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


                        <!-- Home -->

                        <li class="nav-item">

                            <a href="${pageContext.request.contextPath}/">

                                Home

                            </a>

                        </li>


                        <!-- Customer Login -->

                        <li class="nav-item">

                            <a
                                href="${pageContext.request.contextPath}/customerLoginPage">

                                Customer Login

                            </a>

                        </li>


                        <!-- Register -->

                        <li class="nav-item">

                            <a
                                href="${pageContext.request.contextPath}/registerPage"
                                class="active">

                                Register

                            </a>

                        </li>


                    </ul>

                </div>

            </nav>

        </div>

    </div>

</div>

<!-- =========================================
     NAVBAR END
========================================= -->


<!-- =========================================
     PAGE TITLE START
========================================= -->

<div class="page-title-area page-title-img-one">

    <div class="container">

        <div class="page-title-item">

            <h2>Customer Registration</h2>

            <ul>

                <li>

                    <a href="${pageContext.request.contextPath}/">

                        Home

                    </a>

                </li>

                <li>

                    <i class="bx bx-chevron-right"></i>

                </li>

                <li>

                    Customer Registration

                </li>

            </ul>

        </div>

    </div>

</div>

<!-- =========================================
     PAGE TITLE END
========================================= -->


<!-- =========================================
     REGISTRATION SECTION START
========================================= -->

<section
    class="blog-area pt-100 pb-70 customer-register-section">

    <div class="container">


        <!-- Section Heading -->

        <div class="section-title">

            <span class="sub-title">

                Join Us

            </span>


            <h2>

                Create Your Account

            </h2>


            <p>

                Register as a customer to view the restaurant menu,
                manage your cart and place orders.

            </p>

        </div>


        <!-- Registration Form -->

        <div class="row justify-content-center">

            <div class="col-lg-7 col-md-9">

                <div class="customer-register-box">


                    <form
                        action="${pageContext.request.contextPath}/registerCustomer"
                        method="post">


                        <!-- Customer Name -->

                        <div class="form-group">

                            <label for="customerName">

                                Customer Name

                            </label>

                            <input
                                type="text"
                                id="customerName"
                                name="customerName"
                                class="form-control"
                                placeholder="Enter your name"
                                required>

                        </div>


                        <!-- Email -->

                        <div class="form-group">

                            <label for="email">

                                Email

                            </label>

                            <input
                                type="email"
                                id="email"
                                name="email"
                                class="form-control"
                                placeholder="Enter your email"
                                required>

                        </div>


                        <!-- Mobile -->

                        <div class="form-group">

                            <label for="mobile">

                                Mobile Number

                            </label>

                            <input
                                type="text"
                                id="mobile"
                                name="mobile"
                                class="form-control"
                                placeholder="Enter your mobile number"
                                required>

                        </div>


                        <!-- Password -->

                        <div class="form-group">

                            <label for="password">

                                Password

                            </label>

                            <input
                                type="password"
                                id="password"
                                name="password"
                                class="form-control"
                                placeholder="Create a password"
                                required>

                        </div>


                        <!-- Address -->

                        <div class="form-group">

                            <label for="address">

                                Address

                            </label>

                            <textarea
                                id="address"
                                name="address"
                                class="form-control"
                                rows="4"
                                placeholder="Enter your address"
                                required></textarea>

                        </div>


                        <!-- Register Button -->

                        <div class="text-center mt-4">

                            <button
                                type="submit"
                                class="customer-register-btn">

                                Register

                            </button>

                        </div>


                        <!-- Login Link -->

                        <div class="text-center mt-4">

                            <p>

                                Already have an account?

                                <a
                                    href="${pageContext.request.contextPath}/customerLoginPage">

                                    Login here

                                </a>

                            </p>

                        </div>


                        <!-- Back Home -->

                        <div class="text-center">

                            <a
                                href="${pageContext.request.contextPath}/">

                                Back to Home

                            </a>

                        </div>


                    </form>

                </div>

            </div>

        </div>

    </div>

</section>

<!-- =========================================
     REGISTRATION SECTION END
========================================= -->


<!-- =========================================
     FOOTER START
========================================= -->

<footer class="footer-area-two pt-100 pb-70">

    <div class="container">

        <div class="row justify-content-center">


            <!-- About -->

            <div class="col-sm-6 col-lg-4">

                <div class="footer-item">

                    <div class="footer-logo">

                        <a
                            href="${pageContext.request.contextPath}/">

                            <img
                                src="${pageContext.request.contextPath}/assets/img/logo-two.png"
                                alt="Logo">

                        </a>


                        <p>

                            Restaurant Menu Management System
                            for managing restaurant food items,
                            customer orders and queries easily.

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

                            <a
                                href="${pageContext.request.contextPath}/">

                                Home

                            </a>

                        </li>


                        <li>

                            <a
                                href="${pageContext.request.contextPath}/customerLoginPage">

                                Customer Login

                            </a>

                        </li>


                        <li>

                            <a
                                href="${pageContext.request.contextPath}/registerPage">

                                Register

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

                            <i class="bx bx-phone"></i>

                            +91 9503221889

                        </li>


                        <li>

                            <i class="bx bx-map"></i>

                            Pune, India

                        </li>

                    </ul>

                </div>

            </div>


        </div>

    </div>

</footer>

<!-- =========================================
     FOOTER END
========================================= -->


<!-- =========================================
     COPYRIGHT START
========================================= -->

<div class="copyright-area copyright-area-two">

    <div class="container">

        <div class="copyright-item">

            <p>

                @ Restaurant Menu Management System

            </p>

        </div>

    </div>

</div>

<!-- =========================================
     COPYRIGHT END
========================================= -->


<!-- =========================================
     JAVASCRIPT
========================================= -->

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