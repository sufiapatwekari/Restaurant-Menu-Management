<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="UTF-8">

    <meta name="viewport"
        content="width=device-width, initial-scale=1.0">

    <title>Restaurant Menu Management System</title>


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

    <!-- Slick Slider CSS -->
    <link rel="stylesheet"
        href="${pageContext.request.contextPath}/assets/css/slick.min.css">

    <link rel="stylesheet"
        href="${pageContext.request.contextPath}/assets/css/slick-theme.min.css">

    <!-- Magnific Popup CSS -->
    <link rel="stylesheet"
        href="${pageContext.request.contextPath}/assets/css/magnific-popup.min.css">

    <!-- Main Template CSS -->
    <link rel="stylesheet"
        href="${pageContext.request.contextPath}/assets/css/style.css">

    <!-- Responsive CSS -->
    <link rel="stylesheet"
        href="${pageContext.request.contextPath}/assets/css/responsive.css">

    <!-- Dark Theme CSS -->
    <link rel="stylesheet"
        href="${pageContext.request.contextPath}/assets/css/theme-dark.css">


    <style>

        /* =========================================================
           ACCESS SECTION
        ========================================================= */

        .access-area {
            padding-top: 100px;
            padding-bottom: 70px;

            /*
             * Background image
             */
            background-image:
                linear-gradient(
                    rgba(255,255,255,0.88),
                    rgba(255,255,255,0.88)
                ),
                url('${pageContext.request.contextPath}/assets/img/home-three/about1.jpg');

            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
            background-attachment: fixed;
        }

        .access-area .section-title {
            margin-bottom: 45px;
        }

        .access-card {
            height: 100%;
            background: #ffffff;
            padding: 40px 30px 35px;
            text-align: center;
            border-radius: 10px;
            box-shadow: 0 5px 25px rgba(0, 0, 0, 0.08);

            display: flex;
            flex-direction: column;

            transition: all 0.3s ease;
        }

        .access-card:hover {
            transform: translateY(-5px);
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.12);
        }


        /* =========================================================
           ACCESS ICON
        ========================================================= */

        .access-icon {
            width: 75px;
            height: 75px;
            line-height: 75px;

            margin: 0 auto 25px;

            background: #fff8e5;
            border-radius: 50%;

            text-align: center;
        }

        .access-icon i {
            font-size: 34px;
            color: #f7b731;
        }


        /* =========================================================
           ACCESS CARD TEXT
        ========================================================= */

        .access-card h3 {
            font-size: 22px;
            margin-bottom: 15px;
            color: #222222;
        }

        .access-card p {
            color: #666666;
            line-height: 1.7;

            min-height: 82px;

            margin-bottom: 28px;
        }


        /* =========================================================
           ACCESS BUTTON
        ========================================================= */

        .access-button-area {
            margin-top: auto;
        }

        .access-btn {
            display: inline-block;

            padding: 12px 28px;

            background: #f7b731;
            color: #ffffff;

            border-radius: 5px;

            font-size: 15px;
            font-weight: 600;

            text-decoration: none;

            transition: all 0.3s ease;
        }

        .access-btn:hover {
            background: #e9a900;
            color: #ffffff;
            text-decoration: none;
        }


.access-button-area {
    margin-top: auto;
}

