<%@ taglib prefix="c"
    uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="UTF-8">

    <meta name="viewport"
          content="width=device-width, initial-scale=1.0">

    <title>View Menu - ${restaurantName}</title>


    <!-- Bootstrap CSS -->
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/assets/css/bootstrap.min.css">

    <!-- Meanmenu CSS -->
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/assets/css/meanmenu.css">

    <!-- Boxicons CSS -->
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/assets/css/boxicons.min.css">

    <!-- Owl Carousel -->
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

    <!-- Style CSS -->
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/assets/css/style.css">

    <!-- Responsive CSS -->
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/assets/css/responsive.css">

    <!-- Theme Dark CSS -->
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/assets/css/theme-dark.css">


    <!-- =====================================================
         VIEW MENU CUSTOM CSS
         ===================================================== -->

    <style>

        .menu-table-area {
            padding-top: 80px;
            padding-bottom: 80px;
        }

        .menu-table-box {
            background: #ffffff;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 5px 25px rgba(0, 0, 0, 0.08);
        }

        .menu-heading {
            text-align: center;
            margin-bottom: 10px;
        }

        .menu-subtitle {
            text-align: center;
            margin-bottom: 35px;
        }


        /* Restaurant Name */

        .restaurant-name {
            text-align: center;
            font-size: 22px;
            font-weight: 600;
            color: #f39c12;
            margin-bottom: 8px;
        }


        /* Table */

        .menu-table-wrapper {
            width: 100%;
            overflow-x: auto;
        }

        .menu-table {
            width: 100%;
            min-width: 1000px;
            border-collapse: collapse;
        }


        /* Table Header */

        .menu-table th {
            background: #f7b731;
            color: #ffffff;
            padding: 15px;
            text-align: left;
            font-size: 15px;
            white-space: nowrap;
        }


        /* Table Data */

        .menu-table td {
            padding: 15px;
            border-bottom: 1px solid #eeeeee;
            vertical-align: middle;
            color: #555555;
        }


        /* Alternate Row */

        .menu-table tbody tr:nth-child(even) {
            background: #fafafa;
        }


        /* Hover */

        .menu-table tbody tr:hover {
            background: #fff8e5;
        }


        /* Food Image */

        .food-image {
            width: 100px;
            height: 80px;
            object-fit: cover;
            border-radius: 8px;
        }


        /* Food Name */

        .food-name {
            font-weight: 600;
            color: #222222;
        }


        /* Price */

        .food-price {
            font-weight: 600;
            color: #f39c12;
            white-space: nowrap;
        }


        /* Action */

        .action-buttons {
            display: flex;
            flex-direction: column;
            gap: 8px;
        }


        /* Update */

        .update-btn {
            display: inline-block;
            text-align: center;
            padding: 9px 15px;
            background: #f7b731;
            color: #ffffff;
            text-decoration: none;
            border-radius: 5px;
            font-size: 14px;
            font-weight: 600;
        }

        .update-btn:hover {
            color: #ffffff;
            background: #e09f00;
        }


        /* Delete */

        .delete-btn {
            display: inline-block;
            text-align: center;
            padding: 9px 15px;
            background: #e74c3c;
            color: #ffffff;
            text-decoration: none;
            border-radius: 5px;
            font-size: 14px;
            font-weight: 600;
        }

        .delete-btn:hover {
            color: #ffffff;
            background: #c0392b;
        }


        /* Add New Food */

        .add-food-area {
            text-align: center;
            margin-top: 30px;
        }

        .add-food-btn {
            display: inline-block;
            padding: 13px 25px;
            background: #f7b731;
            color: #ffffff;
            text-decoration: none;
            border-radius: 5px;
            font-weight: 600;
        }

        .add-food-btn:hover {
            color: #ffffff;
            background: #e09f00;
        }


        /* =====================================================
           DARK MODE
           ===================================================== */

        .theme-dark .menu-table-box {
            background: #252525 !important;
        }

        .theme-dark .menu-heading {
            color: #ffffff !important;
        }

        .theme-dark .menu-subtitle {
            color: #cccccc !important;
        }

        .theme-dark .restaurant-name {
            color: #f7b731 !important;
        }

        .theme-dark .menu-table {
            background: #252525;
        }

        .theme-dark .menu-table td {
            color: #dddddd !important;
            border-bottom: 1px solid #444444;
        }

        .theme-dark .food-name {
            color: #ffffff !important;
        }

        .theme-dark .menu-table tbody tr:nth-child(even) {
            background: #303030 !important;
        }

        .theme-dark .menu-table tbody tr:hover {
            background: #383838 !important;
        }

        .theme-dark .menu-table-wrapper {
            background: #252525;
        }


        /* Mobile */

        @media (max-width: 768px) {

            .menu-table-box {
                padding: 20px;
            }

            .restaurant-name {
                font-size: 19px;
            }

        }

    </style>

