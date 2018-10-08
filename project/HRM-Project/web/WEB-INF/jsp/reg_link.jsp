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
  
  <spring:url value="/resources/vendors/iconfonts/mdi/css/materialdesignicons.min.css" var="materialdesigniconsCss" />
  <spring:url value="/resources/vendors/css/vendor.bundle.base.css" var="baseCss" />
  <spring:url value="/resources/vendors/css/vendor.bundle.addons.css" var="addonsCss" />
  <spring:url value="/resources/css/style.css" var="stylsCss" />
   
  

  <link href="${materialdesigniconsCss}" rel="stylesheet" />
    <link href="${baseCss}" rel="stylesheet" />
      <link href="${addonsCss}" rel="stylesheet" />
        <link href="${stylsCss}" rel="stylesheet" />
        
 


  
  
  
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
              <h4>Choose your registration</h4>
              <br>
              <div class="row">
                  <div class="col-md-6">
                       <a href="company_registration">Company Registration</a>
                  </div>
                   <div class="col-md-6">
                       <a href="user_registration">User Registration</a>
                  </div>
              </div>
             
              
              
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
  <spring:url value="/resources/vendors/js/vendor.bundle.base.js" var="baseJS" />
  <spring:url value="/resources/vendors/js/vendor.bundle.addons.js" var="addonsJS" />
    <spring:url value="/resources/js/user.js" var="userJS" />
  <!-- endinject -->
  <!-- inject:js -->

  
   <script src="${baseJS}"></script>
   <script src="${addonsJS}" ></script>
      <script src="${userJS}" ></script>
</body>


</html>
