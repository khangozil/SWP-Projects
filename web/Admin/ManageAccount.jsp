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

        <style>
            .text-danger{
                margin-top: 10px;
                color: red;
            }
        </style>
    </head>

    <body>
        <jsp:include page="HeaderAdmin.jsp"></jsp:include>

            <!-- Shoping Cart Section Begin -->
            <section class="shoping-cart spad">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12">
                            <div>
                                <a href="Admin/CreateAccount.jsp" class="site-btn"></span>
                                    Tạo tài khoản</a>
                                <a href="Admin/UpdateProfile.jsp" class="site-btn"></span>
                                    Cập nhật thông tin</a>
                            </div>
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
                                            <th>Vai trò</th>
                                            <th></th>
                                            <th></th>
                                        </tr>
                                    </thead>                              
                                <c:forEach items="${listA}" var="o">
                                    <tbody>
                                        <tr>
                                            <td> ${o.acc_id}</td>
                                            <td> ${o.getAcc_name()}</td>
                                            <td>${o.getPhone()}</td>
                                            <td>${o.getAddress()}</td>
                                            <td>${o.getMail()}</td>
                                            <td>${o.getGender()}</td>
                                            <td>
                                                <c:choose>
                                                    <c:when test="${o.getIsAdmin() == 0}">
                                                        Khách hàng
                                                    </c:when>
                                                    <c:otherwise>
                                                        Admin
                                                    </c:otherwise>
                                                </c:choose>
                                            </td>
                                            <td> <a href="Admin/UpdateProfile.jsp?acc_id=${o.acc_id}" class="site-btn"></span>
                                                    Cập nhật</a>
                                            </td>
                                        </tr>
                                    </tbody>
                                </c:forEach>
                            </table>       
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