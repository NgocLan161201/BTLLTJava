<%-- 
    Document   : detailProduct
    Created on : Aug 27, 2022, 1:48:33 PM
    Author     : trant
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<script src="<c:url value="/resources/js/detailProduct.js" />"></script>
<link href="<c:url value='/resources/css/detailProduct.css' />" rel="stylesheet"></link>

<div class="container bootdey">
    <div class="col-md-12">
        <section class="panel">
            <div class="panel-body row">
                <div class="col-md-6">
                    <div class="pro-img-details">
                        <img src="https://via.placeholder.com/550x380/FFB6C1/000000" alt="">
                    </div>
                    <div class="pro-img-list">
                        <a href="#">
                            <img src="https://via.placeholder.com/115x100/87CEFA/000000" alt="">
                        </a>
                        <a href="#">
                            <img src="https://via.placeholder.com/115x100/FF7F50/000000" alt="">
                        </a>
                        <a href="#">
                            <img src="https://via.placeholder.com/115x100/20B2AA/000000" alt="">
                        </a>
                        <a href="#">
                            <img src="https://via.placeholder.com/120x100/20B2AA/000000" alt="">
                        </a>
                    </div>
                </div>
                <div class="col-md-6">
                    <h4 class="pro-d-title">
                        <a href="#" class="">
                            Leopard Shirt Dress
                        </a>
                    </h4>
                    <p>
                        Praesent ac condimentum felis. Nulla at nisl orci, at dignissim dolor, The best product descriptions address your ideal buyer directly and personally. The best product descriptions address your ideal buyer directly and personally.
                    </p>
                    <div class="product_meta">
                        <span class="posted_in"> <strong>Categories:</strong> <a rel="tag" href="#">Jackets</a>, <a rel="tag" href="#">Men</a>, <a rel="tag" href="#">Shirts</a>, <a rel="tag" href="#">T-shirt</a>.</span>
                        <span class="tagged_as"><strong>Tags:</strong> <a rel="tag" href="#">mens</a>, <a rel="tag" href="#">womens</a>.</span>
                    </div>
                    <div class="m-bot15"> <strong>Price : </strong> <span class="amount-old">$544</span>  <span class="pro-price"> $300.00</span></div>

                    <div class="section form-group" style="padding-bottom:20px;">
                        <label style="margin-bottom: 10px" ><strong>Quantity : </strong></label>                    
                        <div class="d-flex">
                            <input value="&#10134;" class="form-control btn-minus" onclick="minus()"/>
                            <input type="text" value="1" class="form-control quantity" id="quantity" />
                            <input value="&#10133;" class=" form-control btn-plus" onclick="plus()"/>
                        </div>
                    </div>

                    <p>
                        <button class="btn btn-round btn-danger" type="button"><i class="fa fa-shopping-cart"></i> Add to Cart</button>
                    </p>
                </div>
            </div>
        </section>
    </div>
</div>