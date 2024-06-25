<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zxx">

    <head>
        <meta charset="UTF-8">
        <meta name="description" content="Ogani Template">
        <meta name="keywords" content="Ogani, unica, creative, html">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title>Rau củ tươi G7</title>

        <!-- Google Font -->
        <link href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&display=swap" rel="stylesheet">

        <!-- Css Styles -->
        <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
        <link rel="stylesheet" href="css/font-awesome.min.css" type="text/css">
        <link rel="stylesheet" href="css/elegant-icons.css" type="text/css">
        <link rel="stylesheet" href="css/nice-select.css" type="text/css">
        <link rel="stylesheet" href="css/jquery-ui.min.css" type="text/css">
        <link rel="stylesheet" href="css/owl.carousel.min.css" type="text/css">
        <link rel="stylesheet" href="css/slicknav.min.css" type="text/css">
        <link rel="stylesheet" href="css/style.css" type="text/css">
    </head>

    <body>


        <jsp:include page="Header.jsp"></jsp:include>

            <!--navbar-->
            <div class="container">
                <div class="row">
                    <div class="col-lg-3">
                        <div class="header__logo">
                            <a href="home"><img src="https://static.ybox.vn/2021/5/3/1621994139101-LOGOTN.PNG" alt=""></a>
                        </div>
                    </div>
                    <div class="col-lg-6">
                    <c:if test="${acc.getIsAdmin() == 0}">
                        <nav class="header__menu">
                            <ul>
                                <li class="active"><a href="home">Trang chủ</a></li>

                                <li><a href="${pageContext.request.contextPath}/User/Profile.jsp">Tài khoản</a>
                                    <ul class="header__menu__dropdown">
                                        <li><a href="User/ChangeProfile.jsp">Thay đổi thông tin</a></li>
                                        <li><a href="User/ChangePassword.jsp">Thay đổi mật khẩu</a></li>

                                    </ul>
                                </li>
                                <li><a href="#">Đơn hàng</a></li>

                                <li><a href="${pageContext.request.contextPath}/viewFeedback">Đánh giá</a>
                                    <ul class="header__menu__dropdown">
                                        <li><a href="User/GiveFeedback.jsp">Đánh giá</a></li>
                                        <li><a href="${pageContext.request.contextPath}/viewFeedback">Xem đánh giá</a></li>
                                    </ul>
                                </li>
                            </ul>
                        </nav>
                    </c:if>
                </div>

                <div class="col-lg-3">
                    <div class="header__cart">
                        <ul>
                            <li><a href="#"><i class="fa fa-heart"></i> <span>#</span></a></li>
                            <li><a href="Login.jsp"><i class="fa fa-shopping-bag"></i> <span>#</span></a></li>
                        </ul>
                        <!--<div class="header__cart__price">item: <span>$150.00</span></div>-->
                    </div>
                </div>
            </div>
        </div>


        <!-- Product Details Section Begin -->
        <section class="product-details spad">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6 col-md-6">
                        <div class="product__details__pic">
                            <div class="product__details__pic__item">
                                <img class="product__details__pic__item--large"
                                     src=${detail.getPro_image()} alt="">
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-6">
                        <div class="product__details__text">
                            <h3>${detail.getPro_name()}</h3>
                            <div class="product__details__price">${detail.getPro_price()}</div>
                            <p>${detail.getPro_description()}</p>
                            <div class="product__details__quantity">
                                <div class="quantity">
                                    <div class="pro-qty">
                                        <input type="text" value="1">
                                    </div>
                                </div>
                            </div>
                            <a href="#" class="primary-btn">Thêm vào giỏ hàng</a> 
                            <ul>
                                <!--                            <li><b>Availability</b> <span>In Stock</span></li>
                                                            <li><b>Shipping</b> <span>01 day shipping. <samp>Free pickup today</samp></span></li>-->
                                <li><b>Còn lại</b>${detail.getPro_quantity()} kg<span> </span></li></ul>

                        </div>
                    </div>
                    <!--                <div class="col-lg-12">
                                        <div class="product__details__tab">
                                            <ul class="nav nav-tabs" role="tablist">
                                                <li class="nav-item">
                                                    <a class="nav-link active" data-toggle="tab" href="#tabs-1" role="tab"
                                                        aria-selected="true">Description</a>
                                                </li>
                                            </ul>
                                            <div class="tab-content">
                                                <div class="tab-pane active" id="tabs-1" role="tabpanel">
                                                    <div class="product__details__tab__desc">
                                                        <h6>Thông tin sản phẩm</h6>
                                                        <p>Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui.
                                                            Pellentesque in ipsum id orci porta dapibus. Proin eget tortor risus. Vivamus
                                                            suscipit tortor eget felis porttitor volutpat. Vestibulum ac diam sit amet quam
                                                            vehicula elementum sed sit amet dui. Donec rutrum congue leo eget malesuada.
                                                            Vivamus suscipit tortor eget felis porttitor volutpat. Curabitur arcu erat,
                                                            accumsan id imperdiet et, porttitor at sem. Praesent sapien massa, convallis a
                                                            pellentesque nec, egestas non nisi. Vestibulum ac diam sit amet quam vehicula
                                                            elementum sed sit amet dui. Vestibulum ante ipsum primis in faucibus orci luctus
                                                            et ultrices posuere cubilia Curae; Donec velit neque, auctor sit amet aliquam
                                                            vel, ullamcorper sit amet ligula. Proin eget tortor risus.</p>
                                                            <p>Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Lorem
                                                            ipsum dolor sit amet, consectetur adipiscing elit. Mauris blandit aliquet
                                                            elit, eget tincidunt nibh pulvinar a. Cras ultricies ligula sed magna dictum
                                                            porta. Cras ultricies ligula sed magna dictum porta. Sed porttitor lectus
                                                            nibh. Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a.
                                                            Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui. Sed
                                                            porttitor lectus nibh. Vestibulum ac diam sit amet quam vehicula elementum
                                                            sed sit amet dui. Proin eget tortor risus.</p>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>-->
                </div>
            </div>
        </section>
        <!-- Product Details Section End -->



        <!-- Related Product Section Begin -->
        <!--    <section class="related-product">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="section-title related__product__title">
                                <h2>Sản phẩm liên quan</h2>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-3 col-md-4 col-sm-6">
                            <div class="product__item">
                                <div class="product__item__pic set-bg" data-setbg="https://www.sidechef.com/ingredient/fcb5d21a-1d8f-414d-8a50-594aba3fcbea.jpg"></div>
                                <div class="product__item__text">
                                    <h6><a href="#">Crab Pool Security</a></h6>
                                    <h5>$30.00</h5>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>-->
        <!-- Related Product Section End -->


        <jsp:include page="Footer.jsp"></jsp:include>

        <!-- Js Plugins -->
        <script src="js/jquery-3.3.1.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/jquery.nice-select.min.js"></script>
        <script src="js/jquery-ui.min.js"></script>
        <script src="js/jquery.slicknav.js"></script>
        <script src="js/mixitup.min.js"></script>
        <script src="js/owl.carousel.min.js"></script>
        <script src="js/main.js"></script>


    </body>

</html>