.access-button-area .access-btn {
    margin: 5px;
}

        /* =========================================================
           HERO SECTION
        ========================================================= */

        .banner-area-one {

            padding-top: 180px !important;
            padding-bottom: 100px !important;

            /*
             * Main hero background
             */
            background-image:
                linear-gradient(
                    rgba(0,0,0,0.48),
                    rgba(0,0,0,0.48)
                ),
                url('${pageContext.request.contextPath}/assets/img/home-three/banner-main.jpg');

            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;

            position: relative;
            overflow: hidden;
        }

        .banner-area-one .banner-content {
            max-width: 700px;
            position: relative;
            z-index: 2;
        }

        .banner-area-one .banner-content h1 {
            margin-bottom: 20px;
        }

        .banner-area-one .banner-content p {
            max-width: 650px;
            margin-bottom: 30px;
        }

        .banner-btn {
            display: flex;
            flex-wrap: wrap;
            align-items: center;
            gap: 15px;
        }


        /* =========================================================
           HERO TEXT VISIBILITY
        ========================================================= */

        .banner-area-one .banner-content span {
            color: #f7b731;
            font-weight: 600;
        }

        .banner-area-one .banner-content h1 {
            color: #ffffff;
        }

        .banner-area-one .banner-content p {
            color: #ffffff;
        }


        /* =========================================================
           SECOND IMAGE DETAIL
        ========================================================= */

        .banner-area-one::after {

            content: "";

            position: absolute;

            width: 330px;
            height: 330px;

            right: 5%;
            top: 50%;

            transform: translateY(-50%);

            background-image:
                url('${pageContext.request.contextPath}/assets/img/home-three/banner1.jpg');

            background-size: cover;
            background-position: center;

            border-radius: 50%;

            border: 8px solid rgba(255,255,255,0.18);

            box-shadow:
                0 15px 40px rgba(0,0,0,0.35);

            z-index: 1;
        }

        /* =========================================================
           NAVBAR
        ========================================================= */

        .header-area {
            position: relative;
            z-index: 9999;
        }

        .navbar-area {
            position: relative;
            z-index: 9999;
        }


        /* =========================================================
           LOGO FIX
        ========================================================= */

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


        /* =========================================================
           PREVENT DUPLICATE NAVBAR
        ========================================================= */

        @media only screen and (min-width: 992px) {

            .main-responsive-nav {
                display: none !important;
            }

            .main-nav {
                display: block !important;
            }

            .main-nav .navbar-brand {
                display: inline-block !important;
            }

            .main-nav .navbar-brand img {
                max-height: 60px;
                width: auto;
            }
        }


        /* =========================================================
           MOBILE / TABLET
        ========================================================= */

        @media only screen and (max-width: 991px) {

            .main-nav {
                display: none !important;
            }

            .main-responsive-nav {
                display: block !important;
            }

            .banner-area-one {
                padding-top: 125px !important;
                padding-bottom: 80px !important;
            }

            /*
             * Hide circular image on tablet/mobile
             * so it does not overlap text.
             */
            .banner-area-one::after {
                display: none;
            }
        }


        /* =========================================================
           MOBILE HERO
        ========================================================= */

        @media only screen and (max-width: 767px) {

            .banner-area-one {
                padding-top: 110px !important;
                padding-bottom: 70px !important;
            }

            .banner-area-one .banner-content {
                max-width: 100%;
                padding-top: 20px;
            }

            .banner-btn {
                justify-content: center;
            }

            .access-area {
                padding-top: 70px;
                padding-bottom: 40px;
            }

            .access-card {
                margin-bottom: 30px;
            }
        }


        /* =========================================================
           DARK THEME - ACCESS SECTION
        ========================================================= */

        .theme-dark .access-area {

            background-image:
                linear-gradient(
                    rgba(20,20,20,0.88),
                    rgba(20,20,20,0.88)
                ),
                url('${pageContext.request.contextPath}/assets/img/home-three/about1.jpg');
        }

        .theme-dark .access-card {
            background: #252525;
        }

        .theme-dark .access-card h3 {
            color: #ffffff !important;
        }

        .theme-dark .access-card p {
            color: #cccccc !important;
        }

        .theme-dark .access-icon {
            background: #303030;
        }

        .theme-dark .access-icon i {
            color: #f7b731;
        }

        .theme-dark .access-card:hover {
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.35);
        }

        .theme-dark .section-title h2 {
            color: #ffffff !important;
        }

        .theme-dark .section-title p {
            color: #cccccc !important;
        }


        /* =========================================================
           DARK THEME - HERO
        ========================================================= */

        .theme-dark .banner-area-one {
            background-image:
                linear-gradient(
                    rgba(0,0,0,0.58),
                    rgba(0,0,0,0.58)
                ),
                url('${pageContext.request.contextPath}/assets/img/home-three/banner-main.jpg');
        }

        .theme-dark .banner-area-one .banner-content span {
            color: #f7b731;
        }

        .theme-dark .banner-area-one .banner-content h1 {
            color: #ffffff;
        }

        .theme-dark .banner-area-one .banner-content p {
            color: #cccccc;
        }


        /* =========================================================
           FOOTER
        ========================================================= */

        .footer-area-two {

            position: relative;

            background-image:
                linear-gradient(
                    rgba(0,0,0,0.78),
                    rgba(0,0,0,0.78)
                ),
                url('${pageContext.request.contextPath}/assets/img/contact-bg.jpg');

            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
        }

        .footer-area-two .footer-item {
            position: relative;
            z-index: 2;
        }

        .footer-area-two .footer-item p {
            line-height: 1.8;
        }

        .footer-area-two .footer-item ul {
            margin: 0;
            padding: 0;
        }

        .footer-area-two .footer-item h3 {
            color: #ffffff;
        }

        .footer-area-two .footer-item p,
        .footer-area-two .footer-item li {
            color: #dddddd;
        }

        .footer-area-two .footer-item a {
            color: #dddddd;
        }

        .footer-area-two .footer-item a:hover {
            color: #f7b731;
        }


        /* =========================================================
           DARK THEME - FOOTER
        ========================================================= */

        .theme-dark .footer-area-two {

            background-image:
                linear-gradient(
                    rgba(0,0,0,0.84),
                    rgba(0,0,0,0.84)
                ),
                url('${pageContext.request.contextPath}/assets/img/contact-bg.jpg');
        }

        .theme-dark .footer-area-two .footer-item h3 {
            color: #ffffff;
        }

        .theme-dark .footer-area-two .footer-item p,
        .theme-dark .footer-area-two .footer-item li {
            color: #cccccc;
        }


        /* =========================================================
           COPYRIGHT
        ========================================================= */

        .copyright-area-two {
            position: relative;
            z-index: 2;
        }


        /* =========================================================
           RESPONSIVE ACCESS SECTION
        ========================================================= */

        @media only screen and (max-width: 991px) {

            .access-area {
                padding-top: 80px;
                padding-bottom: 50px;
                background-attachment: scroll;
            }

            .access-card {
                padding: 35px 25px 30px;
            }
        }


        @media only screen and (max-width: 767px) {

            .access-area {
                padding-top: 70px;
                padding-bottom: 40px;
            }

            .access-card {
                margin-bottom: 30px;
            }

            .banner-area-one .banner-content {
                max-width: 100%;
            }

            .banner-btn {
                justify-content: center;
            }

            .footer-area-two {
                background-attachment: scroll;
            }
        }

    </style>

