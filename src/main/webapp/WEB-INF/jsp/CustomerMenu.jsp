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

<title>
    ${sessionScope.selectedRestaurantName} - Menu
</title>


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

/* =====================================================
   CUSTOMER MENU
   ===================================================== */

.customer-menu-box {

    background: #ffffff !important;

    padding: 25px;

    border-radius: 8px;

    box-shadow:
        0 5px 30px rgba(0, 0, 0, 0.08);

    margin-bottom: 30px;

    height: 100%;

    transition: 0.3s;
}


.customer-menu-box:hover {

    transform: translateY(-5px);
}


/* Restaurant Name */

.restaurant-name-box {

    text-align: center;

    margin-bottom: 40px;
}


.restaurant-name-box h2 {

    color: #222222;

    margin-bottom: 10px;
}


.restaurant-name-box p {

    color: #666666;
}


/* Category */

.menu-category {

    margin-top: 45px;

    margin-bottom: 25px;

    text-align: center;
}


.menu-category h2 {

    display: inline-block;

    color: #222222;

    font-size: 30px;

    font-weight: 700;

    position: relative;

    padding-bottom: 10px;
}


.menu-category h2:after {

    content: "";

    position: absolute;

    width: 60px;

    height: 3px;

    background: #f7b731;

    left: 50%;

    bottom: 0;

    transform: translateX(-50%);
}


/* Food Image */

.customer-menu-image {

    width: 100%;

    height: 220px;

    object-fit: cover;

    border-radius: 8px;

    margin-bottom: 20px;
}


/* Food Name */

.customer-menu-box h3 {

    margin-bottom: 8px;

    color: #222222 !important;
}


/* Category */

.customer-menu-box .category {

    font-size: 14px;

    margin-bottom: 10px;

    color: #555555 !important;
}


/* Description */

.customer-menu-box .description {

    color: #666666 !important;

    min-height: 50px;

    margin-bottom: 15px;
}


/* Price */

.customer-menu-box .price {

    font-size: 20px;

    font-weight: 600;

    margin-bottom: 15px;

    color: #f7b731 !important;
}


/* Quantity */

.quantity-box {

    display: flex;

    align-items: center;

    gap: 10px;

    margin-bottom: 15px;
}


.quantity-box label {

    color: #222222 !important;

    font-weight: 500;

    margin-bottom: 0;
}


.quantity-box input {

    width: 80px;

    height: 45px;

    border: 1px solid #dddddd !important;

    border-radius: 5px;

    padding: 10px;

    background: #ffffff !important;

    color: #222222 !important;
}


/* Add Cart */

.add-cart-btn {

    display: inline-block;

    width: 100%;

    padding: 12px 20px;

    border: none !important;

    border-radius: 5px;

    background: #f7b731 !important;

    color: #ffffff !important;

    cursor: pointer;

    font-size: 15px;

    font-weight: 500;

    transition: 0.3s;
}


.add-cart-btn:hover {

    background: #e0a800 !important;

    color: #ffffff !important;
}


/* No Menu */

.no-menu {

    text-align: center;

    padding: 50px;
}


.no-menu h3 {

    color: #222222 !important;
}


.no-menu p {

    color: #666666 !important;
}


/* Dark Theme */

.theme-dark .customer-menu-box {

    background: #252525 !important;

    box-shadow:
        0 5px 30px rgba(0,0,0,0.30) !important;
}


.theme-dark .restaurant-name-box h2 {

    color: #ffffff !important;
}


.theme-dark .restaurant-name-box p {

    color: #cccccc !important;
}


.theme-dark .menu-category h2 {

    color: #ffffff !important;
}


.theme-dark .customer-menu-box h3 {

    color: #ffffff !important;
}


.theme-dark .customer-menu-box .category {

    color: #cccccc !important;
}


.theme-dark .customer-menu-box .description {

    color: #cccccc !important;
}


.theme-dark .quantity-box label {

    color: #ffffff !important;
}


.theme-dark .quantity-box input {

    background: #333333 !important;

    color: #ffffff !important;

    border-color: #555555 !important;
}


.theme-dark .no-menu h3 {

    color: #ffffff !important;
}


.theme-dark .no-menu p {

    color: #cccccc !important;
}


@media only screen and (max-width: 767px) {

    .customer-menu-box {

        padding: 20px;
    }

    .customer-menu-image {

        height: 200px;
    }
}

