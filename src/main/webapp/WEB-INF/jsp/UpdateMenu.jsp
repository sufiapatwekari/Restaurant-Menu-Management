<%@ page language="java"
         contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html lang="en">

<head>

    <meta charset="UTF-8">

    <meta name="viewport"
          content="width=device-width, initial-scale=1.0">

    <title>Update Menu Item</title>


    <!-- Bootstrap CSS -->

    <link rel="stylesheet"
          href="assets/css/bootstrap.min.css">


    <!-- Meanmenu CSS -->

    <link rel="stylesheet"
          href="assets/css/meanmenu.css">


    <!-- Boxicons CSS -->

    <link rel="stylesheet"
          href="assets/css/boxicons.min.css">


    <!-- Owl Carousel -->

    <link rel="stylesheet"
          href="assets/css/owl.carousel.min.css">

    <link rel="stylesheet"
          href="assets/css/owl.theme.default.min.css">


    <!-- Slick Slider CSS -->

    <link rel="stylesheet"
          href="assets/css/slick.min.css">

    <link rel="stylesheet"
          href="assets/css/slick-theme.min.css">


    <!-- Magnific Popup CSS -->

    <link rel="stylesheet"
          href="assets/css/magnific-popup.min.css">


    <!-- Main Template CSS -->

    <link rel="stylesheet"
          href="assets/css/style.css">


    <!-- Responsive CSS -->

    <link rel="stylesheet"
          href="assets/css/responsive.css">


    <!-- Theme Dark CSS -->

    <link rel="stylesheet"
          href="assets/css/theme-dark.css">


    <!-- =========================================
         UPDATE MENU CUSTOM CSS
    ========================================= -->

    <style>

        /* =========================================
           UPDATE MENU SECTION
        ========================================= */

        .update-menu-area {

            padding-top: 100px;

            padding-bottom: 80px;

        }


        /* =========================================
           UPDATE FORM BOX
        ========================================= */

        .update-menu-box {

            max-width: 750px;

            margin: 0 auto;

            background: #ffffff;

            padding: 40px;

            border-radius: 10px;

            box-shadow:
                0 10px 30px
                rgba(0, 0, 0, 0.10);

        }


        /* =========================================
           HEADING
        ========================================= */

        .update-menu-heading {

            text-align: center;

            margin-bottom: 10px;

        }


        .update-menu-subtitle {

            text-align: center;

            margin-bottom: 35px;

            color: #777777;

        }


        /* =========================================
           LABEL
        ========================================= */

        .update-menu-form label {

            font-weight: 600;

            margin-bottom: 8px;

            color: #333333;

        }


        /* =========================================
           INPUT
        ========================================= */

        .update-menu-form .form-control {

            height: 48px;

            border-radius: 5px;

            border: 1px solid #dddddd;

            padding-left: 15px;

        }


        .update-menu-form textarea.form-control {

            height: auto;

            min-height: 120px;

            padding-top: 12px;

            resize: vertical;

        }


        .update-menu-form .form-control:focus {

            border-color: #f7b731;

            box-shadow:
                0 0 0 0.2rem
                rgba(247, 183, 49, 0.20);

        }


        /* =========================================
           FOOD ID READ ONLY
        ========================================= */

        .food-id-input {

            background: #f5f5f5 !important;

            cursor: not-allowed;

        }


        /* =========================================
           CURRENT IMAGE
        ========================================= */

        .current-image-box {

            margin-top: 10px;

        }


        .current-image {

            width: 180px;

            height: 130px;

            object-fit: cover;

            border-radius: 8px;

            border:
                1px solid #dddddd;

        }


        /* =========================================
           FILE INPUT
        ========================================= */

        .file-upload-box {

            padding: 12px;

            border:
                1px dashed #cccccc;

            border-radius: 5px;

            background: #fafafa;

        }


        .file-upload-box input {

            width: 100%;

        }


        /* =========================================
           UPDATE BUTTON
        ========================================= */

        .update-food-btn {

            width: 100%;

            border: none;

            padding: 14px;

            background: #f7b731;

            color: #ffffff;

            font-weight: 600;

            font-size: 16px;

            border-radius: 5px;

            transition: 0.3s;

        }


        .update-food-btn:hover {

            background: #e09f00;

            color: #ffffff;

        }


        /* =========================================
           DARK MODE
        ========================================= */

        .theme-dark .update-menu-box {

            background: #252525 !important;

        }


        .theme-dark .update-menu-heading {

            color: #ffffff !important;

        }


        .theme-dark .update-menu-subtitle {

            color: #cccccc !important;

        }


        .theme-dark .update-menu-form label {

            color: #ffffff !important;

        }


        .theme-dark .update-menu-form .form-control {

            background: #303030 !important;

            color: #ffffff !important;

            border-color: #555555 !important;

        }


        .theme-dark
        .update-menu-form
        .form-control:focus {

            border-color: #f7b731 !important;

        }


        .theme-dark
        .update-menu-form
        .form-control::placeholder {

            color: #aaaaaa !important;

        }


        .theme-dark .food-id-input {

            background: #3a3a3a !important;

            color: #cccccc !important;

        }


        .theme-dark .file-upload-box {

            background: #303030 !important;

            border-color: #666666 !important;

        }


        .theme-dark .file-upload-box input {

            color: #cccccc !important;

        }


        /* =========================================
           RESPONSIVE
        ========================================= */

        @media (max-width: 768px) {

            .update-menu-box {

                padding: 25px 20px;

            }

        }

    </style>


