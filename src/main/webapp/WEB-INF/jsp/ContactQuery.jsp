<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="UTF-8">

    <meta name="viewport"
        content="width=device-width, initial-scale=1.0">

    <title>Contact Us - Restaurant Menu Management</title>


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
         CONTACT QUERY PAGE CSS
    ================================================== -->

    <style>

        /* =================================================
           QUERY BOX - LIGHT MODE
        ================================================= */

        .query-box {
            background: #ffffff !important;
            padding: 40px;
            border-radius: 8px;
            box-shadow: 0 5px 30px rgba(0, 0, 0, 0.08);
            margin-bottom: 30px;
        }


        .query-box h2 {
            margin-bottom: 10px;
            color: #222222 !important;
        }


        .query-intro {
            color: #666666 !important;
            margin-bottom: 30px;
        }


        /* =================================================
           FORM GROUP
        ================================================= */

        .query-form-group {
            margin-bottom: 20px;
        }


        .query-form-group label {
            display: block;
            margin-bottom: 8px;
            font-weight: 600;
            color: #222222 !important;
        }


        .query-form-group input,
        .query-form-group textarea {
            width: 100%;
            border: 1px solid #dddddd;
            border-radius: 5px;
            padding: 12px 15px;
            outline: none;
            background: #ffffff !important;
            color: #222222 !important;
            transition: 0.3s;
        }


        .query-form-group input {
            height: 50px;
        }


        .query-form-group textarea {
            resize: vertical;
            min-height: 150px;
        }


        .query-form-group input:focus,
        .query-form-group textarea:focus {
            border-color: #f7b731;
            box-shadow: 0 0 0 2px rgba(247, 183, 49, 0.10);
        }


        .query-form-group input::placeholder,
        .query-form-group textarea::placeholder {
            color: #999999;
        }


        /* =================================================
           SUBMIT BUTTON
        ================================================= */

        .submit-query-btn {
            display: inline-block;
            border: none;
            padding: 12px 30px;
            border-radius: 5px;
            color: #222222 !important;
            background: #f7b731 !important;
            cursor: pointer;
            font-weight: 600;
            transition: 0.3s;
        }


        .submit-query-btn i {
            margin-right: 5px;
        }


        .submit-query-btn:hover {
            color: #222222 !important;
            background: #e5a91f !important;
            transform: translateY(-2px);
        }


        /* =================================================
           BACK BUTTON
        ================================================= */

        .back-btn {
            display: inline-block;
            padding: 12px 30px;
            margin-left: 10px;
            border-radius: 5px;
            color: #ffffff !important;
            background: #333333 !important;
            text-decoration: none !important;
            font-weight: 600;
            transition: 0.3s;
        }


        .back-btn:hover {
            color: #ffffff !important;
            background: #222222 !important;
            text-decoration: none !important;
            transform: translateY(-2px);
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
           DARK MODE - QUERY BOX
        ================================================= */

        .theme-dark .query-box {
            background: #252525 !important;
            box-shadow: 0 5px 30px rgba(0, 0, 0, 0.30);
        }


        .theme-dark .query-box h2 {
            color: #ffffff !important;
        }


        .theme-dark .query-intro {
            color: #cccccc !important;
        }


        /* =================================================
           DARK MODE - FORM
        ================================================= */

        .theme-dark .query-form-group label {
            color: #ffffff !important;
        }


        .theme-dark .query-form-group input,
        .theme-dark .query-form-group textarea {
            background: #303030 !important;
            border-color: #444444 !important;
            color: #ffffff !important;
        }


        .theme-dark .query-form-group input:focus,
        .theme-dark .query-form-group textarea:focus {
            border-color: #f7b731 !important;
        }


        .theme-dark .query-form-group input::placeholder,
        .theme-dark .query-form-group textarea::placeholder {
            color: #999999;
        }


        /* =================================================
           MOBILE
        ================================================= */

        @media (max-width: 768px) {

            .query-box {
                padding: 25px 20px;
            }


            .submit-query-btn,
            .back-btn {
                padding: 11px 20px;
            }


            .back-btn {
                margin-left: 5px;
            }

        }


        @media (max-width: 480px) {

            .submit-query-btn,
            .back-btn {
                display: block;
                width: 100%;
                text-align: center;
                margin: 10px 0 0 0;
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
                Contact Us
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

                    Contact Us

                </li>


            </ul>

        </div>

    </div>

</div>


<!-- =================================================
     CONTACT QUERY
================================================== -->

<section class="blog-area pt-100 pb-70">

    <div class="container">

        <div class="row justify-content-center">

            <div class="col-lg-8">


                <div class="query-box">


                    <!-- Heading -->

                    <h2>
                        Submit Your Query
                    </h2>


                    <p class="query-intro">

                        Have a question or problem?
                        Send us your query and our team will
                        get back to you.

                    </p>


                    <!-- Query Form -->

                    <form action="${pageContext.request.contextPath}/submitQuery"
                          method="post">


                        <!-- Subject -->

                        <div class="query-form-group">

                            <label for="subject">

                                Subject

                            </label>


                            <input
                                type="text"
                                id="subject"
                                name="subject"
                                placeholder="Enter query subject"
                                required>

                        </div>


                        <!-- Message -->

                        <div class="query-form-group">

                            <label for="message">

                                Message

                            </label>


                            <textarea
                                id="message"
                                name="message"
                                rows="6"
                                placeholder="Enter your query"
                                required></textarea>

                        </div>


                        <!-- Buttons -->

                        <button
                            type="submit"
                            class="submit-query-btn">

                            <i class="bx bx-send"></i>

                            Submit Query

                        </button>


                        <a
                            href="${pageContext.request.contextPath}/customerHome"
                            class="back-btn">

                            Back to Home

                        </a>


                    </form>


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