</style>

</head>


<body>


<!-- =====================================================
     NAVBAR
     ===================================================== -->

<div class="navbar-area fixed-top">


    <div class="mobile-nav">

        <a
            href="${pageContext.request.contextPath}/customerHome"
            class="logo">

            <img
                src="${pageContext.request.contextPath}/assets/img/logo-two.png"
                alt="Logo">

        </a>

    </div>


    <div class="main-nav main-nav-three">

        <div class="container">

            <nav class="navbar navbar-expand-md navbar-light">


                <a
                    class="navbar-brand"
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


                <div
                    class="collapse navbar-collapse mean-menu"
                    id="navbarSupportedContent">


                    <ul class="navbar-nav">


                        <li class="nav-item">

                            <a
                                href="${pageContext.request.contextPath}/customerHome">

                                Home

                            </a>

                        </li>


                        <li class="nav-item">

                            <a
                                href="${pageContext.request.contextPath}/customerMenu"
                                class="active">

                                Menu

                            </a>

                        </li>


                        <li class="nav-item">

                            <a
                                href="${pageContext.request.contextPath}/changeRestaurant">

                                Restaurants

                            </a>

                        </li>


                        <li class="nav-item">

                            <a
                                href="${pageContext.request.contextPath}/viewCart">

                                My Cart

                            </a>

                        </li>


                        <li class="nav-item">

                            <a
                                href="${pageContext.request.contextPath}/myOrders">

                                My Orders

                            </a>

                        </li>


                        <li class="nav-item">

                            <a
                                href="${pageContext.request.contextPath}/myQueries">

                                My Queries

                            </a>

                        </li>


                        <li class="nav-item">

                            <a
                                href="${pageContext.request.contextPath}/customerLogout">

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


<!-- =====================================================
     PAGE TITLE
     ===================================================== -->

<div class="page-title-area page-title-img-one">

    <div class="container">

        <div class="page-title-item">

            <h2>Our Menu</h2>

            <ul>

                <li>

                    <a
                        href="${pageContext.request.contextPath}/customerHome">

                        Home

                    </a>

                </li>

                <li>

                    <i class="bx bx-chevron-right"></i>

                </li>

                <li>

                    ${sessionScope.selectedRestaurantName}

                </li>

            </ul>

        </div>

    </div>

</div>


<!-- =====================================================
     CUSTOMER MENU
     ===================================================== -->

<section class="blog-area pt-100 pb-70">

    <div class="container">


        <!-- Restaurant Name -->

        <div class="restaurant-name-box">

            <h2>

                ${sessionScope.selectedRestaurantName}

            </h2>

            <p>

                Explore our delicious menu

            </p>

        </div>


        <!-- No Menu -->

        <c:if test="${empty categoryMenus}">

            <div class="row">

                <div class="col-12">

                    <div class="customer-menu-box no-menu">

                        <h3>
                            No Menu Items Available
                        </h3>

                        <p>
                            Sorry, currently there are no food
                            items available at this restaurant.
                        </p>

                    </div>

                </div>

            </div>

        </c:if>


        <!-- =================================================
             CATEGORY LOOP
             ================================================= -->

        <c:forEach
            var="categoryEntry"
            items="${categoryMenus}">


            <!-- CATEGORY TITLE -->

            <div class="menu-category">

                <h2>

                    ${categoryEntry.key}

                </h2>

            </div>


            <!-- CATEGORY ITEMS -->

            <div class="row">


                <c:forEach
                    var="menu"
                    items="${categoryEntry.value}">


                    <div class="col-sm-6 col-lg-4">

                        <div class="customer-menu-box">


                            <!-- Food Image -->

                            <img
                                src="${pageContext.request.contextPath}/${menu.foodImage}"
                                class="customer-menu-image"
                                alt="${menu.foodName}">


                            <!-- Food Name -->

                            <h3>

                                ${menu.foodName}

                            </h3>


                            <!-- Description -->

                            <p class="description">

                                ${menu.description}

                            </p>


                            <!-- Price -->

                            <p class="price">

                                ₹${menu.price}

                            </p>


                            <!-- Add To Cart -->

                            <form
                                action="${pageContext.request.contextPath}/addToCart"
                                method="post">


                                <input
                                    type="hidden"
                                    name="foodId"
                                    value="${menu.foodId}">


                                <div class="quantity-box">

                                    <label>

                                        Quantity:

                                    </label>

                                    <input
                                        type="number"
                                        name="quantity"
                                        value="1"
                                        min="1"
                                        required>

                                </div>


                                <button
                                    type="submit"
                                    class="add-cart-btn">

                                    <i class="bx bx-cart"></i>

                                    Add to Cart

                                </button>

                            </form>

                        </div>

                    </div>


                </c:forEach>

            </div>


        </c:forEach>

    </div>

