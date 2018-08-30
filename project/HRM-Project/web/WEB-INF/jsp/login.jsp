<%-- 
    Document   : login
    Created on : Aug 30, 2018, 12:43:06 PM
    Author     : Gayathri
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html lang="en">


<!-- Mirrored from www.urbanui.com/gleam/pages/samples/login.html by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 28 Aug 2018 07:45:44 GMT -->
<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title>Login Page</title>
  <!-- plugins:css -->
  
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
                <img src="/HRM-Project/resources/images/logo.svg" alt="logo">
              </div>
              <h4>Hello! let's get started</h4>
              <h6 class="font-weight-light">Sign in to continue.</h6>
              <form class="pt-3">
                <div class="form-group">
                  <input type="email" class="form-control form-control-lg" id="exampleInputEmail1" placeholder="Username">
                </div>
                <div class="form-group">
                  <input type="password" class="form-control form-control-lg" id="exampleInputPassword1" placeholder="Password">
                </div>
                <div class="mt-3">
                  <a class="btn btn-block btn-gradient-primary btn-lg font-weight-medium auth-form-btn" href="../../index.html">SIGN IN</a>
                </div>
                <div class="my-2 d-flex justify-content-between align-items-center">
                  <div class="form-check">
                    <label class="form-check-label text-muted">
                      <input type="checkbox" class="form-check-input">
                      Keep me signed in
                    </label>
                  </div>
                  <a href="#" class="auth-link text-black">Forgot password?</a>
                </div>
                <div class="mb-2">
                  <button type="button" class="btn btn-block btn-facebook auth-form-btn">
                    <i class="mdi mdi-facebook mr-2"></i>Connect using facebook
                  </button>
                </div>
                <div class="text-center mt-4 font-weight-light">
                  Don't have an account? <a href="register.html" class="text-primary">Create</a>
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
  <!-- container-scroller -->
  <!-- plugins:js -->
  <spring:url value="/resources/vendors/js/vendor.bundle.base.js" var="rationJS" />
  <spring:url value="/resources/vendors/js/vendor.bundle.addons.js" var="rationJS" />
  <!-- endinject -->
  <!-- inject:js -->
  <spring:url value="/resources/js/off-canvas.js" var="rationJS" />
  <spring:url value="/resources/js/hoverable-collapse.js" var="rationJS" />
  <spring:url value="/resources/js/misc.js" var="rationJS" />
  <spring:url value="/resources/js/settings.js" var="rationJS" />
  <spring:url value="/resources/js/todolist.js" var="rationJS" />
  
   <script src="${rationJS}" var="rationJS" />
  
</body>


</html>
