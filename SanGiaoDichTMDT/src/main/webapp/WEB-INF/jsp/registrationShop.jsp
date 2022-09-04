<%-- 
    Document   : registrationShop
    Created on : Aug 28, 2022, 12:27:36 PM
    Author     : trant
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<link href="<c:url value='/resources/css/registrationShop.css' />" rel="stylesheet"></link>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<div class="container register">
    <div class="row">
        <div class="col-md-3 register-left">
            <img src="https://image.ibb.co/n7oTvU/logo_white.png" alt=""/>
            <h3>Đăng Ký Cửa Hàng </h3>
            <p>Để có thể trở thành người bán hàng đồng hành cùng WEB BÁN HÀNG ONLINE 2022</p>
        </div>
        <div class="col-md-9 register-right">
            <div class="tab-content" id="myTabContent">
                <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
                    <h3 class="register-heading">ĐĂNG KÝ CỬA HÀNG</h3>
                    <div class="row register-form">
                        <div class="col-md-6">
                            <div class="form-group">
                                <input type="text" class="form-control" placeholder="Tên cửa hàng *" value="" />
                            </div>
                            <div class="form-group">
                                <input type="text" class="form-control" placeholder="Địa chỉ lấy hàng *" value="" />
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <input type="email" class="form-control" placeholder="Email *" value="" />
                            </div>
                            <div class="form-group">
                                <input type="text" minlength="10" maxlength="10" name="txtEmpPhone" class="form-control" placeholder="Số điện thoại *" value="" />
                            </div>
                            <input type="submit" class="btnRegister"  value="ĐĂNG KÝ"/>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</div>
