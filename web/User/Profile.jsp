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

        <style>
            .text-danger{
                margin-top: 10px;
                color: red;
            }
            .text-succes{
                margin-top: 20px;
                color: green;
            }

            /*popup*/
/*            .modal {
                display: none;
                position: fixed;
                z-index: 1; 
                left: 0;
                top: 0;
                width: 100%;
                height: 100%; 
                overflow: auto;
                background-color: rgb(0,0,0); 
                background-color: rgba(0,0,0,0.4); 
                display: flex;
                align-items: center;
                justify-content: center;
            }

            .modal-content {
                background-color: #fefefe;
                margin: auto;
                padding: 40px;
                border: 1px solid #888;
                width: 80%;
                max-width: 400px;
                text-align: center;
            }

            .close {
                color: #aaa;
                float: right;
                font-size: 28px;
                font-weight: bold;
            }

            .close:hover,
            .close:focus {
                color: black;
                text-decoration: none;
                cursor: pointer;
            }*/
        </style>
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


        <section class="shoping-cart spad">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="shoping__cart__table">
                            <table>
                                <thead>
                                    <tr>
                                        <th>ID</th>
                                        <th>Tên</th>
                                        <th>Số điện thoại</th>
                                        <th>Địa chỉ</th>
                                        <th>Mail</th>
                                        <th>Giới tính</th>

                                    </tr>
                                </thead>

                                <tbody>
                                    <tr>
                                        <td>${acc.acc_id}</td>
                                        <td>${acc.acc_name}</td>
                                        <td>${acc.phone}</td>
                                        <td>${acc.address}</td>
                                        <td>${acc.mail}</td>
                                        <td>${acc.gender}</td>
                                    </tr>
                                </tbody>
                            </table>
                            <div>
                                <a href="User/ChangeProfile.jsp" class="site-btn">
                                    Cập nhật thông tin</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!--popup-->
<!--            <div id="myModal" class="modal" style="display: ${mess ? 'block' : 'none'};">
                <div class="modal-content">
                    <span class="close">&times;</span>
                    <p id="popupMessage" class="${messSuccess ? 'text-success' : 'text-danger'}">${messSuccess ? messSuccess : mess}</p>
                </div>
            </div>-->
        </section>

    </body>
    <!--<script src="js/popup.js"></script>-->
</html>