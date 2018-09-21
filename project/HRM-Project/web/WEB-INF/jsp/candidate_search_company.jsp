<%-- 
    Document   : candidate_search_company
    Created on : Sep 21, 2018, 2:52:05 PM
    Author     : Gayathri
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html lang="en">


    <!-- Mirrored from www.urbanui.com/gleam/pages/samples/orders.html by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 28 Aug 2018 07:45:51 GMT -->
    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>Candidate</title>
        <!-- plugins:css -->
        <spring:url value="/resources/vendors/iconfonts/mdi/css/materialdesignicons.min.css" var="hrmCss" />
        <spring:url value="/resources/vendors/css/vendor.bundle.base.css" var="hrmCss" />
        <spring:url value="/resources/vendors/css/vendor.bundle.addons.css" var="hrmCss" />

        <spring:url value="/resources/css/style.css" var="hrmCss" />
        <link href="${hrmCss}" rel="stylesheet" />
    </head>

    <body>
        <div class="container-scroller">
            <!-- partial:../../partials/_navbar.html -->
            <jsp:include page="inc/top_candidate.jsp"></jsp:include>
            <!-- partial -->
            <div class="container-fluid page-body-wrapper">
                <!-- partial:../../partials/_settings-panel.html -->
                <div id="settings-trigger"><i class="mdi mdi-format-color-fill"></i></div>
                <div id="theme-settings" class="settings-panel">
                    <i class="settings-close mdi mdi-close"></i>
                    <p class="settings-heading">SIDEBAR SKINS</p>
                    <div class="sidebar-bg-options selected" id="sidebar-default-theme"><div class="img-ss rounded-circle bg-light border mr-3"></div>Default</div>
                    <div class="sidebar-bg-options" id="sidebar-dark-theme"><div class="img-ss rounded-circle bg-dark border mr-3"></div>Dark</div>
                    <p class="settings-heading mt-2">HEADER SKINS</p>
                    <div class="color-tiles mx-0 px-4">
                        <div class="tiles primary"></div>
                        <div class="tiles success"></div>
                        <div class="tiles warning"></div>
                        <div class="tiles danger"></div>
                        <div class="tiles info"></div>
                        <div class="tiles dark"></div>
                        <div class="tiles default light"></div>
                    </div>
                </div>
                <!-- partial -->
                <!-- partial:../../partials/_sidebar.html -->
                <jsp:include page="inc/candidate_sidebar.jsp"></jsp:include>
                <!-- partial -->
                <div class="main-panel">          
                    <div class="content-wrapper">
                        <div class="page-header">
                            <h3 class="page-title">
                                Search Company
                            </h3>
                            
                        </div>
                        <div class="row">
                            <div class="col-12">
                                <div class="card">
                                    <div class="card-body">
                                        
                                        
                                        <div class="row">
                                            <div class="col-sm-12 col-md-6">
                                                <div class="dataTables_length" id="order-listing_length">
                                                    <label>Show <select name="order-listing_length" aria-controls="order-listing" class="form-control">
                                                            <option value="5">5</option>
                                                            <option value="10">10</option>
                                                            <option value="15">15</option>
                                                            <option value="-1">All</option>
                                                        </select> entries</label>
                                                </div>
                                            </div>
                                            <div class="col-sm-12 col-md-6">
                                                <div id="order-listing_filter" class="dataTables_filter">
                                                    <label><input type="search" class="form-control" placeholder="Search" aria-controls="order-listing">
                                                    </label>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-12">
                                                <div class="table-responsive">
                                                    <table id="order-listing" class="table">
                                                        <thead>
                                                            <tr class="bg-primary text-white">
                                                                <th>Company</th>
                                                                <th>Company Name</th>
                                                                <th>Email</th>
                                                                <th>Contact</th>
                                                                <th>Official Site</th>
                                                                
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                           
                                                        </tbody>
                                                    </table>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- content-wrapper ends -->
                    <!-- partial:../../partials/_footer.html -->
                    <footer class="footer">
                        <div class="d-sm-flex justify-content-center justify-content-sm-between">
                            <span class="text-muted text-center text-sm-left d-block d-sm-inline-block">Copyright © 2018 <a href="https://www.urbanui.com/" target="_blank">Urbanui</a>. All rights reserved.</span>
                            <span class="float-none float-sm-right d-block mt-1 mt-sm-0 text-center">Hand-crafted & made with <i class="mdi mdi-heart text-danger"></i></span>
                        </div>
                    </footer>
                    <!-- partial -->
                </div>
                <!-- main-panel ends -->
            </div>
            <!-- page-body-wrapper ends -->
        </div>
        <!-- container-scroller -->
        <!-- plugins:js -->
        <spring:url value="/resources/vendors/js/vendor.bundle.base.js" var="rationJS" />
        <spring:url value="/resources/vendors/js/vendor.bundle.addons.js" var="rationJS" />
        <spring:url value="/resources/js/off-canvas.js" var="rationJS" />
        <spring:url value="/resources/js/hoverable-collapse.js" var="rationJS" />
        <spring:url value="/resources/js/misc.js" var="rationJS" />
        <spring:url value="/resources/js/settings.js" var="rationJS" />
        <spring:url value="/resources/js/todolist.js" var="rationJS" />
    </body>


    <!-- Mirrored from www.urbanui.com/gleam/pages/samples/orders.html by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 28 Aug 2018 07:45:51 GMT -->
</html>