</section>


<!-- =====================================================
     FOOTER
     ===================================================== -->

<footer class="footer-area-two pt-100 pb-70">

    <div class="container">

        <div class="row justify-content-center">


            <div class="col-sm-6 col-lg-4">

                <div class="footer-item">

                    <div class="footer-logo">

                        <a
                            href="${pageContext.request.contextPath}/customerHome">

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

                            <a
                                href="${pageContext.request.contextPath}/customerHome">

                                Home

                            </a>

                        </li>


                        <li>

                            <a
                                href="${pageContext.request.contextPath}/changeRestaurant">

                                Restaurants

                            </a>

                        </li>


                        <li>

                            <a
                                href="${pageContext.request.contextPath}/customerMenu">

                                View Menu

                            </a>

                        </li>


                        <li>

                            <a
                                href="${pageContext.request.contextPath}/viewCart">

                                My Cart

                            </a>

                        </li>


                        <li>

                            <a
                                href="${pageContext.request.contextPath}/myOrders">

                                My Orders

                            </a>

                        </li>

                    </ul>

                </div>

            </div>


            <div class="col-sm-6 col-lg-4">

                <div class="footer-item">

                    <h3>Restaurant</h3>

                    <ul>

                        <li>

                            <i class="bx bx-restaurant"></i>

                            ${sessionScope.selectedRestaurantName}

                        </li>


                        <li>

                            <i class="bx bx-user"></i>

                            ${sessionScope.customer.customerName}

                        </li>


                        <li>

                            <i class="bx bx-map"></i>

                            Pune, India

                        </li>


                        <li>

                            <i class="bx bx-message-detail"></i>

                            <a
                                href="${pageContext.request.contextPath}/contactQueryPage">

                                Submit Query

                            </a>

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


<!-- ================= AI CHATBOT ================= -->

<style>

    /* Floating AI Button */
    .ai-chat-button {
        position: fixed;
        right: 30px;
        bottom: 30px;
        width: 60px;
        height: 60px;
        border-radius: 50%;
        border: none;
        background: #ffb400;
        color: #111;
        font-size: 25px;
        cursor: pointer;
        z-index: 9999;
        box-shadow: 0 5px 20px rgba(0,0,0,0.25);
        transition: 0.3s;
    }

    .ai-chat-button:hover {
        transform: scale(1.08);
    }

    /* Chat Box */
    .ai-chat-box {
        display: none;
        position: fixed;
        right: 30px;
        bottom: 100px;
        width: 350px;
        height: 480px;
        background: #ffffff;
        border-radius: 15px;
        box-shadow: 0 10px 40px rgba(0,0,0,0.25);
        z-index: 9998;
        overflow: hidden;
        border: 1px solid #eeeeee;
    }

    /* Header */
    .ai-chat-header {
        background: #ffb400;
        padding: 16px;
        display: flex;
        justify-content: space-between;
        align-items: center;
        color: #111;
    }

    .ai-chat-header h4 {
        margin: 0;
        font-size: 18px;
        font-weight: 600;
    }

    .ai-close {
        border: none;
        background: transparent;
        font-size: 24px;
        cursor: pointer;
        color: #111;
    }

    /* Messages */
    .ai-chat-messages {
        height: 350px;
        padding: 15px;
        overflow-y: auto;
        background: #f8f8f8;
    }

    .ai-message {
        margin-bottom: 12px;
        padding: 10px 13px;
        border-radius: 12px;
        max-width: 85%;
        font-size: 14px;
        line-height: 1.5;
    }

    .ai-bot-message {
        background: #ffffff;
        border: 1px solid #eeeeee;
        color: #333;
        margin-right: auto;
    }

    .ai-user-message {
        background: #ffb400;
        color: #111;
        margin-left: auto;
    }

    /* Input */
    .ai-chat-input {
        display: flex;
        padding: 10px;
        background: #ffffff;
        border-top: 1px solid #eeeeee;
    }

    .ai-chat-input input {
        flex: 1;
        border: 1px solid #ddd;
        border-radius: 20px;
        padding: 10px 15px;
        outline: none;
        font-size: 14px;
    }

    .ai-chat-input button {
        margin-left: 8px;
        width: 45px;
        height: 42px;
        border: none;
        border-radius: 50%;
        background: #ffb400;
        color: #111;
        cursor: pointer;
        font-size: 18px;
    }

    .ai-chat-input button:hover {
        background: #e5a000;
    }

    /* Mobile */
    @media (max-width: 500px) {

        .ai-chat-box {
            right: 10px;
            bottom: 85px;
            width: calc(100% - 20px);
            height: 450px;
        }

        .ai-chat-button {
            right: 15px;
            bottom: 20px;
        }
    }