</head>


<body>


<!-- ================================================= -->
<!-- NAVBAR -->
<!-- ================================================= -->

<div class="navbar-area fixed-top">


    <!-- Mobile Navbar -->

    <div class="mobile-nav">

        <a href="menuHome"class="logo">
            <img src="${pageContext.request.contextPath}/assets/img/logo-two.png" alt="Logo">
        </a>
    </div>
    <!-- Desktop Navbar -->

    <div class="main-nav main-nav-three">

        <div class="container">

            <nav class="navbar navbar-expand-md navbar-light">
                <!-- Logo -->
                <a class="navbar-brand" href="menuHome">

                    <img src="${pageContext.request.contextPath}/assets/img/logo.png" class="logo-one" alt="Logo">

                    <img src="${pageContext.request.contextPath}/assets/img/logo-two.png" class="logo-two" alt="Logo">

                </a>
                <!-- Navigation -->
                <div class="collapse navbar-collapse mean-menu" id="navbarSupportedContent">

                    <ul class="navbar-nav">

                        <!-- Home -->

                        <li class="nav-item">

                            <a href="menuHome"> Home </a>

                        </li>
                        <!-- Add Menu -->

                        <li class="nav-item">

                            <a href="addMenuPage"> Add Menu </a>

                        </li>

                        <!-- View Menu -->

                        <li class="nav-item">

                            <a href="viewMenu"> View Menu </a>

                        </li>
                        <!-- Logout -->

                        <li class="nav-item">

                            <a href="logout"> Logout</a>

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



<!-- ================================================= -->
<!-- PAGE TITLE -->
<!-- ================================================= -->

<div class="page-title-area page-title-img-one">

    <div class="container">

        <div class="page-title-item">
            <h2> Update Menu Item  </h2>

            <ul>
                <li> <a href="menuHome">   Home </a>   </li>

                <li>
                    <i class="bx bx-chevron-right"></i>
                </li>
                <li>
                    <a href="viewMenu">  View Menu  </a>
                </li>
                <li>
                    <i class="bx bx-chevron-right"></i>
                </li>
                <li> Update Menu</li>
            </ul>
        </div>

    </div>

</div>



<!-- ================================================= -->
<!-- UPDATE MENU FORM -->
<!-- ================================================= -->

