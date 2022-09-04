<%-- 
    Document   : register
    Created on : Aug 27, 2022, 2:22:34 PM
    Author     : trant
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card border-0 shadow rounded-3 my-5">          
                <div class="card-body  p-4 p-sm-5">
                    <h5 class="card-title text-center mb-5 fw-bold fs-1">ĐĂNG KÝ</h5>
                    <form class="form-horizontal" method="post" action="#">

                        <div class="form-group">
                            <label for="name" class="cols-sm-2 control-label">Họ và Tên</label>
                            <div class="cols-sm-10">
                                <div class="input-group">
                                    <span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
                                    <input type="text" class="form-control" name="name" id="name" placeholder="Nhập họ và tên..." />
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="email" class="cols-sm-2 control-label">Email</label>
                            <div class="cols-sm-10">
                                <div class="input-group">
                                    <span class="input-group-addon"><i class="fa fa-envelope fa" aria-hidden="true"></i></span>
                                    <input type="text" class="form-control" name="email" id="email" placeholder="Nhập email..." />
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="username" class="cols-sm-2 control-label">Số điện thoại</label>
                            <div class="cols-sm-10">
                                <div class="input-group">
                                    <span class="input-group-addon"><i class="fa fa-users fa" aria-hidden="true"></i></span>
                                    <input type="text" class="form-control" name="phone_number" id="phone_number" placeholder="Nhập số điện thoại.." />
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="password" class="cols-sm-2 control-label">Địa chỉ</label>
                            <div class="cols-sm-10">
                                <div class="input-group">
                                    <span class="input-group-addon"><i class="fa fa-lock fa-lg" aria-hidden="true"></i></span>
                                    <input type="password" class="form-control" name="address" id="address" placeholder="Nhập địa chỉ..." />
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="password" class="cols-sm-2 control-label">Mật khẩu</label>
                            <div class="cols-sm-10">
                                <div class="input-group">
                                    <span class="input-group-addon"><i class="fa fa-lock fa-lg" aria-hidden="true"></i></span>
                                    <input type="password" class="form-control" name="password" id="password" placeholder="Nhập mật khẩu..." />
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="confirm" class="cols-sm-2 control-label">Nhập lại mật khẩu</label>
                            <div class="cols-sm-10">
                                <div class="input-group">
                                    <span class="input-group-addon"><i class="fa fa-lock fa-lg" aria-hidden="true"></i></span>
                                    <input type="password" class="form-control" name="confirm" id="confirm" placeholder="Nhập lại mật khẩu..." />
                                </div>
                            </div>
                        </div>
                        <div class="d-grid">
                            <button class="btn btn-primary btn-login text-uppercase fw-bold" type="submit" style="  padding: 0.75rem 1rem;">ĐĂNG KÝ</button>
                        </div>
                        <hr class="my-4">
                        <div class="d-grid">
                            Bạn đã có tài khoản ? <a href="<c:url value="/dangnhap" />" class="fw-bold" type="submit" style="text-decoration: none" >ĐĂNG NHẬP</a>
                        </div>
                    </form>
                </div>

            </div>
        </div>
    </div>
</div>