</head>


<body>


<!-- =====================================================
     NAVBAR
     ===================================================== -->

<div class="navbar-area fixed-top">


    <!-- Mobile Navbar -->

    <div class="mobile-nav">

        <a href="menuHome" class="logo">

            <img src="${pageContext.request.contextPath}/assets/img/logo-two.png"
                 alt="Logo">

        </a>

    </div>


    <!-- Desktop Navbar -->

    <div class="main-nav main-nav-three">

        <div class="container">

            <nav class="navbar navbar-expand-md navbar-light">


                <!-- Logo -->

                <a class="navbar-brand"
                   href="menuHome">

                    <img src="${pageContext.request.contextPath}/assets/img/logo.png"
                         class="logo-one"
                         alt="Logo">

                    <img src="${pageContext.request.contextPath}/assets/img/logo-two.png"
                         class="logo-two"
                         alt="Logo">

                </a>


                <!-- Navigation -->

                <div class="collapse navbar-collapse mean-menu"
                     id="navbarSupportedContent">

                    <ul class="navbar-nav">


                        <li class="nav-item">

                            <a href="menuHome">
                                Home
                            </a>

                        </li>


                        <li class="nav-item">

                            <a href="addMenuPage">
                                Add Menu
                            </a>

                        </li>


                        <li class="nav-item">

                            <a href="viewMenu"
                               class="active">

                                View Menu

                            </a>

                        </li>


                        <li class="nav-item">

                            <a href="logout">
                                Logout
                            </a>

                        </li>

                    </ul>


                    <!-- Right Side -->

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



<!-- =====================================================
     PAGE TITLE
     ===================================================== -->

<div class="page-title-area page-title-img-one">

    <div class="container">

        <div class="page-title-item">

            <h2>View Menu</h2>

            <ul>

                <li>

                    <a href="menuHome">
                        Home
                    </a>

                </li>

                <li>

                    <i class="bx bx-chevron-right"></i>

                </li>

                <li>
                    View Menu
                </li>

            </ul>

        </div>

    </div>

</div>



<!-- =====================================================
     MENU TABLE
     ===================================================== -->

<section class="menu-table-area">

    <div class="container">

        <div class="menu-table-box">


            <!-- Restaurant Name -->

            <div class="restaurant-name">

                ${restaurantName}

            </div>


            <h2 class="menu-heading">
                Restaurant Menu
            </h2>


            <p class="menu-subtitle">
                Explore your restaurant's delicious food collection
            </p>



            <!-- =================================================
                 TABLE
                 ================================================= -->

            <div class="menu-table-wrapper">

                <table class="menu-table">


                    <thead>

                        <tr>

                            <th>
                                Food ID
                            </th>

                            <th>
                                Food Name
                            </th>

                            <th>
                                Category
                            </th>

                            <th>
                                Price
                            </th>

                            <th>
                                Description
                            </th>

                            <th>
                                Food Image
                            </th>

                            <th>
                                Action
                            </th>

                        </tr>

                    </thead>


                    <tbody>


                        <!-- =================================================
                             DATABASE LOOP
                             ================================================= -->

                        <c:forEach
                                var="menu"
                                items="${menuList}"
                                varStatus="status">


                            <tr>


                                <!-- =================================================
                                     DISPLAY FOOD ID

                                     This is the SERIAL NUMBER for this restaurant.

                                     Example:

                                     Restaurant 1:
                                     1
                                     2
                                     3

                                     Restaurant 2:
                                     1
                                     2
                                     3

                                     The real database foodId is still used
                                     for Update/Delete below.
                                     ================================================= -->

                                <td>

                                    ${status.index + 1}

                                </td>


                                <!-- Food Name -->

                                <td class="food-name">

                                    ${menu.foodName}

                                </td>


                                <!-- Category -->

                                <td>

                                    ${menu.category}

                                </td>


                                <!-- Price -->

                                <td class="food-price">

                                    Rs ${menu.price}

                                </td>


                                <!-- Description -->

                                <td>

                                    ${menu.description}

                                </td>


                                <!-- Food Image -->

                                <td>

                                    <c:choose>

                                        <c:when test="${not empty menu.foodImage}">

                                            <img
                                                src="${pageContext.request.contextPath}/${menu.foodImage}"
                                                class="food-image"
                                                alt="${menu.foodName}">

                                        </c:when>

                                        <c:otherwise>

                                            No Image

                                        </c:otherwise>

                                    </c:choose>

                                </td>


                                <!-- =================================================
                                     ACTION BUTTONS

                                     IMPORTANT:
                                     Use actual database foodId here.

                                     Do NOT use status.index + 1.

                                     Because foodId is the real primary key.
                                     ================================================= -->

                                <td>

                                    <div class="action-buttons">


                                        <!-- Update -->

                                        <a
                                            href="editMenu?foodId=${menu.foodId}"
                                            class="update-btn">

                                            Update

                                        </a>


                                        <!-- Delete -->

                                        <a
                                            href="deleteMenu?foodId=${menu.foodId}"
                                            class="delete-btn"
                                            onclick="return confirm('Are you sure you want to delete this food item?');">

                                            Delete

                                        </a>

                                    </div>

                                </td>


                            </tr>


                        </c:forEach>


                        <!-- =================================================
                             EMPTY MENU
                             ================================================= -->

                        <c:if test="${empty menuList}">

                            <tr>

                                <td colspan="7"
                                    style="text-align:center; padding:30px;">

                                    No menu items found.

                                </td>

                            </tr>

                        </c:if>


                    </tbody>

                </table>

            </div>



            <!-- =================================================
                 ADD FOOD
                 ================================================= -->

            <div class="add-food-area">

                <a href="addMenuPage"
                   class="add-food-btn">

                    Add New Food

                </a>

            </div>


        </div>

    </div>

