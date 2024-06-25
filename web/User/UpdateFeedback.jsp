<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zxx">

    <head>
        <meta charset="UTF-8">
        <meta name="description" content="Ogani Template">
        <meta name="keywords" content="Ogani, unica, creative, html">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title>Ogani | Template</title>

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

                            <li><a href="Profile.jsp">Tài khoản</a>
                                <ul class="header__menu__dropdown">
                                    <li><a href="ChangeProfile.jsp">Thay đổi thông tin</a></li>
                                    <li><a href="ChangePassword.jsp">Thay đổi mật khẩu</a></li>
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
                                    <li><a href="GiveFeedback.jsp">Đánh giá</a></li>
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

        <!-- Checkout Section Begin -->
        <section class="checkout spad">
            <div class="container">
                <div class="checkout__form">
                    <h4>Cập nhật đánh giá của bạn</h4>
                    <p class="text-danger">${mess}</p>
                    <form action="${pageContext.request.contextPath}/update" method="post">
                        <div class="row">
                            <div class="col-lg-8 col-md-6">
                                <div class="checkout__input">
                                    <a> Nội dung</a>
                                    <input  type="text" name="content"  value="${fb.fb_content}" required="">
                                    <a> Ngày đánh giá</a>
                                    <input  type="text" name="date" value="${fb.fb_date}" readonly="">
                                    <a> Thời gian đánh giá </a>
                                    <input  type="text" name="time" value="${fb.fb_time}" readonly="">
                                    <a> ID </a>
                                    <input  type="text" name="fid"  value="${fb.fb_id}" readonly="">

                                </div>
                            </div>
                        </div>
                        <div>
                            <button type="submit" class="primary-btn cart-btn cart-btn-left">Cập nhật</button>
                        </div>
                    </form>
                </div>
            </div>
        </section>
        <!-- Checkout Section End -->

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