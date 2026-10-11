
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Restaurant Menu Management</title>

      <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="assets/css/bootstrap.min.css">
        <!-- Meanmenu CSS -->
        <link rel="stylesheet" href="assets/css/meanmenu.css">
        <!-- Boxicons CSS -->
        <link rel="stylesheet" href="assets/css/boxicons.min.css">
        <!-- Owl Carousel -->
        <link rel="stylesheet" href="assets/css/owl.carousel.min.css">
        <link rel="stylesheet" href="assets/css/owl.theme.default.min.css">
        <!-- Slick Slider CSS -->
        <link rel="stylesheet" href="assets/css/slick.min.css">
        <link rel="stylesheet" href="assets/css/slick-theme.min.css">
        <!-- Magnific Popup CSS -->
        <link rel="stylesheet" href="assets/css/magnific-popup.min.css">
        <!-- Style CSS -->
        <link rel="stylesheet" href="assets/css/style.css">
        <!-- Responsive CSS -->
        <link rel="stylesheet" href="assets/css/responsive.css">
        <!-- Theme Dark CSS -->
        <link rel="stylesheet" href="assets/css/theme-dark.css">
</head>

<body>

    <!-- ================= NAVBAR ================= -->

    <div class="navbar-area fixed-top">

        <!-- Mobile Navbar -->
        <div class="mobile-nav">

            <a href="menuHome" class="logo">
                <img src="${pageContext.request.contextPath}/assets/img/logo-two.png"alt="Logo">
            </a>

        </div>


        <!-- Desktop Navbar -->
        <div class="main-nav main-nav-three">

            <div class="container">

                <nav class="navbar navbar-expand-md navbar-light">

                    <!-- Logo -->
                    <a class="navbar-brand" href="menuHome">

                        <img src="${pageContext.request.contextPath}/assets/img/logo.png" class="logo-one" alt="Logo">

                        <img src="${pageContext.request.contextPath}/assets/img/logo-two.png" class="logo-two"  alt="Logo">

                    </a>


                    <!-- Navigation -->
                    <div class="collapse navbar-collapse mean-menu"
                         id="navbarSupportedContent">

                        <ul class="navbar-nav">
                            <li class="nav-item">
                               <a href="menuHome">Home </a>
                            </li>

                            <li class="nav-item">
                                <a href="addMenuPage"> Add Menu </a>
                            </li>

                            <li class="nav-item">
                                <a href="viewMenu"> View Menu </a>
                            </li>
                            
                            <li class="nav-item">
                                <a href="adminOrders">View Orders</a>
                            </li>
                            
                            <li class="nav-item">
                                <a href="adminQueries">Customer Queries</a>
                            </li>
                            
                            <li class="nav-item">
                                <a href="logout"> Logout </a>
                            </li>

                        </ul>
                        <!-- Right Side -->
                        <div class="side-nav">

                            <span class="nav-tel">
                                <i class='bx bx-user'></i>
                                ${sessionScope.admin.username}
                            </span>

                        </div>

                    </div>

                </nav>

            </div>

        </div>

    </div>

    <!-- ================= PAGE TITLE ================= -->

    <div class="page-title-area page-title-img-one">

        <div class="container">

            <div class="page-title-item">

                <h2>Restaurant Menu</h2>

                <ul>
                    <li>Menu Management</li>
                </ul>

            </div>

        </div>

    </div>

    <!-- ================= MAIN CONTENT ================= -->

    <section class="blog-area pt-100 pb-70">

        <div class="container">

            <!-- Welcome -->
            <div class="text-center mb-5">

                <h2>
                    Welcome,
                    <strong>${sessionScope.admin.username}</strong>
                </h2>

                <p> Manage your restaurant menu easily and efficiently.</p>

            </div>

            <div class="row justify-content-center">

                <!-- ADD MENU -->

                <div class="col-sm-6 col-lg-4">

                    <div class="blog-item">

                        <div class="blog-top">

                            <img src="${pageContext.request.contextPath}/assets/img/home-one/blog1.jpg" alt="Add Menu">

                        </div>

                        <div class="blog-bottom">

                            <h3>Add Menu Item</h3>

                            <p> Add new food items to your restaurant menu
                                with name, price, description and image.
                            </p>

                            <a class="cmn-btn" href="addMenuPage">Add Menu </a>

                        </div>

                    </div>

                </div>

                <!-- VIEW MENU -->

                <div class="col-sm-6 col-lg-4">

                    <div class="blog-item">

                        <div class="blog-top">

                            <img src="${pageContext.request.contextPath}/assets/img/home-one/blog2.jpg"  alt="View Menu">

                        </div>

                        <div class="blog-bottom">

                            <h3>View Menu </h3>

                            <p> View all restaurant menu items and manage
                                your existing menu.
                            </p>

                            <a class="cmn-btn" href="viewMenu"> View Menu </a>

                        </div>

                    </div>

                </div>

                <!-- LOGOUT -->

                <div class="col-sm-6 col-lg-4">

                    <div class="blog-item">

                        <div class="blog-top">

                            <img src="${pageContext.request.contextPath}/assets/img/home-one/blog3.jpg" alt="Logout">

                        </div>

                        <div class="blog-bottom">

                            <h3>Logout </h3>

                            <p> Logout from the Restaurant Menu Management
                                system securely.
                            </p>

                            <a class="cmn-btn" href="logout"> Logout  </a>

                        </div>

                    </div>

                </div>

            </div>

        </div>

    </section>

    <!-- ================= FOOTER ================= -->

    <footer class="footer-area-two pt-100 pb-70">

        <div class="container">

            <div class="row justify-content-center">


                <!-- Footer Logo -->

                <div class="col-sm-6 col-lg-3">

                    <div class="footer-item">

                        <div class="footer-logo">

                            <a href="MenuHome.jsp">

                                <img src="${pageContext.request.contextPath}/assets/img/logo-two.png" alt="Logo">

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

                            <h3>Menu Management</h3>

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

                            <h3>Quick Links</h3>

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

                            <h3>Restaurant</h3>

                            <ul>

                                <li>
                                    <i class='bx bx-user'></i>
                                    ${sessionScope.admin.username}
                                </li>

                                <li>
                                    <i class='bx bx-phone-call'></i>
                                    +91 9503221889
                                </li>

                                <li>
                                    <i class='bx bx-location-plus'></i>
                                    Pune, India
                                </li>

                            </ul>

                        </div>

                    </div>

                </div>

            </div>

        </div>

    </footer>


    <!-- ================= COPYRIGHT ================= -->

    <div class="copyright-area copyright-area-two">

        <div class="container">

            <div class="copyright-item">

                <p>  @ Restaurant Menu Management System  </p>

            </div>

        </div>

    </div>


    <!-- ================= JAVASCRIPT ================= -->

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

