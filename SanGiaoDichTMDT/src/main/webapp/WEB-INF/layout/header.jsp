<%-- 
    Document   : header
    Created on : Aug 26, 2022, 11:47:00 PM
    Author     : trant
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<nav class="navbar navbar-expand-sm navbar-dark bg-dark "  >
    <div class="container-fluid" style="justify-content: space-between">
        <a class="navbar-brand" href="<c:url value="/" />"> WEB MUA HÀNG ONLINE</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#mynavbar">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="mynavbar">
            <c:url value="/" var="action"/>
            <form method="get" action="${action}" class="d-flex" style="width: 100%">
                <input class="form-control me-2" type="text" name="kw" placeholder="Nhập từ khóa ...">
                <button type="submit" class="btn btn-primary" type="button">Tìm</button>
            </form>
        </div>
        <div class="d-flex" style="margin: 0 50px; color: white">
            <div class="d-flex" style="padding-right: 50px">
                &#128100; <a href="<c:url value="/dangnhap" />" style="text-decoration: none; color: white">Đăng Nhập</a> / <a href="<c:url value="/dangky" />" style="text-decoration: none; color: white">Đăng Ký</a>
            </div>
            <div class="d-flex">
                &#128722 <a>Giỏ Hàng</a>
            </div   

        </div>
    </div>
</nav>
