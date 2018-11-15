<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>HowZZat.com</title>
        <spring:url value="/resources/vendors/iconfonts/mdi/css/materialdesignicons.min.css" var="materialdesigniconsCss" />
        <spring:url value="/resources/vendors/css/vendor.bundle.base.css" var="baseCss" />
        <spring:url value="/resources/vendors/css/vendor.bundle.addons.css" var="addonsCss" />

        <spring:url value="/resources/css/style.css" var="styleCss" />
        <link href="${styleCss}" rel="stylesheet" />
        <link href="${addonsCss}" rel="stylesheet" />
        <link href="${baseCss}" rel="stylesheet" />
        <link href="${materialdesigniconsCss}" rel="stylesheet" />
        <spring:url value="/resources/js/user.js" var="userJS" />
        <script src="${userJS}" ></script>
    </head>
    <body>
        
        <div class="container-scroller">
        