</section>



<!-- =====================================================
     FOOTER
     ===================================================== -->

<footer class="footer-area-two pt-100 pb-70">

    <div class="container">

        <div class="row justify-content-center">


            <!-- Footer Logo -->

            <div class="col-sm-6 col-lg-3">

                <div class="footer-item">

                    <div class="footer-logo">

                        <a href="menuHome">

                            <img
                                src="${pageContext.request.contextPath}/assets/img/logo-two.png"
                                alt="Logo">

                        </a>


                        <p>

                            ${restaurantName}

                            <br>

                            Restaurant Menu Management System

                            for managing restaurant food items easily.

                        </p>

                    </div>

                </div>

            </div>



            <!-- Services -->

            <div class="col-sm-6 col-lg-3">

                <div class="footer-item">

                    <div class="footer-service">

                        <h3>
                            Menu Management
                        </h3>


                        <ul>

                            <li>

                                <a href="addMenuPage">

                                    <i class="bx bx-chevron-right"></i>

                                    Add Menu

                                </a>

                            </li>


                            <li>

                                <a href="viewMenu">

                                    <i class="bx bx-chevron-right"></i>

                                    View Menu

                                </a>

                            </li>

                        </ul>

                    </div>

                </div>

            </div>



            <!-- Quick Links -->

            <div class="col-sm-6 col-lg-3">

                <div class="footer-item">

                    <div class="footer-service">

                        <h3>
                            Quick Links
                        </h3>


                        <ul>


                            <li>

                                <a href="menuHome">

                                    <i class="bx bx-chevron-right"></i>

                                    Home

                                </a>

                            </li>


                            <li>

                                <a href="addMenuPage">

                                    <i class="bx bx-chevron-right"></i>

                                    Add Menu

                                </a>

                            </li>


                            <li>

                                <a href="viewMenu">

                                    <i class="bx bx-chevron-right"></i>

                                    View Menu

                                </a>

                            </li>


                            <li>

                                <a href="logout">

                                    <i class="bx bx-chevron-right"></i>

                                    Logout

                                </a>

                            </li>


                        </ul>

                    </div>

                </div>

            </div>



            <!-- Contact -->

            <div class="col-sm-6 col-lg-3">

                <div class="footer-item">

                    <div class="footer-service">

                        <h3>
                            Restaurant
                        </h3>


                        <ul>


                            <li>

                                <i class="bx bx-store"></i>

                                ${restaurantName}

                            </li>


                            <li>

                                <i class="bx bx-user"></i>

                                ${sessionScope.admin.username}

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
     COPYRIGHT
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
     JAVASCRIPT
     ===================================================== -->

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