</head>


<body>


    <!-- =========================================================
         NAVBAR START
    ========================================================= -->

    <header class="header-area">

        <div class="navbar-area navbar-area-three">


            <!-- =================================================
                 MOBILE NAVBAR
            ================================================= -->

            <div class="main-responsive-nav">

                <div class="container">

                    <div class="main-responsive-menu">

                        <div class="logo">

                            <a href="${pageContext.request.contextPath}/">

                                <img
                                    src="${pageContext.request.contextPath}/assets/img/logo-two.png"
                                    alt="Restaurant Logo">

                            </a>

                        </div>

                    </div>

                </div>

            </div>


            <!-- =================================================
                 DESKTOP NAVBAR
            ================================================= -->

            <div class="main-nav main-nav-three">

                <div class="container">

                    <nav class="navbar navbar-expand-md navbar-light">


                        <!-- DESKTOP LOGO -->

                        <a class="navbar-brand"
                           href="${pageContext.request.contextPath}/">

                            <!-- Light Theme Logo -->

                            <img
                                src="${pageContext.request.contextPath}/assets/img/logo.png"
                                class="logo-one"
                                alt="Restaurant Logo">

                            <!-- Dark Theme Logo -->

                            <img
                                src="${pageContext.request.contextPath}/assets/img/logo-two.png"
                                class="logo-two"
                                alt="Restaurant Logo">

                        </a>


                        <!-- NAVIGATION -->

                        <div class="collapse navbar-collapse mean-menu">

                            <ul class="navbar-nav m-auto">


                                <!-- Home -->

                                <li class="nav-item">

                                    <a
                                        href="${pageContext.request.contextPath}/"
                                        class="nav-link active">

                                        Home

                                    </a>

                                </li>


                                <!-- Admin Login -->

                                <li class="nav-item">

                                    <a
                                        href="${pageContext.request.contextPath}/loginPage"
                                        class="nav-link">

                                        Admin Login

                                    </a>

                                </li>


                                        <!-- Admin Register -->
                         <li class="nav-item">
                              <a href="${pageContext.request.contextPath}/adminRegisterPage"
                                class="nav-link">
                                Admin Register
                             </a>
                          </li>
                                <!-- Customer Login -->

                                <li class="nav-item">

                                    <a
                                        href="${pageContext.request.contextPath}/customerLoginPage"
                                        class="nav-link">

                                        Customer Login

                                    </a>

                                </li>


                                <!-- Register -->

                                <li class="nav-item">

                                  <a href="${pageContext.request.contextPath}/adminRegisterPage"
                                        class="common-btn">
                                        Admin Register
                                  </a>


                                </li>

                            </ul>

                        </div>

                    </nav>

                </div>

            </div>

        </div>

    </header>


    <!-- =========================================================
         NAVBAR END
    ========================================================= -->


    <!-- =========================================================
         HERO SECTION START
    ========================================================= -->

    <section class="banner-area banner-area-one">

        <div class="container">

            <div class="banner-content">


                <span>
                    Welcome to Our Restaurant
                </span>


                <h1>
                    Restaurant Menu Management System
                </h1>


                <p>
                    Explore our restaurant menu, place your orders
                    and manage everything easily through our
                    online restaurant system.
                </p>


                <div class="banner-btn">


                    <!-- Customer Login -->

                    <a
                        href="${pageContext.request.contextPath}/customerLoginPage"
                        class="common-btn">

                        Customer Login

                    </a>


                    <!-- Admin Register -->
                         <a href="${pageContext.request.contextPath}/adminRegisterPage"
                                class="common-btn">
                                Register Admin
                             </a>


                </div>

            </div>

        </div>

    </section>


    <!-- =========================================================
         HERO SECTION END
    ========================================================= -->


    <!-- =========================================================
         ACCESS SECTION START
    ========================================================= -->

    <section class="access-area">

        <div class="container">


            <!-- Section Heading -->

            <div class="section-title">

                <span>
                    Restaurant Management
                </span>

                <h2>
                    Choose Your Access
                </h2>

                <p>
                    Login according to your role and access
                    the features available to you.
                </p>

            </div>


            <!-- Access Cards -->

            <div class="row justify-content-center">


                <!-- ADMIN CARD -->

                <div class="col-lg-4 col-md-6 mb-30">

                    <div class="access-card">


                        <div class="access-icon">

                            <i class="bx bx-user"></i>

                        </div>


                        <h3>
                            Admin
                        </h3>


                        <p>
                            Manage restaurant menu items,
                            update food details and handle
                            restaurant operations from the
                            admin panel.
                        </p>


                        <div class="access-button-area">

                            <a
                                href="${pageContext.request.contextPath}/loginPage"
                                class="access-btn">

                                Admin Login

                            </a>
                            
                             <a href="${pageContext.request.contextPath}/adminRegisterPage"
                                class="access-btn">
                                Register Admin
                             </a>

                        </div>

                    </div>

                </div>


                <!-- CUSTOMER CARD -->

                <div class="col-lg-4 col-md-6 mb-30">

                    <div class="access-card">


                        <div class="access-icon">

                            <i class="bx bx-user-circle"></i>

                        </div>


                        <h3>
                            Customer
                        </h3>


                        <p>
                            Browse the restaurant menu,
                            add food to your cart, place
                            orders and manage your
                            customer account.
                        </p>


                        <div class="access-button-area">

                            <a
                                href="${pageContext.request.contextPath}/customerLoginPage"
                                class="access-btn">

                                Customer Login

                            </a>

                        </div>

                    </div>

                </div>


                <!-- NEW CUSTOMER CARD -->

                <div class="col-lg-4 col-md-6 mb-30">

                    <div class="access-card">


                        <div class="access-icon">

                            <i class="bx bx-edit"></i>

                        </div>


                        <h3>
                            New Customer
                        </h3>


                        <p>
                            Create a new account to explore
                            the restaurant menu, place orders
                            and use customer features.
                        </p>


                        <div class="access-button-area">

                            <a
                                href="${pageContext.request.contextPath}/registerPage"
                                class="access-btn">

                                Register Now

                            </a>

                        </div>

                    </div>

                </div>


            </div>

        </div>

    </section>


    <!-- =========================================================
         ACCESS SECTION END
    ========================================================= -->


    <!-- =========================================================
         FOOTER START
    ========================================================= -->

    <footer class="footer-area-two pt-100 pb-70">

        <div class="container">

            <div class="row justify-content-center">


                <!-- ABOUT -->

                <div class="col-sm-6 col-lg-3">

                    <div class="footer-item">


                        <div class="footer-logo">

                            <a
                                href="${pageContext.request.contextPath}/">

                                <img
                                    src="${pageContext.request.contextPath}/assets/img/logo-two.png"
                                    alt="Restaurant Logo">

                            </a>

                        </div>


                        <p>

                            Restaurant Menu Management System
                            provides an easy way to manage menu,
                            customers and restaurant orders.

                        </p>

                    </div>

                </div>


                <!-- MENU MANAGEMENT -->

                <div class="col-sm-6 col-lg-3">

                    <div class="footer-item">

                        <h3>
                            Menu Management
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
                                    href="${pageContext.request.contextPath}/loginPage">

                                    Admin Login

                                </a>

                            </li>
                                     
                            <li>
                               <a href="${pageContext.request.contextPath}/adminRegisterPage">
                               Admin Register
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


                <!-- QUICK LINKS -->

                <div class="col-sm-6 col-lg-3">

                    <div class="footer-item">

                        <h3>
                            Quick Links
                        </h3>


                        <ul>

                            <li>

                                <a
                                    href="${pageContext.request.contextPath}/customerLoginPage">

                                    View Menu

                                </a>

                            </li>


                            <li>

                                <a
                                    href="${pageContext.request.contextPath}/registerPage">

                                    Create Account

                                </a>

                            </li>


                            <li>

                                <a
                                    href="${pageContext.request.contextPath}/loginPage">

                                    Admin Panel

                                </a>

                            </li>

                        </ul>

                    </div>

                </div>


                <!-- RESTAURANT -->

                <div class="col-sm-6 col-lg-3">

                    <div class="footer-item">

                        <h3>
                            Restaurant
                        </h3>


                        <ul>

                            <li>
                                Restaurant Menu Management System
                            </li>


                            <li>
                                Online Menu & Ordering
                            </li>


                            <li>
                                Customer Support
                            </li>

                        </ul>

                    </div>

                </div>


            </div>

        </div>

    </footer>


    <!-- =========================================================
         FOOTER END
    ========================================================= -->


    <!-- =========================================================
         COPYRIGHT START
    ========================================================= -->

    <div class="copyright-area copyright-area-two">

        <div class="container">

            <div class="copyright-item text-center">

                <p>

                    © 2026 Restaurant Menu Management System.
                    All Rights Reserved.

                </p>

            </div>

        </div>

    </div>


    <!-- =========================================================
         COPYRIGHT END
    ========================================================= -->


    <!-- =========================================================
         JAVASCRIPT
    ========================================================= -->

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