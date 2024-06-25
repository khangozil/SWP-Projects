<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Thay đổi thông tin cá nhân</title>
        <link rel="stylesheet" href="../css/register.css">
        <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>

        <style>
            .text-danger{
                margin-top: 10px;
                color: red;
            }
        </style>
    </head>

    <body>
        <section class="container">
            <header>Cập nhật thông tin tài khoản</header>
            <p class="text-danger">${mess}</p>
            <form action="${pageContext.request.contextPath}/updateProfile" method="post" class="form" onsubmit="return validateForm()">

                <%
                    // Lấy tham số acc_id muốn thay đổi
                    String accId = request.getParameter("acc_id");
                %>
                <div class="input-box">
                    <label>Tài khoản</label>
                    <input name="acc_id" value="<%= accId %>" readonly />
                </div>

                <div class="input-box">
                    <label for="fullname">Họ tên</label>
                    <input id="fullname" name="fullname" type="text" value="${fullname}" placeholder="Nhập họ tên của bạn"  />
                    <span id="nameError"></span> 
                </div>

                <div class="column">
                    <div class="input-box">
                        <label>Số điện thoại</label>
                        <input id="phone" name="phone" type="text" value="${phone}" placeholder="Nhập số điện thoại của bạn"  />
                        <span id="phoneError"></span> 
                    </div>
                </div>

                <div class="input-box">
                    <label>Địa chỉ</label>
                    <input id="address" name="address" type="text" value="${address}" placeholder="Nhập địa chỉ của bạn"  />
                    <span id="addressError"></span> 
                </div>

                <div class="input-box">
                    <label>Mail</label>
                    <input id="mail" name="mail" type="text" value="${mail}" placeholder="Nhập mail của bạn"  />
                    <span id="mailError"></span> 
                </div>

                <div class="gender-box">
                    <h3>Giới tính</h3>
                    <div class="gender-option">
                        <div class="gender">
                            <input type="radio" id="check-male" name="gender" value="Nam" checked />
                            <label for="check-male">Nam</label>
                        </div>

                        <div class="gender">
                            <input type="radio" id="check-female" name="gender" value="Nữ"/>
                            <label for="check-female">Nữ</label>
                        </div>
                    </div>
                    <div class="role-box">
                        <h3>Vai trò</h3>
                        <div class="role-option">
                            <div class="role">
                                <input type="radio"  name="role" value="0" checked />
                                <label for="check-customer">Khách hàng</label>
                            </div>

                            <div class="role">
                                <input type="radio"  name="role" value="1"/>
                                <label for="check-admin">Admin</label>
                            </div>
                        </div>
                    </div>
                </div>

                <button class="btn-prime">Cập nhật</button>      
            </form>

        </section>

        <script>
            function validateForm() {
                var name = document.getElementById("fullname").value;
                var phone = document.getElementById("phone").value;
                var mail = document.getElementById("mail").value;
                var address = document.getElementById("address").value;

                var nameError = document.getElementById("nameError");
                var phoneError = document.getElementById("phoneError");
                var mailError = document.getElementById("mailError");
                var addressError = document.getElementById("addressError");

                var hasError = false;

                if (name === "") {
                    nameError.innerText = "Điền vào ô này";
                    hasError = true;
                } else {
                    nameError.innerText = "";
                }

//                const phoneRegex = /(0[3|5|7|8|9])+([0-9]{8})\b/g;
                const phoneRegex = /0[35789][0-9]{8}\b/g;
                if (phone === "") {
                    phoneError.innerText = "Điền vào ô này";
                    hasError = true;
                } else if (!phoneRegex.test(phone)) {
                    phoneError.innerText = "Số điện thoại không đúng định dạng";
                    hasError = true;
                } else {
                    phoneError.innerText = "";
                }

                const mailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
                if (mail === "") {
                    mailError.innerText = "Điền vào ô này";
                    hasError = true;
                } else if (!mailRegex.test(mail)) {
                    mailError.innerText = "Email không đúng định dạng";
                    hasError = true;
                } else {
                    mailError.innerText = "";
                }

                if (address === "") {
                    addressError.innerText = "Điền vào ô này";
                    hasError = true;
                } else {
                    addressError.innerText = "";
                }

                return !hasError;
            }
        </script>
    </body>

</html>