<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="UTF-8">

    <meta name="viewport"
        content="width=device-width, initial-scale=1.0">

    <title>Admin Login | Restaurant Menu Management</title>


    <!-- ================= BOOTSTRAP CSS ================= -->

    <link rel="stylesheet"
        href="${pageContext.request.contextPath}/assets/css/bootstrap.min.css">


    <!-- ================= MEANMENU CSS ================= -->

    <link rel="stylesheet"
        href="${pageContext.request.contextPath}/assets/css/meanmenu.css">


    <!-- ================= BOXICONS CSS ================= -->

    <link rel="stylesheet"
        href="${pageContext.request.contextPath}/assets/css/boxicons.min.css">


    <!-- ================= OWL CAROUSEL CSS ================= -->

    <link rel="stylesheet"
        href="${pageContext.request.contextPath}/assets/css/owl.carousel.min.css">

    <link rel="stylesheet"
        href="${pageContext.request.contextPath}/assets/css/owl.theme.default.min.css">


    <!-- ================= SLICK CSS ================= -->

    <link rel="stylesheet"
        href="${pageContext.request.contextPath}/assets/css/slick.min.css">

    <link rel="stylesheet"
        href="${pageContext.request.contextPath}/assets/css/slick-theme.min.css">


    <!-- ================= MAGNIFIC POPUP CSS ================= -->

    <link rel="stylesheet"
        href="${pageContext.request.contextPath}/assets/css/magnific-popup.min.css">


    <!-- ================= MAIN STYLE CSS ================= -->

    <link rel="stylesheet"
        href="${pageContext.request.contextPath}/assets/css/style.css">


    <!-- ================= RESPONSIVE CSS ================= -->

    <link rel="stylesheet"
        href="${pageContext.request.contextPath}/assets/css/responsive.css">


    <!-- ================= DARK THEME CSS ================= -->

    <link rel="stylesheet"
        href="${pageContext.request.contextPath}/assets/css/theme-dark.css">


    <style>

        /* =====================================================
           LOGIN SECTION
        ===================================================== */

        .admin-login-area {
            padding-top: 100px;
            padding-bottom: 100px;
        }


        /* =====================================================
           LOGIN BOX
        ===================================================== */

        .admin-login-box {
            max-width: 520px;
            margin: 0 auto;

            padding: 45px 40px;

            background: #ffffff;

            border-radius: 10px;

            box-shadow: 0 5px 30px rgba(0, 0, 0, 0.08);
        }


        /* =====================================================
           LOGIN ICON
        ===================================================== */

        .admin-login-icon {
            width: 75px;
            height: 75px;

            line-height: 75px;

            margin: 0 auto 20px;

            text-align: center;

            border-radius: 50%;

            background: #fff8e5;

            color: #f7b731;

            font-size: 34px;
        }


        /* =====================================================
           LOGIN HEADING
        ===================================================== */

        .admin-login-box h3 {
            text-align: center;

            font-size: 28px;

            margin-bottom: 10px;

            color: #222222;
        }


        .admin-login-subtitle {
            text-align: center;

            color: #666666;

            margin-bottom: 30px;

            line-height: 1.7;
        }


        /* =====================================================
           FORM
        ===================================================== */

        .admin-login-form {
            margin-top: 20px;
        }


        .admin-login-form label {
            display: block;

            margin-bottom: 8px;

            color: #333333;

            font-weight: 600;

            font-size: 15px;
        }


        /* =====================================================
           INPUT
        ===================================================== */

        .admin-login-form .form-control {
            height: 52px;

            border: 1px solid #dddddd;

            border-radius: 5px;

            padding: 12px 15px;

            font-size: 15px;

            box-shadow: none;
        }


        .admin-login-form .form-control:focus {
            border-color: #f7b731;

            box-shadow: none;
        }


        .login-field {
            margin-bottom: 20px;
        }


        /* =====================================================
           LOGIN BUTTON
        ===================================================== */

        .admin-login-btn {
            width: 100%;

            border: none;

            padding: 14px 25px;

            background: #f7b731;

            color: #ffffff;

            border-radius: 5px;

            font-size: 16px;

            font-weight: 600;

            cursor: pointer;

            transition: all 0.3s ease;
        }


        .admin-login-btn:hover {
            background: #e9a900;

            color: #ffffff;
        }


        /* =====================================================
           ERROR MESSAGE
        ===================================================== */

        .login-error {
            padding: 12px 15px;

            margin-bottom: 20px;

            border-radius: 5px;

            background: #fff0f0;

            border: 1px solid #f1b5b5;

            color: #c62828;

            font-size: 14px;

            text-align: center;
        }


        /* =====================================================
           BACK HOME
        ===================================================== */

        .login-back-home {
            text-align: center;

            margin-top: 25px;
        }


        .login-back-home a {
            color: #f7b731;

            font-size: 14px;

            font-weight: 600;

            text-decoration: none;
        }


        .login-back-home a:hover {
            color: #e9a900;

            text-decoration: none;
        }


        /* =====================================================
           DARK THEME
        ===================================================== */

        .theme-dark .admin-login-box {
            background: #252525;
        }


        .theme-dark .admin-login-box h3 {
            color: #ffffff !important;
        }


        .theme-dark .admin-login-subtitle {
            color: #cccccc;
        }


        .theme-dark .admin-login-form label {
            color: #ffffff;
        }


        .theme-dark .admin-login-form .form-control {
            background: #303030;

            border-color: #444444;

            color: #ffffff;
        }


        .theme-dark .admin-login-form .form-control::placeholder {
            color: #999999;
        }


        .theme-dark .admin-login-form .form-control:focus {
            border-color: #f7b731;

            background: #303030;

            color: #ffffff;
        }


        .theme-dark .admin-login-icon {
            background: #303030;

            color: #f7b731;
        }


        .theme-dark .login-back-home a {
            color: #f7b731;
        }


        .theme-dark .login-error {
            background: #3a2525;

            border-color: #633838;

            color: #ffb3b3;
        }


        /* =====================================================
           FOOTER
        ===================================================== */

        .footer-area-two .footer-item p {
            line-height: 1.8;
        }


        .footer-area-two .footer-item ul {
            margin: 0;

            padding: 0;
        }


        /* =====================================================
           DARK FOOTER
        ===================================================== */

        .theme-dark .footer-area-two .footer-item h3 {
            color: #ffffff;
        }


        .theme-dark .footer-area-two .footer-item p,
        .theme-dark .footer-area-two .footer-item li {
            color: #cccccc;
        }


        /* =====================================================
           NAVBAR
        ===================================================== */

        .header-area {
            position: relative;

            z-index: 9999;
        }


        .navbar-area {
            position: relative;

            z-index: 9999;
        }


        /* =====================================================
           DESKTOP NAVBAR
        ===================================================== */

        @media only screen and (min-width: 992px) {

            .main-responsive-nav {
                display: none !important;
            }

            .main-nav {
                display: block !important;
            }

        }


        /* =====================================================
           MOBILE NAVBAR
        ===================================================== */

        @media only screen and (max-width: 991px) {

            .main-nav {
                display: none !important;
            }

            .main-responsive-nav {
                display: block !important;
            }

        }


        /* =====================================================
           RESPONSIVE LOGIN
        ===================================================== */

        @media only screen and (max-width: 767px) {

            .admin-login-area {
                padding-top: 70px;

                padding-bottom: 60px;
            }


            .admin-login-box {
                padding: 35px 25px;
            }


            .admin-login-box h3 {
                font-size: 25px;
            }

        }

    </style>

