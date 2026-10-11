<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="UTF-8">

    <meta name="viewport"
          content="width=device-width, initial-scale=1.0">

    <title>Add Menu Item</title>


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

    <!-- Style CSS -->
    <link rel="stylesheet"
          href="assets/css/style.css">

    <!-- Responsive CSS -->
    <link rel="stylesheet"
          href="assets/css/responsive.css">

    <!-- Theme Dark CSS -->
    <link rel="stylesheet"
          href="assets/css/theme-dark.css">


    <!-- Add Menu Form CSS -->
    <style>

        .add-menu-form {
            max-width: 750px;
            margin: 0 auto;
        }

        .add-menu-box {
            background: #ffffff;
            padding: 40px;
            border-radius: 10px;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.10);
        }

        .add-menu-box h2 {
            text-align: center;
            margin-bottom: 10px;
        }

        .add-menu-subtitle {
            text-align: center;
            margin-bottom: 35px;
        }

        .add-menu-group {
            margin-bottom: 20px;
        }

        .add-menu-group label {
            display: block;
            font-weight: 600;
            margin-bottom: 8px;
        }

        .add-menu-group input[type="number"],
        .add-menu-group input[type="text"],
        .add-menu-group textarea {
            width: 100%;
            padding: 13px 15px;
            border: 1px solid #ddd;
            border-radius: 5px;
            outline: none;
            font-size: 15px;
        }

        .add-menu-group textarea {
            min-height: 120px;
            resize: vertical;
        }

        .add-menu-group input:focus,
        .add-menu-group textarea:focus {
            border-color: #ffb300;
        }

        .image-upload-box {
            padding: 15px;
            border: 2px dashed #ddd;
            border-radius: 5px;
            background: #fafafa;
        }

        .image-upload-box input[type="file"] {
            width: 100%;
        }

        .add-food-btn {
            width: 100%;
            border: none;
            padding: 14px 20px;
            background: #ffb300;
            color: #ffffff;
            font-weight: 600;
            font-size: 16px;
            border-radius: 5px;
            cursor: pointer;
            margin-top: 10px;
        }

        .add-food-btn:hover {
            opacity: 0.9;
        }

        .back-menu {
            display: block;
            text-align: center;
            margin-top: 20px;
        }
/* =========================================
   ADD MENU PAGE - DARK THEME
========================================= */

.theme-dark .add-menu-box {
    background: #252525;
}

.theme-dark .add-menu-box h2 {
    color: #ffffff !important;
}

.theme-dark .add-menu-subtitle {
    color: #cccccc !important;
}

.theme-dark .add-menu-group label {
    color: #ffffff !important;
}

.theme-dark .add-menu-group input[type="number"],
.theme-dark .add-menu-group input[type="text"],
.theme-dark .add-menu-group textarea {
    background: #333333;
    color: #ffffff;
    border-color: #555555;
}

.theme-dark .add-menu-group input::placeholder,
.theme-dark .add-menu-group textarea::placeholder {
    color: #bbbbbb;
}

.theme-dark .image-upload-box {
    background: #333333;
    border-color: #555555;
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

        <a href="menuHome" class="logo">
          
            <img src="${pageContext.request.contextPath}/assets/img/logo-two.png" alt="Logo"> 
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

                            <a href="menuHome">   Home  </a>

                        </li>


                        <li class="nav-item">

                            <a href="addMenuPage" class="active"> Add Menu  </a>

                        </li>


                        <li class="nav-item">

                            <a href="viewMenu">   View Menu </a>

                        </li>


                        <li class="nav-item">

                            <a href="logout">  Logout  </a>

                        </li>


                    </ul>


                    <!-- Right Side -->

                    <div class="side-nav">

                        <span class="nav-tel">

                            <i class='bx bx-user'></i> ${sessionScope.admin.username}

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

            <h2>Add Menu Item</h2>

            <ul>

                <li>   Restaurant Menu Management  </li>

            </ul>

        </div>

    </div>

</div>



<!-- ================================================= -->
<!-- ADD MENU FORM -->
<!-- ================================================= -->

<section class="blog-area pt-100 pb-70">

    <div class="container">


        <div class="add-menu-form">


            <div class="add-menu-box">


                <h2>
                    Add Menu Item
                </h2>


                <p class="add-menu-subtitle"> Add a delicious item to your restaurant menu </p>



                <!-- ================================= -->
                <!-- YOUR ORIGINAL FORM -->
                <!-- ================================= -->

                <form action="saveMenu"
                      method="post"
                      enctype="multipart/form-data">

                    <!-- Food Name -->

                    <div class="add-menu-group">

                        <label> Food Name</label>

                        <input type="text" name="foodName" placeholder="Enter food name">

                    </div>
                    <!-- Category -->

                    <div class="add-menu-group">

                        <label> Category </label>

                        <input type="text" name="category" placeholder="Example: Fast Food">

                    </div>
                    
                    <!-- Price -->

                    <div class="add-menu-group">

                        <label> Price</label>

                        <input type="number" step="0.01" name="price" placeholder="Enter price">

                    </div>
                    <!-- Description -->

                    <div class="add-menu-group">

                        <label> Description </label>

                        <textarea name="description" placeholder="Describe your delicious food..."></textarea>

                    </div>

                    <!-- Food Image -->

                    <div class="add-menu-group">

                        <label> Food Image </label>
                        
                        <div class="image-upload-box">

                            <input type="file" name="imageFile" accept="image/*">

                        </div>

                    </div>

                    <!-- Submit -->

                    <input type="submit" value="Add Food" class="add-food-btn">

                    <!-- Back -->

                    <a href="menuHome" class="back-menu"> Back to Menu Home  </a>

                </form>

            </div>

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

                            <img src="${pageContext.request.contextPath}/assets/img/logo-two.png"
                                alt="Logo">
                        </a>
                        <p> Restaurant Menu Management System
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
                                    <i class='bx bx-chevron-right'></i>
                                    Add Menu
                                </a>

                            </li>
                            <li>
                                <a href="viewMenu">
                                    <i class='bx bx-chevron-right'></i>
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

                        <h3>  Quick Links </h3>
                        
                        <ul>
                            <li>
                                <a href="menuHome">
                                    <i class='bx bx-chevron-right'></i>
                                    Home
                                </a>

                            </li>

                            <li>
                                <a href="addMenuPage">
                                    <i class='bx bx-chevron-right'></i>
                                    Add Menu
                                </a>
                            </li>
                            <li>
                                <a href="viewMenu">
                                    <i class='bx bx-chevron-right'></i>
                                    View Menu
                                </a>
                            </li>
                            <li>
                                <a href="logout">
                                    <i class='bx bx-chevron-right'></i>
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

                        <h3>  Restaurant</h3>

                        <ul>
                            <li>
                                <i class='bx bx-user'></i>
                                ${sessionScope.admin.username}

                            </li>
                            <li>  <i class='bx bx-phone-call'></i> +91 9503221889 </li>

                            <li> <i class='bx bx-location-plus'></i>  Pune, India  </li>

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

            <p>  @ Restaurant Menu Management System </p>

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