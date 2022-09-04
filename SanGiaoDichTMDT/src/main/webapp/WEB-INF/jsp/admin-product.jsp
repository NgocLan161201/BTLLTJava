<%-- 
    Document   : admin-product
    Created on : Aug 30, 2022, 8:11:32 PM
    Author     : trant
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<link href="<c:url value='/resources/css/admin-product.css' />" rel="stylesheet"></link>
<script src="<c:url value="/resources/js/admin-product.js" />"></script>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet" />
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<script src = "https://cdnjs.cloudflare.com/ajax/libs/twbs-pagination/1.4.1/jquery.twbsPagination.min.js"></script>  

<div class="wrapper">
    <table id="data" aria-live="polite" class="table table-striped table-bordered" style="width:100%">
        <thead>
            <tr>
                <th>STT</th>
                <th>TÊN SẢN PHẨM</th>
                <th>LOẠI</th>
                <th>NHÀ SẢN XUẤT</th>
                 <th>GIÁ SẢN PHẨM</th>
                <th>NGÀY TẠO</th>
                <th></th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>1</td>
                <td>System Architect</td>
                <td>Edinburgh</td>
                <td>61</td>
                <td>$3200,800</td>
                <td>2018/04/25</td>
                <td>
                    <div class="row" style="padding:0 10px">
                        <button class="btn col"><i class="fa-solid fa-plus"></i></button>
                        <button class="btn col"><i class="fa-solid fa-pen-to-square"></i></button>
                        <button class="btn col"><i class="fa-solid fa-trash"></i></button>
                        <button class="btn col"><i class="fa-solid fa-ellipsis"></i></button>
                    </div>
                </td>
            </tr>
        </tbody>
    </table>
    <ul id="pagination-demo" class="pagination-sm"></ul> 
</div>
<div id="page-content" class="page-content"> Page 1</div>