</head>


<body>


    <!-- =====================================================
         NAVBAR START
    ===================================================== -->

    <header class="header-area">

        <div class="navbar-area navbar-area-three">


            <!-- ================= MOBILE NAVBAR ================= -->

            <div class="main-responsive-nav">

                <div class="container">

                    <div class="main-responsive-menu">

                        <div class="logo">

                            <a href="${pageContext.request.contextPath}/menuHome">

                                <img
                                    src="${pageContext.request.contextPath}/assets/img/logo-two.png"
                                    alt="Restaurant Logo">

                            </a>

                        </div>

                    </div>

                </div>

            </div>


            <!-- ================= DESKTOP NAVBAR ================= -->

            <div class="main-nav main-nav-three">

                <div class="container">

                    <nav class="navbar navbar-expand-md navbar-light">


                        <!-- Logo -->

                        <a class="navbar-brand"
                           href="${pageContext.request.contextPath}/menuHome">

                            <img
                                src="${pageContext.request.contextPath}/assets/img/logo.png"
                                class="logo-one"
                                alt="Restaurant Logo">

                            <img
                                src="${pageContext.request.contextPath}/assets/img/logo-two.png"
                                class="logo-two"
                                alt="Restaurant Logo">

                        </a>


                        <!-- Navigation -->

                        <div class="collapse navbar-collapse mean-menu"
                             id="navbarSupportedContent">


                            <ul class="navbar-nav">


                                <li class="nav-item">

                                    <a
                                        href="${pageContext.request.contextPath}/"
                                        class="nav-link">

                                        Home

                                    </a>

                                </li>


                                <li class="nav-item">

                                    <a
                                        href="${pageContext.request.contextPath}/loginPage"
                                        class="nav-link active">

                                        Admin Login

                                    </a>

                                </li>


                                <li class="nav-item">

                                    <a
                                        href="${pageContext.request.contextPath}/customerLoginPage"
                                        class="nav-link">

                                        Customer Login

                                    </a>

                                </li>


                                <li class="nav-item">

                                    <a
                                        href="${pageContext.request.contextPath}/registerPage"
                                        class="nav-link">

                                        Register

                                    </a>

                                </li>


                            </ul>


                            <!-- Right Side -->

                            <div class="side-nav">

                                <span class="nav-tel">

                                    <i class="bx bx-user"></i>

                                    Admin

                                </span>

                            </div>


                        </div>

                    </nav>

                </div>

            </div>

        </div>

    </header>


    <!-- =====================================================
         NAVBAR END
    ===================================================== -->


    <!-- =====================================================
         PAGE TITLE START
    ===================================================== -->

    <div class="page-title-area page-title-img-one">

        <div class="container">

            <div class="page-title-item">

                <h2>
                    Admin Login
                </h2>

                <ul>

                    <li>
                        Restaurant Menu Management
                    </li>

                </ul>

            </div>

        </div>

    </div>


    <!-- =====================================================
         PAGE TITLE END
    ===================================================== -->


    <!-- =====================================================
         LOGIN SECTION START
    ===================================================== -->

    <section class="admin-login-area">

        <div class="container">

            <div class="row justify-content-center">

                <div class="col-lg-6 col-md-8">


                    <div class="admin-login-box">


                        <!-- Login Icon -->

                        <div class="admin-login-icon">

                            <i class="bx bx-user"></i>

                        </div>


                        <!-- Heading -->

                        <h3>
                            Admin Login
                        </h3>


                        <p class="admin-login-subtitle">

                            Login to manage your restaurant menu
                            and access the admin panel.

                        </p>


                        <!-- Error Message -->

                        <% if (request.getAttribute("error") != null) { %>

                            <div class="login-error">

                                <%= request.getAttribute("error") %>

                            </div>

                        <% } %>


                        <!-- Login Form -->

                        <form
                            action="${pageContext.request.contextPath}/login"
                            method="post"
                            class="admin-login-form">


                            <!-- Username -->

                            <div class="login-field">

                                <label for="username">
                                    Username
                                </label>

                                <input
                                    type="text"
                                    id="username"
                                    name="username"
                                    class="form-control"
                                    placeholder="Enter username"
                                    required>

                            </div>


                            <!-- Password -->

                            <div class="login-field">

                                <label for="password">
                                    Password
                                </label>

                                <input
                                    type="password"
                                    id="password"
                                    name="password"
                                    class="form-control"
                                    placeholder="Enter password"
                                    required>

                            </div>


                            <!-- Login Button -->

                            <button
                                type="submit"
                                class="admin-login-btn">

                                Login

                            </button>


                        </form>


                        <!-- Back Home -->

                        <div class="login-back-home">

                            <a
                                href="${pageContext.request.contextPath}/">

                                <i class="bx bx-left-arrow-alt"></i>

                                Back to Home

                            </a>

                        </div>


                    </div>

                </div>

            </div>

        </div>

    </section>


    <!-- =====================================================
         LOGIN SECTION END
    ===================================================== -->


    <!-- =====================================================
         FOOTER START
    ===================================================== -->

    <footer class="footer-area-two pt-100 pb-70">

        <div class="container">

            <div class="row justify-content-center">


                <!-- ================= FOOTER LOGO ================= -->

                <div class="col-sm-6 col-lg-3">

                    <div class="footer-item">

                        <div class="footer-logo">

                            <a
                                href="${pageContext.request.contextPath}/">

                                <img
                                    src="${pageContext.request.contextPath}/assets/img/logo-two.png"
                                    alt="Restaurant Logo">

                            </a>

                            <p>

                                Restaurant Menu Management System
                                for managing restaurant food items
                                easily.

                            </p>

                        </div>

                    </div>

                </div>


                <!-- ================= MENU MANAGEMENT ================= -->

                <div class="col-sm-6 col-lg-3">

                    <div class="footer-item">

                        <div class="footer-service">

                            <h3>
                                Menu Management
                            </h3>

                            <ul>

                                <li>

                                    <a
                                        href="${pageContext.request.contextPath}/loginPage">

                                        <i class="bx bx-chevron-right"></i>

                                        Admin Login

                                    </a>

                                </li>


                                <li>

                                    <a
                                        href="${pageContext.request.contextPath}/customerLoginPage">

                                        <i class="bx bx-chevron-right"></i>

                                        Customer Login

                                    </a>

                                </li>


                                <li>

                                    <a
                                        href="${pageContext.request.contextPath}/registerPage">

                                        <i class="bx bx-chevron-right"></i>

                                        Register

                                    </a>

                                </li>

                            </ul>

                        </div>

                    </div>

                </div>


                <!-- ================= QUICK LINKS ================= -->

                <div class="col-sm-6 col-lg-3">

                    <div class="footer-item">

                        <div class="footer-service">

                            <h3>
                                Quick Links
                            </h3>

                            <ul>

                                <li>

                                    <a
                                        href="${pageContext.request.contextPath}/">

                                        <i class="bx bx-chevron-right"></i>

                                        Home

                                    </a>

                                </li>


                                <li>

                                    <a
                                        href="${pageContext.request.contextPath}/customerLoginPage">

                                        <i class="bx bx-chevron-right"></i>

                                        Customer Login

                                    </a>

                                </li>


                                <li>

                                    <a
                                        href="${pageContext.request.contextPath}/registerPage">

                                        <i class="bx bx-chevron-right"></i>

                                        Create Account

                                    </a>

                                </li>

                            </ul>

                        </div>

                    </div>

                </div>


                <!-- ================= RESTAURANT ================= -->

                <div class="col-sm-6 col-lg-3">

                    <div class="footer-item">

                        <div class="footer-service">

                            <h3>
                                Restaurant
                            </h3>

                            <ul>

                                <li>

                                    <i class="bx bx-user"></i>

                                    Admin Panel

                                </li>


                                <li>

                                    <i class="bx bx-phone-call"></i>

                                    +91 9503221889

                                </li>


                                <li>

                                    <i class="bx bx-location-plus"></i>

                                    Pune, India

                                </li>

                            </ul>

                        </div>

                    </div>

                </div>


            </div>

        </div>

    </footer>


    <!-- =====================================================
         FOOTER END
    ===================================================== -->


    <!-- =====================================================
         COPYRIGHT START
    ===================================================== -->

    <div class="copyright-area copyright-area-two">

        <div class="container">

            <div class="copyright-item">

                <p>

                    @ Restaurant Menu Management System

                </p>

            </div>

        </div>

    </div>


    <!-- =====================================================
         COPYRIGHT END
    ===================================================== -->


    <!-- =====================================================
         JAVASCRIPT
    ===================================================== -->

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