<section class="update-menu-area">


    <div class="container">


        <div class="update-menu-box">


            <!-- Heading -->

            <h2 class="update-menu-heading">  Update Menu Item  </h2>


            <p class="update-menu-subtitle"> Update your delicious food details </p>

            <!-- ========================================= -->
            <!-- UPDATE FORM -->
            <!-- ========================================= -->

            <form action="updateMenu" method="post"  enctype="multipart/form-data" class="update-menu-form">

                <!-- ========================================= -->
                <!-- IMPORTANT HIDDEN FOOD ID -->
                <!-- ========================================= -->

                <input type="hidden" name="foodId" value="${menu.foodId}">

                <!-- ========================================= -->
                <!-- FOOD ID -->
                <!-- ========================================= -->

                <div class="mb-3">
                    <label>
                        Food ID
                    </label>
                    <input type="number" class="form-control food-id-input" value="${menu.foodId}" readonly>
                </div>

                <!-- ========================================= -->
                <!-- FOOD NAME -->
                <!-- ========================================= -->

                <div class="mb-3">

                    <label>
                        Food Name
                    </label>
                    <input type="text" name="foodName" class="form-control"  value="${menu.foodName}" required>
                </div>
                <!-- ========================================= -->
                <!-- CATEGORY -->
                <!-- ========================================= -->

                <div class="mb-3">
                    <label>
                        Category
                    </label>
                    <input type="text" name="category"  class="form-control"  value="${menu.category}" required>
                </div>
                <!-- ========================================= -->
                <!-- PRICE -->
                <!-- ========================================= -->

                <div class="mb-3">

                    <label>
                        Price
                    </label>
                    <input type="number"  step="0.01" name="price" class="form-control" value="${menu.price}"  required>

                </div>
                <!-- ========================================= -->
                <!-- DESCRIPTION -->
                <!-- ========================================= -->

                <div class="mb-3">
                    <label>
                       Description
                    </label>
                    <textarea name="description" class="form-control" required>${menu.description}</textarea>
                </div>
                <!-- ========================================= -->
                <!-- CURRENT IMAGE -->
                <!-- ========================================= -->

                <div class="mb-3">
                    <label>
                        Current Food Image
                    </label>
                    <div class="current-image-box">
                        <img src="${pageContext.request.contextPath}/${menu.foodImage}" class="current-image"  alt="${menu.foodName}">
                    </div>
                </div>
                <!-- ========================================= -->
                <!-- CHANGE IMAGE -->
                <!-- ========================================= -->
                <div class="mb-4">
                    <label>
                        Change Food Image
                    </label>
                    <div class="file-upload-box">
                        <input type="file" name="imageFile" accept="image/*">
                    </div>
                </div>

                <!-- ========================================= -->
                <!-- UPDATE BUTTON -->
                <!-- ========================================= -->

                <button type="submit" class="update-food-btn">

                    <i class="bx bx-edit"></i> Update Food

                </button>
            </form>
        </div>
    </div>
</section>

<!-- ================================================= -->
<!-- FOOTER -->
<!-- ================================================= -->

<footer class="footer-area-two pt-100 pb-70">

    <div class="container">

        <div class="row justify-content-center">

            <!-- Footer Logo -->

            <div class="col-sm-6 col-lg-3">

                <div class="footer-item">

                    <div class="footer-logo">
                        <a href="menuHome">
                            <img src="${pageContext.request.contextPath}/assets/img/logo-two.png" alt="Logo">
                        </a>
                        <p>
                            Restaurant Menu Management System
                            for managing restaurant food items easily.
                        </p>
                    </div>
                </div>
            </div>

            <!-- Menu Management -->

            <div class="col-sm-6 col-lg-3">

                <div class="footer-item">

                    <div class="footer-service">

                        <h3>  Menu Management  </h3>

                        <ul>
                            <li>
                                <a href="addMenuPage"> <i class="bx bx-chevron-right"></i> Add Menu </a>

                            </li>
                            <li>
                                <a href="viewMenu">  <i class="bx bx-chevron-right"></i> View Menu </a>
                            </li>
                        </ul>
                    </div>
                </div>

            </div>

            <!-- Quick Links -->

            <div class="col-sm-6 col-lg-3">

                <div class="footer-item">

                    <div class="footer-service">
                        <h3>  Quick Links  </h3>

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
            <!-- Restaurant -->

            <div class="col-sm-6 col-lg-3">

                <div class="footer-item">

                    <div class="footer-service">
                        <h3>  Restaurant  </h3>

                        <ul>
                           <li>
                                <i class="bx bx-user"></i> ${sessionScope.admin.username}
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



<!-- ================================================= -->
<!-- COPYRIGHT -->
<!-- ================================================= -->

<div class="copyright-area copyright-area-two">

    <div class="container">

        <div class="copyright-item">

            <p> @ Restaurant Menu Management System  </p>

        </div>

    </div>

</div>

<!-- ================================================= -->
<!-- JAVASCRIPT -->
<!-- ================================================= -->

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