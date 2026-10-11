<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="UTF-8">

    <meta name="viewport"
        content="width=device-width, initial-scale=1.0">

    <title>My Queries - Restaurant Menu Management</title>

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

</head>

<body>

<!-- Navbar Start -->

<div class="navbar-area fixed-top">

    <div class="mobile-nav">

        <a href="customerHome" class="logo">

            <img src="${pageContext.request.contextPath}/assets/img/logo-two.png"
                alt="Logo">

        </a>

    </div>


    <div class="main-nav main-nav-three">

        <div class="container">

            <nav class="navbar navbar-expand-md navbar-light">

                <a class="navbar-brand" href="customerHome">

                    <img src="${pageContext.request.contextPath}/assets/img/logo.png"
                        class="logo-one" alt="Logo">

                    <img src="${pageContext.request.contextPath}/assets/img/logo-two.png"
                        class="logo-two" alt="Logo">

                </a>


                <div class="collapse navbar-collapse mean-menu"
                    id="navbarSupportedContent">

                    <ul class="navbar-nav">

                        <li class="nav-item">
                            <a href="customerHome">Home</a>
                        </li>

                        <li class="nav-item">
                            <a href="customerMenu">Menu</a>
                        </li>

                        <li class="nav-item">
                            <a href="viewCart">My Cart</a>
                        </li>

                        <li class="nav-item">
                            <a href="myOrders">My Orders</a>
                        </li>

                        <li class="nav-item">
                            <a href="myQueries" class="active">My Queries</a>
                        </li>

                        <li class="nav-item">
                            <a href="customerLogout">Logout</a>
                        </li>

                    </ul>


                    <div class="side-nav">

                        <span class="nav-tel">

                            <i class='bx bx-user'></i>

                            ${sessionScope.customer.customerName}

                        </span>

                    </div>

                </div>

            </nav>

        </div>

    </div>

</div>

<!-- Navbar End -->


<!-- Page Title Start -->

<div class="page-title-area page-title-img-one">

    <div class="container">

        <div class="page-title-item">

            <h2>My Queries</h2>

            <ul>

                <li>Restaurant Menu Management</li>

            </ul>

        </div>

    </div>

</div>

<!-- Page Title End -->


<!-- My Queries Section Start -->

<section class="blog-area pt-100 pb-70">

    <div class="container">

        <div class="section-title">

            <span class="sub-title">Customer Support</span>

            <h2>My Queries</h2>

            <p>
                View the queries you have submitted and check their current status.
            </p>

        </div>


        <!-- No Queries -->

        <c:if test="${empty queryList}">

            <div class="text-center">

                <h3>No Queries Found</h3>

                <p>
                    You have not submitted any queries yet.
                </p>

                <a href="contactQueryPage" class="common-btn">

                    Submit New Query

                </a>

            </div>

        </c:if>


        <!-- Query List -->

        <c:if test="${not empty queryList}">

            <div class="row justify-content-center">

                <c:forEach var="query" items="${queryList}">

                    <div class="col-lg-8 col-md-10">

                        <div class="blog-item"
                            style="margin-bottom: 30px;">

                            <div class="blog-content">

                                <h3>
                                    Query ID: ${query.queryId}
                                </h3>


                                <p>
                                    <strong>Subject:</strong>
                                    ${query.subject}
                                </p>


                                <p>
                                    <strong>Message:</strong>
                                    ${query.message}
                                </p>


                                <p>
                                    <strong>Date:</strong>
                                    ${query.queryDate}
                                </p>


                                <p>
                                    <strong>Status:</strong>

                                    <span>
                                        ${query.status}
                                    </span>

                                </p>

                            </div>

                        </div>

                    </div>

                </c:forEach>

            </div>


            <!-- Buttons -->

            <div class="text-center mt-4">

                <a href="contactQueryPage"
                    class="common-btn">

                    Submit New Query

                </a>

                <a href="customerHome"
                    class="common-btn">

                    Back to Home

                </a>

            </div>

        </c:if>

    </div>

</section>

<!-- My Queries Section End -->


<!-- Footer Start -->

<footer class="footer-area-two pt-100 pb-70">

    <div class="container">

        <div class="row justify-content-center">


            <!-- Footer About -->

            <div class="col-sm-6 col-lg-4">

                <div class="footer-item">

                    <div class="footer-logo">

                        <a href="customerHome">

                            <img src="${pageContext.request.contextPath}/assets/img/logo-two.png"
                                alt="Logo">

                        </a>

                        <p>
                            Restaurant Menu Management System
                            for managing restaurant food items and
                            customer orders easily.
                        </p>

                    </div>

                </div>

            </div>


            <!-- Footer Services -->

            <div class="col-sm-6 col-lg-4">

                <div class="footer-item">

                    <h3>Customer Services</h3>

                    <ul>

                        <li>
                            <a href="customerHome">Home</a>
                        </li>

                        <li>
                            <a href="customerMenu">View Menu</a>
                        </li>

                        <li>
                            <a href="viewCart">My Cart</a>
                        </li>

                        <li>
                            <a href="myOrders">My Orders</a>
                        </li>

                        <li>
                            <a href="myQueries">My Queries</a>
                        </li>

                        <li>
                            <a href="customerLogout">Logout</a>
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

                            <i class='bx bx-user'></i>

                            ${sessionScope.customer.customerName}

                        </li>

                        <li>

                            <i class='bx bx-phone'></i>

                            +91 9503221889

                        </li>

                        <li>

                            <i class='bx bx-map'></i>

                            Pune, India

                        </li>

                    </ul>

                </div>

            </div>

        </div>

    </div>

</footer>

<!-- Footer End -->


<!-- Copyright Start -->

<div class="copyright-area copyright-area-two">

    <div class="container">

        <div class="copyright-item">

            <p>
                @ Restaurant Menu Management System
            </p>

        </div>

    </div>

</div>

<!-- Copyright End -->


<!-- JavaScript -->

<script src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script>

<script src="${pageContext.request.contextPath}/assets/js/bootstrap.bundle.min.js"></script>

<script src="${pageContext.request.contextPath}/assets/js/jquery.meanmenu.js"></script>

<script src="${pageContext.request.contextPath}/assets/js/owl.carousel.min.js"></script>

<script src="${pageContext.request.contextPath}/assets/js/jquery.mixitup.min.js"></script>

<script src="${pageContext.request.contextPath}/assets/js/slick.min.js"></script>

<script src="${pageContext.request.contextPath}/assets/js/jquery.ajaxchimp.min.js"></script>

<script src="${pageContext.request.contextPath}/assets/js/form-validator.min.js"></script>

<script src="${pageContext.request.contextPath}/assets/js/contact-form-script.js"></script>

<script src="${pageContext.request.contextPath}/assets/js/jquery.magnific-popup.min.js"></script>

<script src="${pageContext.request.contextPath}/assets/js/custom.js"></script>

</body>

</html>