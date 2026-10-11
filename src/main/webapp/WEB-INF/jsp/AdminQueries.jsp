<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="UTF-8">

    <meta name="viewport"
        content="width=device-width, initial-scale=1.0">

    <title>Customer Queries - Restaurant Menu Management</title>


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


    <!-- Custom Query Page CSS -->
    <style>

        /* ================================
           QUERY SECTION
        ================================= */

        .queries-section {
            padding-top: 100px;
            padding-bottom: 70px;
        }

        .queries-section .section-title {
            margin-bottom: 45px;
        }

        .queries-section .section-title p {
            max-width: 650px;
            margin: 15px auto 0;
            line-height: 1.7;
        }


        /* ================================
           QUERY CARD
        ================================= */

        .query-card {
            background: #ffffff;
            border-radius: 10px;
            padding: 30px;
            margin-bottom: 30px;
            border: 1px solid #eeeeee;
            box-shadow: 0 5px 25px rgba(0, 0, 0, 0.08);
            transition: 0.3s;
        }

        .query-card:hover {
            transform: translateY(-3px);
            box-shadow: 0 8px 30px rgba(0, 0, 0, 0.12);
        }


        /* ================================
           QUERY HEADER
        ================================= */

        .query-header {
            display: flex;
            align-items: center;
            justify-content: space-between;
            padding-bottom: 20px;
            margin-bottom: 25px;
            border-bottom: 1px solid #eeeeee;
        }

        .query-header h3 {
            margin: 0;
            font-size: 23px;
            font-weight: 600;
            color: #222222;
        }

        .query-header h3 i {
            margin-right: 7px;
        }

        .query-status-badge {
            display: inline-block;
            padding: 7px 15px;
            border-radius: 30px;
            background: #fff8e5;
            color: #d89b00;
            font-size: 13px;
            font-weight: 600;
        }


        /* ================================
           QUERY DETAILS
        ================================= */

        .query-details {
            margin-bottom: 5px;
        }

        .query-detail-box {
            padding: 15px 18px;
            background: #f9f9f9;
            border-radius: 6px;
            height: 100%;
        }

        .query-detail-box span {
            display: block;
            font-size: 13px;
            color: #777777;
            margin-bottom: 5px;
        }

        .query-detail-box strong {
            display: block;
            font-size: 15px;
            color: #222222;
            font-weight: 600;
            word-break: break-word;
        }


        /* ================================
           MESSAGE BOX
        ================================= */

        .query-message-box {
            margin-top: 10px;
            padding: 18px;
            background: #f9f9f9;
            border-radius: 6px;
        }

        .query-message-box span {
            display: block;
            font-size: 13px;
            color: #777777;
            margin-bottom: 7px;
            font-weight: 500;
        }

        .query-message-box p {
            margin: 0;
            color: #333333;
            font-size: 15px;
            line-height: 1.7;
            word-break: break-word;
        }


        /* ================================
           UPDATE STATUS
        ================================= */

        .update-query-status {
            margin-top: 25px;
            padding-top: 25px;
            border-top: 1px solid #eeeeee;
        }

        .update-query-status label {
            display: block;
            margin-bottom: 9px;
            font-size: 14px;
            font-weight: 600;
            color: #333333;
        }

        .query-status-form {
            display: flex;
            align-items: center;
            gap: 15px;
        }

        .query-status-form .status-select-box {
            flex: 1;
        }

        .query-status-form .form-control {
            height: 48px;
            border: 1px solid #dddddd;
            border-radius: 5px;
            padding: 10px 15px;
            box-shadow: none;
            font-size: 14px;
        }

        .query-status-form .form-control:focus {
            border-color: #f7b731;
            box-shadow: none;
        }

        .query-status-form .common-btn {
            height: 48px;
            white-space: nowrap;
            border: none;
            cursor: pointer;
        }


        /* ================================
           NO QUERIES
        ================================= */

        .no-queries-box {
            max-width: 600px;
            margin: 0 auto 30px;
            padding: 50px 30px;
            text-align: center;
            background: #ffffff;
            border-radius: 10px;
            box-shadow: 0 5px 25px rgba(0, 0, 0, 0.07);
        }

        .no-queries-box i {
            font-size: 55px;
            color: #f7b731;
            margin-bottom: 15px;
        }

        .no-queries-box h3 {
            margin-bottom: 10px;
            font-size: 24px;
        }

        .no-queries-box p {
            margin-bottom: 0;
            color: #777777;
        }


        /* ================================
           DARK THEME
        ================================= */

        .theme-dark .query-card {
            background: #252525;
            border-color: #333333;
        }

        .theme-dark .query-header {
            border-color: #3b3b3b;
        }

        .theme-dark .query-header h3 {
            color: #ffffff;
        }

        .theme-dark .query-detail-box {
            background: #303030;
        }

        .theme-dark .query-detail-box span {
            color: #aaaaaa;
        }

        .theme-dark .query-detail-box strong {
            color: #ffffff;
        }

        .theme-dark .query-message-box {
            background: #303030;
        }

        .theme-dark .query-message-box span {
            color: #aaaaaa;
        }

        .theme-dark .query-message-box p {
            color: #ffffff;
        }

        .theme-dark .update-query-status {
            border-color: #3b3b3b;
        }

        .theme-dark .update-query-status label {
            color: #ffffff;
        }

        .theme-dark .query-status-form .form-control {
            background: #303030;
            border-color: #444444;
            color: #ffffff;
        }

        .theme-dark .query-status-form .form-control option {
            background: #303030;
            color: #ffffff;
        }

        .theme-dark .no-queries-box {
            background: #252525;
        }

        .theme-dark .no-queries-box h3 {
            color: #ffffff;
        }

        .theme-dark .no-queries-box p {
            color: #aaaaaa;
        }


        /* ================================
           RESPONSIVE
        ================================= */

        @media only screen and (max-width: 767px) {

            .queries-section {
                padding-top: 70px;
                padding-bottom: 50px;
            }

            .query-card {
                padding: 20px;
            }

            .query-header {
                display: block;
            }

            .query-header h3 {
                font-size: 20px;
                margin-bottom: 12px;
            }

            .query-status-form {
                display: block;
            }

            .query-status-form .form-control {
                width: 100%;
                margin-bottom: 12px;
            }

            .query-status-form .common-btn {
                width: 100%;
            }

        }

    </style>

