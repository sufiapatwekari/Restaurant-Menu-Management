<%@ page language="java"
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c"
    uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>

<html lang="en">

<head>

<meta charset="UTF-8">

<meta name="viewport"
      content="width=device-width, initial-scale=1.0">

<title>Select Restaurant</title>


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

.restaurant-selection-area {
    padding-top: 80px;
    padding-bottom: 70px;
}

.restaurant-card {
    background: #ffffff;
    padding: 35px 25px;
    border-radius: 10px;
    text-align: center;
    box-shadow: 0 5px 30px rgba(0,0,0,0.08);
    margin-bottom: 30px;
    transition: 0.3s;
    height: 100%;
}

.restaurant-card:hover {
    transform: translateY(-5px);
}

.restaurant-icon {
    width: 80px;
    height: 80px;
    line-height: 80px;
    margin: 0 auto 20px;
    border-radius: 50%;
    background: #f7b731;
    color: #ffffff;
    font-size: 35px;
}

.restaurant-card h3 {
    color: #222222;
    margin-bottom: 10px;
}

.restaurant-card p {
    color: #666666;
    margin-bottom: 20px;
}

.select-restaurant-btn {
    display: inline-block;
    background: #f7b731;
    color: #ffffff;
    padding: 12px 25px;
    border-radius: 5px;
    text-decoration: none;
    font-weight: 600;
}

.select-restaurant-btn:hover {
    background: #e0a800;
    color: #ffffff;
}

.theme-dark .restaurant-card {
    background: #252525;
}

.theme-dark .restaurant-card h3 {
    color: #ffffff;
}

.theme-dark .restaurant-card p {
    color: #cccccc;
}

</style>

</head>


<body>


<!-- NAVBAR -->

<div class="navbar-area fixed-top">

    <div class="mobile-nav">

        <a href="${pageContext.request.contextPath}/customerHome"
           class="logo">

            <img
                src="${pageContext.request.contextPath}/assets/img/logo-two.png"
                alt="Logo">

        </a>

    </div>


    <div class="main-nav main-nav-three">

        <div class="container">

            <nav class="navbar navbar-expand-md navbar-light">

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


                <div class="collapse navbar-collapse mean-menu"
                     id="navbarSupportedContent">

                    <ul class="navbar-nav">

                        <li class="nav-item">

                            <a href="${pageContext.request.contextPath}/customerHome">
                                Home
                            </a>

                        </li>

                        <li class="nav-item">

                            <a href="${pageContext.request.contextPath}/selectRestaurant"
                               class="active">

                                Restaurants

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

                            <a href="${pageContext.request.contextPath}/customerLogout">
                                Logout
                            </a>

                        </li>

                    </ul>


                   <div class="side-nav">

                     <span class="nav-tel">
                          <i class="bx bx-user"></i>
                            ${sessionScope.customer.customerName}
                      </span>
 
                          <!-- Light / Dark Mode -->
                      <div class="switch-box">
                        <label id="switch" class="switch">
                           <input type="checkbox" id="slider" onclick="toggleTheme()">
                           <span class="slider round"></span>
                       </label>
                      </div>

                     </div>
                </div>

            </nav>

        </div>

    </div>

</div>


<!-- PAGE TITLE -->

<div class="page-title-area page-title-img-one">

    <div class="container">

        <div class="page-title-item">

            <h2>Select Restaurant</h2>

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
                    Select Restaurant
                </li>

            </ul>

        </div>

    </div>

</div>


<!-- RESTAURANTS -->

<section class="restaurant-selection-area">

    <div class="container">

        <div class="section-title text-center mb-5">

            <h2>Choose Your Restaurant</h2>

            <p>
                Select a restaurant to explore its menu
            </p>

        </div>


        <div class="row">

            <c:if test="${empty restaurantList}">

                <div class="col-12">

                    <div class="restaurant-card">

                        <h3>
                            No Restaurants Available
                        </h3>

                        <p>
                            Currently there are no registered restaurants.
                        </p>

                    </div>

                </div>

            </c:if>


            <c:forEach
                var="restaurant"
                items="${restaurantList}">

                <div class="col-sm-6 col-lg-4">

                    <div class="restaurant-card">

                        <div class="restaurant-icon">

                            <i class="bx bx-restaurant"></i>

                        </div>


                        <h3>

                            ${restaurant.restaurantName}

                        </h3>


                        <p>

                            Welcome to
                            ${restaurant.restaurantName}

                        </p>


                        <a
                            href="${pageContext.request.contextPath}/chooseRestaurant?adminId=${restaurant.id}"
                            class="select-restaurant-btn">

                            View Menu

                        </a>

                    </div>

                </div>

            </c:forEach>

        </div>

    </div>

</section>


<!-- FOOTER -->

<footer class="footer-area-two pt-100 pb-70">

    <div class="container">

        <div class="row justify-content-center">


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


            <div class="col-sm-6 col-lg-4">

                <div class="footer-item">

                    <h3>Customer Services</h3>

                    <ul>

                        <li>

                            <a href="${pageContext.request.contextPath}/customerHome">
                                Home
                            </a>

                        </li>

                        <li>

                            <a href="${pageContext.request.contextPath}/selectRestaurant">
                                Restaurants
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

                    </ul>

                </div>

            </div>


            <div class="col-sm-6 col-lg-4">

                <div class="footer-item">

                    <h3>Customer</h3>

                    <ul>

                        <li>

                            <i class="bx bx-user"></i>

                            ${sessionScope.customer.customerName}

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


<div class="copyright-area copyright-area-two">

    <div class="container">

        <div class="copyright-item">

            <p>
                @ Restaurant Menu Management System
            </p>

        </div>

    </div>

</div>


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
    src="${pageContext.request.contextPath}/assets/js/slick.min.js">
</script>

<script
    src="${pageContext.request.contextPath}/assets/js/custom.js">
</script>


</body>

</html>