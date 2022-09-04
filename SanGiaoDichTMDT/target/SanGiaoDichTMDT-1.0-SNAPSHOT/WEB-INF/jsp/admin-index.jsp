<%-- 
    Document   : admin-index
    Created on : Aug 30, 2022, 2:32:46 PM
    Author     : trant
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<link href="<c:url value='/resources/css/admin-index.css' />" rel="stylesheet"></link>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet" />
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<script src='https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.1.4/Chart.bundle.min.js'></script>
<script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>
<script src='https://stackpath.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.bundle.min.js'></script>
<script>
    $(document).ready(function () {
        var ctx = $("#chart-line");
        var myLineChart = new Chart(ctx, {
            type: 'bar',
            data: {
                labels: [1500, 1600, 1700, 1750, 1800, 1850, 1900, 1950, 1999, 2050],
                datasets: [{
                        data: [86, 114, 106, 106, 107, 111, 133, 221, 783, 2478],
                        label: "Africa",
                        borderColor: "#458af7",
                        backgroundColor: '#458af7',
                        fill: false
                    }, {
                        data: [282, 350, 411, 502, 635, 809, 947, 1402, 3700, 5267],
                        label: "Asia",
                        borderColor: "#8e5ea2",
                        fill: true,
                        backgroundColor: '#8e5ea2'

                    }, {
                        data: [168, 170, 178, 190, 203, 276, 408, 547, 675, 734],
                        label: "Europe",
                        borderColor: "#3cba9f",
                        fill: false,
                        backgroundColor: '#3cba9f'

                    }]
            },
            options: {
                title: {
                    display: true,
                    text: 'World population per region (in millions)'
                }
            }
        });
    });
</script>

<div class="row" >
    <div class="col-xl-3 col-lg-6">
        <div class="card l-bg-cherry card-1">
            <div class="card-statistic-3 p-4">
                <div class="card-icon card-icon-large"><i class="fas fa-shopping-cart"></i></div>
                <div class="mb-4">
                    <h5 class="card-title mb-0">New Orders</h5>
                </div>
                <div class="row align-items-center mb-2 d-flex">
                    <div class="col-8">
                        <h2 class="d-flex align-items-center mb-0">
                            3,243
                        </h2>
                    </div>
                    <div class="col-4 text-right">
                        <span>12.5% <i class="fa fa-arrow-up"></i></span>
                    </div>
                </div>
                <div class="progress mt-1 " data-height="8" style="height: 8px;">
                    <div class="progress-bar l-bg-cyan" role="progressbar" data-width="25%" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100" style="width: 25%;"></div>
                </div>
            </div>
        </div>
    </div>
    <div class="col-xl-3 col-lg-6">
        <div class="card l-bg-blue-dark card-1">
            <div class="card-statistic-3 p-4">
                <div class="card-icon card-icon-large"><i class="fas fa-users"></i></div>
                <div class="mb-4">
                    <h5 class="card-title mb-0">Customers</h5>
                </div>
                <div class="row align-items-center mb-2 d-flex">
                    <div class="col-8">
                        <h2 class="d-flex align-items-center mb-0">
                            15.07k
                        </h2>
                    </div>
                    <div class="col-4 text-right">
                        <span>9.23% <i class="fa fa-arrow-up"></i></span>
                    </div>
                </div>
                <div class="progress mt-1 " data-height="8" style="height: 8px;">
                    <div class="progress-bar l-bg-green" role="progressbar" data-width="25%" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100" style="width: 25%;"></div>
                </div>
            </div>
        </div>
    </div>
    <div class="col-xl-3 col-lg-6">
        <div class="card l-bg-green-dark card-1">
            <div class="card-statistic-3 p-4">
                <div class="card-icon card-icon-large"><i class="fas fa-ticket-alt"></i></div>
                <div class="mb-4">
                    <h5 class="card-title mb-0">Ticket Resolved</h5>
                </div>
                <div class="row align-items-center mb-2 d-flex">
                    <div class="col-8">
                        <h2 class="d-flex align-items-center mb-0">
                            578
                        </h2>
                    </div>
                    <div class="col-4 text-right">
                        <span>10% <i class="fa fa-arrow-up"></i></span>
                    </div>
                </div>
                <div class="progress mt-1 " data-height="8" style="height: 8px;">
                    <div class="progress-bar l-bg-orange" role="progressbar" data-width="25%" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100" style="width: 25%;"></div>
                </div>
            </div>
        </div>
    </div>
    <div class="col-xl-3 col-lg-6">
        <div class="card l-bg-orange-dark card-1">
            <div class="card-statistic-3 p-4">
                <div class="card-icon card-icon-large"><i class="fas fa-dollar-sign"></i></div>
                <div class="mb-4">
                    <h5 class="card-title mb-0">Revenue Today</h5>
                </div>
                <div class="row align-items-center mb-2 d-flex">
                    <div class="col-8">
                        <h2 class="d-flex align-items-center mb-0">
                            $11.61k
                        </h2>
                    </div>
                    <div class="col-4 text-right">
                        <span>2.5% <i class="fa fa-arrow-up"></i></span>
                    </div>
                </div>
                <div class="progress mt-1 " data-height="8" style="height: 8px;">
                    <div class="progress-bar l-bg-cyan" role="progressbar" data-width="25%" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100" style="width: 25%;"></div>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="row">
    <div class="col-xl-3 col-lg-6">
        <div class="page-content page-container" id="page-content">
            <div class="row">
                <div class="container-fluid d-flex">
                    <div class="col-sm-8 col-md-6" style="padding: 0">
                        <div class="card card-3 pull-left" style="padding: 10px">
                            <div class="card-body" style="height: 270px; padding: 0">
                                <div class="chartjs-size-monitor" style="position: absolute; left: 0px; top: 0px; right: 0px; bottom: 0px; overflow: hidden; pointer-events: none; visibility: hidden; z-index: -1;">
                                    <div class="chartjs-size-monitor-expand" style="position:absolute;left:0;top:0;right:0;bottom:0;overflow:hidden;pointer-events:none;visibility:hidden;z-index:-1;">
                                        <div style="position:absolute;width:1000000px;height:1000000px;left:0;top:0"></div>
                                    </div>
                                    <div class="chartjs-size-monitor-shrink" style="position:absolute;left:0;top:0;right:0;bottom:0;overflow:hidden;pointer-events:none;visibility:hidden;z-index:-1;">
                                        <div style="position:absolute;width:200%;height:200%;left:0; top:0"></div>
                                    </div>
                                </div> <canvas id="chart-line" width="400" height="250" class="chartjs-render-monitor" style="display: block; width: 299px; height: 200px;"></canvas>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="col-xl-3 col-lg-6">
        <div class="d-flex justify-content-center mt-5">
            <div class="card text-center mb-5 card-4">
                <div class="circle-image">
                    <img src="https://i.imgur.com/39fcglK.png" width="50">
                </div>
                <small class="help-text mb-1 text-black-50">Help us improve</small>
                <span class="fw-500">Did you like our app?</span>
                <div class="row mb-5 mt-5">
                    <div class="col-md-6">
                        <span class="thumb thumbs-up"><i class="fa fa-thumbs-o-up"></i></span>
                        <small class="fw-500">Yes</small>
                    </div>
                    <div class="col-md-6">
                        <span class="thumb thumbs-down"><i class="fa fa-thumbs-o-down"></i></span>
                        <small class="fw-500">No</small>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>