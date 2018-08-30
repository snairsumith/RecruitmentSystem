<%-- 
    Document   : user_registration
    Created on : Aug 30, 2018, 1:08:29 PM
    Author     : Gayathri
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html lang="en">


    <!-- Mirrored from www.urbanui.com/gleam/pages/samples/register.html by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 28 Aug 2018 07:45:44 GMT -->
    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>User Registration</title>

        <spring:url value="/resources/vendors/iconfonts/mdi/css/materialdesignicons.min.css" var="hrmCss" />
        <spring:url value="/resources/vendors/css/vendor.bundle.base.css" var="hrmCss" />
        <spring:url value="/resources/vendors/css/vendor.bundle.addons.css" var="hrmCss" />
        <spring:url value="/resources/css/style.css" var="hrmCss" />
        <link href="${hrmCss}" rel="stylesheet" />
    </head>

    <body>
        <div class="container-scroller">
            <div class="container-fluid page-body-wrapper full-page-wrapper">
                <div class="content-wrapper d-flex align-items-center auth">
                    <div class="row w-100">
                        <div class="col-lg-4 mx-auto">
                            <div class="auth-form-light text-left p-5">
                                <div class="brand-logo">
                                    <img src="../../images/logo.svg" alt="logo">
                                </div>
                                <h4>New here?</h4>
                                <h6 class="font-weight-light">Signing up is easy. It only takes a few steps</h6>
                                <form class="pt-3">
                                    <div class="form-group">
                                        <input type="text" class="form-control form-control-lg" id="exampleInputUsername1" placeholder="Username">
                                    </div>
                                    <div class="form-group">
                                        <input type="email" class="form-control form-control-lg" id="exampleInputEmail1" placeholder="Email">
                                    </div>
                                    <div class="form-group">
                                        <select class="form-control form-control-lg" id="exampleFormControlSelect2">
                                            <option>Country</option>
                                            <option>United States of America</option>
                                            <option>United Kingdom</option>
                                            <option>India</option>
                                            <option>Germany</option>
                                            <option>Argentina</option>
                                        </select>
                                    </div>
                                    <div class="form-group">
                                        <input type="password" class="form-control form-control-lg" id="exampleInputPassword1" placeholder="Password">
                                    </div>
                                    <div class="mb-4">
                                        <div class="form-check">
                                            <label class="form-check-label text-muted">
                                                <input type="checkbox" class="form-check-input">
                                                I agree to all Terms & Conditions
                                            </label>
                                        </div>
                                    </div>
                                    <div class="mt-3">
                                        <a class="btn btn-block btn-gradient-primary btn-lg font-weight-medium auth-form-btn" href="../../index.html">SIGN UP</a>
                                    </div>
                                    <div class="text-center mt-4 font-weight-light">
                                        Already have an account? <a href="login.html" class="text-primary">Login</a>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- content-wrapper ends -->
            </div>
            <!-- page-body-wrapper ends -->
        </div>
        <!-- 
        <script src="../../vendors/js/vendor.bundle.base.js"></script>
        <script src="../../vendors/js/vendor.bundle.addons.js"></script>
        <script src="../../js/off-canvas.js"></script>
        <script src="../../js/hoverable-collapse.js"></script>
        <script src="../../js/misc.js"></script>
        <script src="../../js/settings.js"></script>
        <script src="../../js/todolist.js"></script>
        -->
        <spring:url value="/resources/vendors/js/vendor.bundle.base.js" var="rationJS" />
        <spring:url value="/resources/vendors/js/vendor.bundle.addons.js" var="rationJS" />
        <spring:url value="/resources/js/off-canvas.js" var="rationJS" />
        <spring:url value="/resources/js/hoverable-collapse.js" var="rationJS" />
        <spring:url value="/resources/js/misc.js" var="rationJS" />
        <spring:url value="/resources/js/settings.js" var="rationJS" />
        <spring:url value="/resources/js/todolist.js" var="rationJS" />
  
        <script src="${rationJS}" var="rationJS" />
    </body>


    <!-- Mirrored from www.urbanui.com/gleam/pages/samples/register.html by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 28 Aug 2018 07:45:44 GMT -->
</html>