</style>


<!-- Floating AI Button -->
<button class="ai-chat-button" onclick="toggleAIChat()" title="Ask AI">
    <i class="bx bx-bot"></i>
</button>


<!-- AI Chat Window -->
<div class="ai-chat-box" id="aiChatBox">

    <div class="ai-chat-header">

        <h4>
            <i class="bx bx-bot"></i>
            Restaurant AI
        </h4>

        <button class="ai-close" onclick="toggleAIChat()">
            &times;
        </button>

    </div>


    <div class="ai-chat-messages" id="aiChatMessages">

        <div class="ai-message ai-bot-message">
            Hello! 👋<br>
            I'm your restaurant AI assistant.<br><br>
            Ask me about our menu, food, prices or categories.
        </div>

    </div>


    <div class="ai-chat-input">

        <input
            type="text"
            id="aiQuestion"
            placeholder="Ask about the menu..."
            onkeypress="handleAIKeyPress(event)"
        >

        <button onclick="sendAIQuestion()">
            <i class="bx bx-send"></i>
        </button>

    </div>

</div>


<script>

    function toggleAIChat() {

        var chatBox = document.getElementById("aiChatBox");

        if (chatBox.style.display === "block") {
            chatBox.style.display = "none";
        } else {
            chatBox.style.display = "block";

            setTimeout(function() {
                document.getElementById("aiQuestion").focus();
            }, 100);
        }
    }


    function handleAIKeyPress(event) {

        if (event.key === "Enter") {
            sendAIQuestion();
        }
    }


    function sendAIQuestion() {

        var input = document.getElementById("aiQuestion");
        var question = input.value.trim();

        if (question === "") {
            return;
        }


        var messages = document.getElementById("aiChatMessages");


        /* Show customer question */

        var userMessage = document.createElement("div");

        userMessage.className = "ai-message ai-user-message";

        userMessage.innerText = question;

        messages.appendChild(userMessage);


        input.value = "";


        /* Scroll down */

        messages.scrollTop = messages.scrollHeight;


        /* Show thinking message */

        var thinkingMessage = document.createElement("div");

        thinkingMessage.className = "ai-message ai-bot-message";

        thinkingMessage.id = "aiThinking";

        thinkingMessage.innerText = "Thinking...";

        messages.appendChild(thinkingMessage);

        messages.scrollTop = messages.scrollHeight;


        /* Send question to Spring Controller */

        fetch("${pageContext.request.contextPath}/askAI", {

            method: "POST",

            headers: {
                "Content-Type": "application/x-www-form-urlencoded"
            },

            body: "question=" + encodeURIComponent(question)

        })

        .then(function(response) {

            return response.text();

        })

        .then(function(answer) {

            var thinking =
                document.getElementById("aiThinking");

            if (thinking) {
                thinking.remove();
            }


            var botMessage =
                document.createElement("div");

            botMessage.className =
                "ai-message ai-bot-message";

            botMessage.innerText = answer;

            messages.appendChild(botMessage);


            messages.scrollTop =
                messages.scrollHeight;

        })

        .catch(function(error) {

            var thinking =
                document.getElementById("aiThinking");

            if (thinking) {
                thinking.remove();
            }


            var errorMessage =
                document.createElement("div");

            errorMessage.className =
                "ai-message ai-bot-message";

            errorMessage.innerText =
                "Sorry, I could not connect to the AI.";

            messages.appendChild(errorMessage);


            messages.scrollTop =
                messages.scrollHeight;

            console.error(error);

        });

    }

</script>

<!-- ================= END AI CHATBOT ================= -->


</body>

</html>