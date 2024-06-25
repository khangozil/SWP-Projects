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
        <link rel="stylesheet" href="../css/bootstrap.min.css" type="text/css">
        <link rel="stylesheet" href="../css/font-awesome.min.css" type="text/css">
        <link rel="stylesheet" href="../css/elegant-icons.css" type="text/css">
        <link rel="stylesheet" href="../css/nice-select.css" type="text/css">
        <link rel="stylesheet" href="../css/jquery-ui.min.css" type="text/css">
        <link rel="stylesheet" href="../css/owl.carousel.min.css" type="text/css">
        <link rel="stylesheet" href="../css/slicknav.min.css" type="text/css">
        <link rel="stylesheet" href="../css/style.css" type="text/css">
    </head>

    <body>
        <jsp:include page="HeaderUser.jsp"></jsp:include>

            <!--navbar-->
            <div class="container">
                <div class="row">
                    <div class="col-lg-3">
                        <div class="header__logo">
                            <a href="${pageContext.request.contextPath}/home"><img src="https://static.ybox.vn/2021/5/3/1621994139101-LOGOTN.PNG" alt=""></a>
                    </div>
                </div>
                <div class="col-lg-6">
                    <nav class="header__menu">
                        <ul>
                            <li class="active"><a href="${pageContext.request.contextPath}/home">Trang chủ</a></li>

                            <li><a href="${pageContext.request.contextPath}/User/Profile.jsp">Tài khoản</a>
                                <ul class="header__menu__dropdown">
                                    <li><a href="${pageContext.request.contextPath}/User/ChangeProfile.jsp">Thay đổi thông tin</a></li>
                                    <li><a href="${pageContext.request.contextPath}/User/ChangePassword.jsp">Thay đổi mật khẩu</a></li>
                                    <!--<li><a href="#">Tình trạng đơn hàng</a></li>-->
                                </ul>
                            </li>
                            <li><a href="#">Đơn hàng</a>
                                <ul class="header__menu__dropdown">
                                    <li><a href="#">Tình trạng đơn hàng</a></li>
                                    <!--<li><a href="#">Thay đổi mật khẩu</a></li>-->
                                    <!--<li><a href="#">Tình trạng đơn hàng</a></li>-->
                                </ul>
                            </li>


                            <li><a href="${pageContext.request.contextPath}/viewFeedback">Đánh giá</a>
                                <ul class="header__menu__dropdown">
                                    <li><a href="User/GiveFeedback.jsp">Đánh giá</a></li>
                                    <li><a href="${pageContext.request.contextPath}/viewFeedback">Xem đánh giá</a></li>
                                </ul>
                            </li>

                        </ul>
                    </nav>

                </div>
                <div class="col-lg-3">
                    <div class="header__cart">
                        <ul>
                            <li><a href="#"><i class="fa fa-heart"></i> <span>#</span></a></li>
                            <li><a href="Cart.jsp"><i class="fa fa-shopping-bag"></i> <span>#</span></a></li>
                        </ul>
                        <!--<div class="header__cart__price">item: <span>$150.00</span></div>-->
                    </div>
                </div>
            </div>
        </div>

        <!-- Shoping Cart Section Begin -->
        <section class="shoping-cart spad">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="shoping__cart__table">
                            <table>
                                <thead>

                                    <tr>
                                        <th class="shoping__product">Sản Phẩm</th>
                                        <th>Giá</th>
                                        <th>Số Lượng</th>
                                        <th>Tổng Cộng</th>
                                        <th></th>
                                    </tr>

                                </thead>
                                <tbody>
                                    <tr>
                                        <td class="shoping__cart__item">
                                            <h5>${item.getPro_name()}</h5>
                                        </td>
                                        <td class="shoping__cart__price">

                                        </td>
                                        <td class="shoping__cart__quantity">
                                            <div class="quantity">
                                                <div class="pro-qty">
                                                    <input type="text" value="1">
                                                </div>
                                            </div>
                                        </td>
                                    </tr>
                                </tbody>
                                <!--</c:forEach>
                               <td class="shoping__cart__total">
                                   $110.00
                               </td>
                               <td class="shoping__cart__item__close">
                                   <span class="icon_close"></span>
                               </td>
                           </tr>-->
                                <!--                                    <tr>
                                                                        <td class="shoping__cart__item">
                                                                            <h5>Bắp cải</h5>
                                                                        </td>
                                                                        <td class="shoping__cart__price">
                                                                            $39.00
                                                                        </td>
                                                                        <td class="shoping__cart__quantity">
                                                                            <div class="quantity">
                                                                                <div class="pro-qty">
                                                                                    <input type="text" value="1">
                                                                                </div>
                                                                            </div>
                                                                        </td>
                                                                        <td class="shoping__cart__total">
                                                                            $39.99
                                                                        </td>
                                                                        <td class="shoping__cart__item__close">
                                                                            <span class="icon_close"></span>
                                                                        </td>-->
                                <!--                                    </tr>
                                                                </tbody>-->
                            </table>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-12">
                        <div class="shoping__cart__btns">
                            <a href="listproduct.jsp" class="primary-btn cart-btn">Tiếp Tục Mua Hàng</a>
                            <a href="cart.jsp" class="primary-btn cart-btn cart-btn-right"><span class="icon_loading"></span>
                                Cập Nhật Giỏ Hàng</a>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="shoping__continue">
                            <div class="shoping__discount">
                                <h5>Nhập mã giảm giá</h5>
                                <form action="#">
                                    <input type="text" placeholder="Nhập mã giảm giá">
                                    <button type="submit" class="site-btn">Áp dụng giảm giá</button>
                                </form>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="shoping__checkout">
                            <h5>Thanh Toán</h5>
                            <ul>
                                <li>Tổng tiền<span>$454.98</span></li>
                                <li>Đã giảm giá<span>$454.98</span></li>
                            </ul>
                            <a href="#" class="primary-btn">Đặt Hàng</a>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- Shoping Cart Section End -->

        <!-- Footer Section Begin -->
        <footer class="footer spad">
            <div class="container">
                <div class="row">
                    <div class="col-lg-3 col-md-6 col-sm-6">
                        <div class="footer__about">
                            <div class="footer__about__logo">
                                <!--<a href="./index.html"><img src="img/logo.png" alt=""></a>-->
                            </div>
                            <ul>
                                <li>Address: 60-49 Road 11378 New York</li>
                                <li>Phone: +65 11.188.888</li>
                                <li>Email: hello@colorlib.com</li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 col-sm-6 offset-lg-1">
                        <div class="footer__widget">
                            <h6>Useful Links</h6>
                            <ul>
                                <li><a href="#">About Us</a></li>
                                <li><a href="#">About Our Shop</a></li>
                                <li><a href="#">Secure Shopping</a></li>
                                <li><a href="#">Delivery infomation</a></li>
                                <li><a href="#">Privacy Policy</a></li>
                                <li><a href="#">Our Sitemap</a></li>
                            </ul>
                            <ul>
                                <li><a href="#">Who We Are</a></li>
                                <li><a href="#">Our Services</a></li>
                                <li><a href="#">Projects</a></li>
                                <li><a href="#">Contact</a></li>
                                <li><a href="#">Innovation</a></li>
                                <li><a href="#">Testimonials</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-12">
                        <div class="footer__widget">
                            <h6>Join Our Newsletter Now</h6>
                            <p>Get E-mail updates about our latest shop and special offers.</p>
                            <form action="#">
                                <input type="text" placeholder="Enter your mail">
                                <button type="submit" class="site-btn">Subscribe</button>
                            </form>
                            <div class="footer__widget__social">
                                <a href="#"><i class="fa fa-facebook"></i></a>
                                <a href="#"><i class="fa fa-instagram"></i></a>
                                <a href="#"><i class="fa fa-twitter"></i></a>
                                <a href="#"><i class="fa fa-pinterest"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-12">
                        <div class="footer__copyright">
                            <div class="footer__copyright__text"><p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                                    Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
                                    <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p></div>
                            <div class="footer__copyright__payment"><img src="img/payment-item.png" alt=""></div>
                        </div>
                    </div>
                </div>
            </div>
        </footer>
        <!-- Footer Section End -->

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