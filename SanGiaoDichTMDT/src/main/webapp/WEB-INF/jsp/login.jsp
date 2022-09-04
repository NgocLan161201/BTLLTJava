<%-- 
    Document   : login
    Created on : Aug 27, 2022, 2:21:52 PM
    Author     : trant
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<div class="container">
    <div class="row">
        <div class="col-sm-9 col-md-7 col-lg-5 mx-auto">
            <div class="card border-0 shadow rounded-3 my-5">
                <div class="card-body p-4 p-sm-5">
                    <h5 class="card-title text-center mb-5 fw-bold fs-1">ĐĂNG NHẬP</h5>
                    <form>
                        <div class="form-floating mb-3">
                            <input type="email" class="form-control" id="floatingInput" placeholder="name@example.com">
                            <label for="floatingInput">Email</label>
                        </div>
                        <div class="form-floating mb-3">
                            <input type="password" class="form-control" id="floatingPassword" placeholder="Password">
                            <label for="floatingPassword">Mật khẩu</label>
                        </div>

                        <div class="form-check mb-3">
                            <input class="form-check-input" type="checkbox" value="" id="rememberPasswordCheck">
                            <label class="form-check-label" for="rememberPasswordCheck">
                                Nhớ mật khẩu
                            </label>
                        </div>
                        <div class="d-grid">
                            <button class="btn btn-primary btn-login text-uppercase fw-bold" type="submit" style="  padding: 0.75rem 1rem;">ĐĂNG NHẬP</button>
                        </div>
                        <hr class="my-4">
                        <div class="d-grid">
                            Bạn chưa có tài khoản ? <a href="<c:url value="/dangky" />" class="fw-bold" type="submit" style="text-decoration: none" >ĐĂNG KÝ</a>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>