</head>


<body>


    <!-- ================================
         NAVBAR START
    ================================= -->

    <div class="navbar-area fixed-top">

        <!-- Mobile Navbar -->

        <div class="mobile-nav">

            <a href="${pageContext.request.contextPath}/menuHome"
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
                        href="${pageContext.request.contextPath}/menuHome">

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

                                <a href="${pageContext.request.contextPath}/menuHome">
                                    Home
                                </a>

                            </li>


                            <li class="nav-item">

                                <a href="${pageContext.request.contextPath}/addMenuPage">
                                    Add Menu
                                </a>

                            </li>


                            <li class="nav-item">

                                <a href="${pageContext.request.contextPath}/viewMenu">
                                    View Menu
                                </a>

                            </li>


                            <li class="nav-item">

                                <a href="${pageContext.request.contextPath}/adminOrders">
                                    Manage Orders
                                </a>

                            </li>


                            <li class="nav-item">

                                <a href="${pageContext.request.contextPath}/adminQueries"
                                    class="active">

                                    Customer Queries

                                </a>

                            </li>


                            <li class="nav-item">

                                <a href="${pageContext.request.contextPath}/logout">
                                    Logout
                                </a>

                            </li>


                        </ul>


                        <!-- Admin -->

                        <div class="side-nav">

                            <span class="nav-tel">

                                <i class="bx bx-user"></i>

                                ${sessionScope.admin.username}

                            </span>

                        </div>

                    </div>

                </nav>

            </div>

        </div>

    </div>

    <!-- ================================
         NAVBAR END
    ================================= -->



    <!-- ================================
         PAGE TITLE START
    ================================= -->

    <div class="page-title-area page-title-img-one">

        <div class="container">

            <div class="page-title-item">

                <h2>
                    Customer Queries
                </h2>

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
    ================================= -->



    <!-- ================================
         QUERY SECTION START
    ================================= -->

    <section class="queries-section">

        <div class="container">


            <!-- Section Heading -->

            <div class="section-title">

                <span class="sub-title">
                    Customer Support
                </span>

                <h2>
                    Customer Queries
                </h2>

                <p>
                    View customer queries and update their status.
                </p>

            </div>



            <!-- ============================
                 NO QUERIES
            ============================= -->

            <c:if test="${empty queryList}">

                <div class="no-queries-box">

                    <i class="bx bx-message-detail"></i>

                    <h3>
                        No Customer Queries Found
                    </h3>

                    <p>
                        There are currently no queries submitted by customers.
                    </p>

                </div>

            </c:if>



            <!-- ============================
                 QUERY LIST
            ============================= -->

            <c:if test="${not empty queryList}">

                <div class="row justify-content-center">

                    <div class="col-lg-10 col-xl-9">


                        <c:forEach var="query"
                            items="${queryList}">


                            <!-- QUERY CARD -->

                            <div class="query-card">


                                <!-- Query Header -->

                                <div class="query-header">

                                    <h3>

                                        <i class="bx bx-message-detail"></i>

                                        Query #${query.queryId}

                                    </h3>


                                    <span class="query-status-badge">

                                        ${query.status}

                                    </span>

                                </div>



                                <!-- Query Details -->

                                <div class="row query-details">


                                    <!-- Customer ID -->

                                    <div class="col-md-6 mb-3">

                                        <div class="query-detail-box">

                                            <span>
                                                Customer ID
                                            </span>

                                            <strong>
                                                ${query.customerId}
                                            </strong>

                                        </div>

                                    </div>



                                    <!-- Subject -->

                                    <div class="col-md-6 mb-3">

                                        <div class="query-detail-box">

                                            <span>
                                                Subject
                                            </span>

                                            <strong>
                                                ${query.subject}
                                            </strong>

                                        </div>

                                    </div>



                                    <!-- Date -->

                                    <div class="col-md-6 mb-3">

                                        <div class="query-detail-box">

                                            <span>
                                                Query Date
                                            </span>

                                            <strong>
                                                ${query.queryDate}
                                            </strong>

                                        </div>

                                    </div>



                                    <!-- Current Status -->

                                    <div class="col-md-6 mb-3">

                                        <div class="query-detail-box">

                                            <span>
                                                Current Status
                                            </span>

                                            <strong>
                                                ${query.status}
                                            </strong>

                                        </div>

                                    </div>


                                </div>



                                <!-- Message -->

                                <div class="query-message-box">

                                    <span>
                                        Customer Message
                                    </span>

                                    <p>
                                        ${query.message}
                                    </p>

                                </div>



                                <!-- Update Status -->

                                <div class="update-query-status">

                                    <form
                                        action="${pageContext.request.contextPath}/updateQueryStatus"
                                        method="post"
                                        class="query-status-form">


                                        <input
                                            type="hidden"
                                            name="queryId"
                                            value="${query.queryId}">


                                        <div class="status-select-box">

                                            <label>
                                                Update Query Status
                                            </label>


                                            <select
                                                name="status"
                                                class="form-control">


                                                <option
                                                    value="Pending"
                                                    ${query.status == 'Pending' ? 'selected' : ''}>

                                                    Pending

                                                </option>


                                                <option
                                                    value="In Progress"
                                                    ${query.status == 'In Progress' ? 'selected' : ''}>

                                                    In Progress

                                                </option>


                                                <option
                                                    value="Resolved"
                                                    ${query.status == 'Resolved' ? 'selected' : ''}>

                                                    Resolved

                                                </option>


                                            </select>

                                        </div>


                                        <button
                                            type="submit"
                                            class="common-btn">

                                            Update Status

                                        </button>


                                    </form>

                                </div>


                            </div>

                            <!-- QUERY CARD END -->


                        </c:forEach>


                    </div>

                </div>



                <!-- Back Button -->

                <div class="text-center mt-2">

                    <a
                        href="${pageContext.request.contextPath}/menuHome"
                        class="common-btn">

                        <i class="bx bx-left-arrow-alt"></i>

                        Back to Admin Home

                    </a>

                </div>


            </c:if>

        </div>

    </section>

    <!-- ================================
         QUERY SECTION END
    ================================= -->



    <!-- ================================
         FOOTER START
    ================================= -->

    <footer class="footer-area-two pt-100 pb-70">

        <div class="container">

            <div class="row justify-content-center">


                <!-- About -->

                <div class="col-sm-6 col-lg-4">

                    <div class="footer-item">

                        <div class="footer-logo">

                            <a href="${pageContext.request.contextPath}/menuHome">

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



                <!-- Admin Services -->

                <div class="col-sm-6 col-lg-4">

                    <div class="footer-item">

                        <h3>
                            Admin Services
                        </h3>


                        <ul>

                            <li>
                                <a href="${pageContext.request.contextPath}/menuHome">
                                    Home
                                </a>
                            </li>

                            <li>
                                <a href="${pageContext.request.contextPath}/addMenuPage">
                                    Add Menu
                                </a>
                            </li>

                            <li>
                                <a href="${pageContext.request.contextPath}/viewMenu">
                                    View Menu
                                </a>
                            </li>

                            <li>
                                <a href="${pageContext.request.contextPath}/adminOrders">
                                    Manage Orders
                                </a>
                            </li>

                            <li>
                                <a href="${pageContext.request.contextPath}/adminQueries">
                                    Customer Queries
                                </a>
                            </li>

                            <li>
                                <a href="${pageContext.request.contextPath}/logout">
                                    Logout
                                </a>
                            </li>

                        </ul>

                    </div>

                </div>



                <!-- Restaurant -->

                <div class="col-sm-6 col-lg-4">

                    <div class="footer-item">

                        <h3>
                            Restaurant
                        </h3>


                        <ul>

                            <li>

                                <i class="bx bx-user"></i>

                                ${sessionScope.admin.username}

                            </li>


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

    <!-- ================================
         FOOTER END
    ================================= -->



    <!-- ================================
         COPYRIGHT
    ================================= -->

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
         JAVASCRIPT
    ================================= -->

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