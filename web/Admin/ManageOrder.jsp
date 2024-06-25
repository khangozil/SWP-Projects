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
        <jsp:include page="HeaderAdmin.jsp"></jsp:include>

            <!-- Shoping Cart Section Begin -->
            <section class="shoping-cart spad">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="shoping__cart__table">
                                <table>
                                    <thead>
                                        <tr>
                                            <th>ID Đơn Hàng</th>
                                            <th>Thời Gian Đặt Hàng </th>
                                            <th>Tổng Giá </th>                                           
                                            <th>ID Người Đặt </th>
                                            <th>Mã Giảm Giá </th>
                                            <th></th>
                                        </tr>
                                    </thead>                              
                                <c:forEach items="${listOrder}" var="o">
                                    <tbody>
                                        <tr>
                                            <td> ${o.order_id}</td>
                                            <td> ${o.order_date}</td>
                                            <td>${o.total_price}</td>
                                            <td>${o.acc_id}</td>
                                            <td>${o.voucher_id}</td>
                                            <td></td>
                                        </tr>
                                    </tbody>
                                </c:forEach>
                            </table>
                            <div>
                                <a href="ChangeProfile.jsp" class="primary-btn cart-btn cart-btn-left"><span class="icon_loading"></span>
                                    Cập nhật thông tin</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>


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