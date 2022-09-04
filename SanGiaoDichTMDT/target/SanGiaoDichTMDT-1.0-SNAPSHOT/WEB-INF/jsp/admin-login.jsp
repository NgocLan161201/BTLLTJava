<%-- 
    Document   : admin-login
    Created on : Aug 30, 2022, 4:54:39 PM
    Author     : trant
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet" />
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<div id="loginModal" class="modal show" >
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                <h2 class="text-center"><img src="https://bootdey.com/img/Content/avatar/avatar7.png" class="img-circle"><br>Login</h2>
            </div>
            <div class="modal-body">
                <form class="form col-md-12 center-block">
                    <div class="form-group">
                        <input type="text" class="form-control input-lg" placeholder="Email">
                    </div>
                    <div class="form-group">
                        <input type="password" class="form-control input-lg" placeholder="Password">
                    </div>
                    <div class="form-group">
                        <button class="btn btn-primary btn-lg btn-block">Sign In</button>
                        <span class="pull-right"><a href="#">Register</a></span><span><a href="#">Need help?</a></span>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <div class="col-md-12">
                    <button class="btn" data-dismiss="modal" aria-hidden="true">Cancel</button>
                </div>	
            </div>
        </div>
    </div>
</div>
