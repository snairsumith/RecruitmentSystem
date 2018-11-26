<!DOCTYPE html>
<html lang="en">

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<head>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="keywords" content="Bootstrap, Landing page, Template, Registration, Landing">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<meta name="author" content="Grayrids">
<title>howZaat </title>

<spring:url value="/resources/assets/css/bootstrap.min.css" var="stl"/>
<spring:url value="/resources/assets/css/line-icons.css" var="styleCss2"/>
<spring:url value="/resources/assets/css/owl.carousel.min.css" var="styleCss3"/>
<spring:url value="/resources/assets/css/owl.theme.default.css" var="styleCss4"/>
<spring:url value="/resources/assets/css/slicknav.min.css" var="styleCss5"/>
<spring:url value="/resources/assets/css/animate.css" var="styleCss6"/>
<spring:url value="/resources/assets/css/main.css" var="styleCss7"/>
<spring:url value="/resources/assets/css/responsive.css" var="styleCss8"/>
<link href="${stl}" rel="stylesheet" />
<link href="${styleCss2}" rel="stylesheet" />
<link href="${styleCss3}" rel="stylesheet" />
<link href="${styleCss4}" rel="stylesheet" />
<link href="${styleCss5}" rel="stylesheet" />
<link href="${styleCss6}" rel="stylesheet" />
<link href="${styleCss7}" rel="stylesheet" />
<link href="${styleCss8}" rel="stylesheet" />
</head>
<body>

<header id="home" class="hero-area">

<nav class="navbar navbar-expand-lg fixed-top scrolling-navbar">
<div class="container">
<div class="theme-header clearfix">

<div class="navbar-header">
<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#main-navbar" aria-controls="main-navbar" aria-expanded="false" aria-label="Toggle navigation">
<span class="navbar-toggler-icon"></span>
<span class="lni-menu"></span>
<span class="lni-menu"></span>
<span class="lni-menu"></span>
</button>
<a href="index-2.html" class="navbar-brand"><img src="/HRM-Project/resources/assets/img/logo.png" alt=""></a>
</div>
<div class="collapse navbar-collapse" id="main-navbar">
<ul class="navbar-nav mr-auto w-100 justify-content-end">
<li class="nav-item dropdown active">
<a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
Home
</a>

</li>




<li class="nav-item">
<a class="nav-link" href="HRM-Project/login">Sign In</a>
</li>
<li class="button-group">
<a href="HRM-Project/reg_link" class="button btn btn-common">Register</a>
</li>
</ul>
</div>
</div>
</div>
<div class="mobile-menu" data-logo="/HRM-Project/resources/assets/img/logo-mobile.png"></div>
</nav>

<div class="container">
<div class="row space-100">
<div class="col-lg-7 col-md-12 col-xs-12">
<div class="contents">
<h2 class="head-title">Find the <br> job that fits your life</h2>
<p>Aliquam vestibulum cursus felis. In iaculis iaculis sapien ac condimentum. Vestibulum congue posuere lacus, id tincidunt nisi porta sit amet. Suspendisse et sapien varius, pellentesque dui non.</p>
<div class="job-search-form">
<form>
<div class="row">
<div class="col-lg-5 col-md-5 col-xs-12">
<div class="form-group">
<input class="form-control" type="text" placeholder="Job Title or Company Name">
</div>
</div>
<div class="col-lg-5 col-md-5 col-xs-12">
<div class="form-group">
<div class="search-category-container">
<label class="styled-select">
<select>
<option value="none">Locations</option>
<option value="none">New York</option>
<option value="none">California</option>
<option value="none">Washington</option>
<option value="none">Birmingham</option>
<option value="none">Chicago</option>
<option value="none">Phoenix</option>
</select>
</label>
</div>
<i class="lni-map-marker"></i>
</div>
</div>
<div class="col-lg-2 col-md-2 col-xs-12">
<a href="HRM-Project/login" class="button"><i class="lni-search"></i></a>
</div>
</div>
</form>
</div>
</div>
</div>
<div class="col-lg-5 col-md-12 col-xs-12">
<div class="intro-img">
<img src="/HRM-Project/resources/assets/img/intro.png" alt="">
</div>
</div>
</div>
</div>
</header>


<section class="category section bg-gray">
<div class="container">
<div class="section-header">
<h2 class="section-title">Browse Categories</h2>
<p>Most popular categories of portal, sorted by popularity</p>
</div>
<div class="row">
<div class="col-lg-3 col-md-6 col-xs-12 f-category">
<a href="HRM-Project/login">
<div class="icon bg-color-1">
<i class="lni-home"></i>
</div>
<h3>Finance</h3>
<p>(4286 jobs)</p>
</a>
</div>
<div class="col-lg-3 col-md-6 col-xs-12 f-category">
<a href="HRM-Project/login">
<div class="icon bg-color-2">
<i class="lni-world"></i>
</div>
<h3>Sale/Markting</h3>
<p>(2000 jobs)</p>
</a>
</div>
<div class="col-lg-3 col-md-6 col-xs-12 f-category">
<a href="HRM-Project/login">
<div class="icon bg-color-3">
<i class="lni-book"></i>
</div>
<h3>Education/Training</h3>
<p>(1450 jobs)</p>
</a>
</div>
<div class="col-lg-3 col-md-6 col-xs-12 f-category">
<a href="HRM-Project/login">
<div class="icon bg-color-4">
<i class="lni-display"></i>
</div>
<h3>Technologies</h3>
<p>(5100 jobs)</p>
</a>
</div>
<div class="col-lg-3 col-md-6 col-xs-12 f-category">
<a href="HRM-Project/login">
<div class="icon bg-color-5">
<i class="lni-brush"></i>
</div>
<h3>Art/Design</h3>
<p>(5079 jobs)</p>
</a>
</div>
<div class="col-lg-3 col-md-6 col-xs-12 f-category">
<a href="HRM-Project/login">
<div class="icon bg-color-6">
<i class="lni-heart"></i>
</div>
<h3>Healthcare</h3>
<p>(3235 jobs)</p>
</a>
</div>
<div class="col-lg-3 col-md-6 col-xs-12 f-category">
<a href="HRM-Project/login">
<div class="icon bg-color-7">
<i class="lni-funnel"></i>
</div>
<h3>Science</h3>
<p>(1800 jobs)</p>
</a>
</div>
<div class="col-lg-3 col-md-6 col-xs-12 f-category">
<a href="HRM-Project/login">
<div class="icon bg-color-8">
<i class="lni-cup"></i>
</div>
<h3>Food Services</h3>
<p>(4286 jobs)</p>
</a>
</div>
</div>
</div>
</section>


<section id="featured" class="section">
<div class="container">
<div class="section-header">
<h2 class="section-title">Featured Jobs</h2>
<p>Hand-picked jobs featured depending on popularity and benifits</p>
</div>
<div class="row">
<div class="col-lg-4 col-md-6 col-xs-12">
<div class="job-featured">
<div class="icon">
<img src="/HRM-Project/resources/assets/img/features/img1.png" alt="">
</div>
<div class="content">
<h3><a href="HRM-Project/login">Software Engineer</a></h3>
<p class="brand">MizTech</p>
<div class="tags">
<span><i class="lni-map-marker"></i> New York</span>
<span><i class="lni-user"></i>John Smith</span>
</div>
<span class="full-time">Full Time</span>
</div>
</div>
</div>
<div class="col-lg-4 col-md-6 col-xs-12">
<div class="job-featured">
<div class="icon">
<img src="/HRM-Project/resources/assets/img/features/img2.png" alt="">
</div>
<div class="content">
<h3><a href="HRM-Project/login">Graphic Designer</a></h3>
<p class="brand">Hunter Inc.</p>
<div class="tags">
<span><i class="lni-map-marker"></i> New York</span>
<span><i class="lni-user"></i>John Smith</span>
</div>
<span class="part-time">Part Time</span>
</div>
</div>
</div>
<div class="col-lg-4 col-md-6 col-xs-12">
<div class="job-featured">
<div class="icon">
<img src="/HRM-Project/resources/assets/img/features/img3.png" alt="">
</div>
<div class="content">
<h3><a href="HRM-Project/login">Managing Director</a></h3>
<p class="brand">MagNews</p>
<div class="tags">
<span><i class="lni-map-marker"></i> New York</span>
<span><i class="lni-user"></i>John Smith</span>
</div>
<span class="full-time">Full Time</span>
</div>
</div>
</div>
<div class="col-lg-4 col-md-6 col-xs-12">
<div class="job-featured">
<div class="icon">
<img src="/HRM-Project/resources/assets/img/features/img4.png" alt="">
</div>
<div class="content">
<h3><a href="HRM-Project/login">Software Engineer</a></h3>
<p class="brand">AmazeSoft</p>
<div class="tags">
<span><i class="lni-map-marker"></i> New York</span>
<span><i class="lni-user"></i>John Smith</span>
</div>
<span class="full-time">Full Time</span>
</div>
</div>
</div>
<div class="col-lg-4 col-md-6 col-xs-12">
<div class="job-featured">
<div class="icon">
<img src="/HRM-Project/resources/assets/img/features/img5.png" alt="">
</div>
<div class="content">
<h3><a href="HRM-Project/login">Graphic Designer</a></h3>
<p class="brand">Bingo</p>
<div class="tags">
<span><i class="lni-map-marker"></i> New York</span>
<span><i class="lni-user"></i>John Smith</span>
</div>
<span class="part-time">Part Time</span>
</div>
</div>
</div>
<div class="col-lg-4 col-md-6 col-xs-12">
<div class="job-featured">
<div class="icon">
<img src="/HRM-Project/resources/assets/img/features/img6.png" alt="">
</div>
<div class="content">
<h3><a href="HRM-Project/login">Managing Director</a></h3>
<p class="brand">MagNews</p>
<div class="tags">
<span><i class="lni-map-marker"></i> New York</span>
<span><i class="lni-user"></i>John Smith</span>
</div>
<span class="full-time">Full Time</span>
</div>
</div>
</div>
<div class="col-12 text-center mt-4">
<a href="HRM-Project/login" class="btn btn-common">Browse All Jobs</a>
</div>
</div>
</div>
</section>


<div id="browse-jobs" class="section bg-gray">
<div class="container">
<div class="row">
<div class="col-lg-6 col-md-12 col-sm-12">
<div class="text-wrapper">
<div>
<h3>7,000+ Browse Jobs</h3>
<p>Search all the open positions on the web. Get your own personalized salary estimate. Read reviews on over 600,000 companies worldwide. The right job is out there.</p>
<a class="btn btn-common" href="#">Search jobs</a>
</div>
</div>
</div>
<div class="col-lg-6 col-md-12 col-sm-12">
<div class="img-thumb">
<img class="img-fluid" src="/HRM-Project/resources/assets/img/search.png" alt="">
</div>
</div>
</div>
</div>
</div>


<section class="how-it-works section">
<div class="container">
<div class="section-header">
<h2 class="section-title">How It Works?</h2>
<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit ellentesque dignissim quam et <br> metus effici turac fringilla lorem facilisis.</p>
</div>
<div class="row">
<div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
<div class="work-process">
<span class="process-icon">
<i class="lni-user"></i>
</span>
<h4>Create an Account</h4>
<p>Post a job to tell us about your project. We'll quickly match you with the right freelancers find place best.</p>
</div>
</div>
<div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
<div class="work-process step-2">
<span class="process-icon">
<i class="lni-search"></i>
</span>
<h4>Search Jobs</h4>
<p>Post a job to tell us about your project. We'll quickly match you with the right freelancers find place best.</p>
</div>
</div>
<div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
<div class="work-process step-3">
<span class="process-icon">
<i class="lni-cup"></i>
</span>
<h4>Apply</h4>
<p>Post a job to tell us about your project. We'll quickly match you with the right freelancers find place best.</p>
</div>
</div>
</div>
</div>
</section>


<section id="latest-jobs" class="section bg-gray">
<div class="container">
<div class="section-header">
<h2 class="section-title">Latest Jobs</h2>
<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit ellentesque dignissim quam et <br> metus effici turac fringilla lorem facilisis.</p>
</div>
<div class="row">
<div class="col-lg-6 col-md-6 col-xs-12">
<div class="jobs-latest">
<div class="img-thumb">
<img src="/HRM-Project/resources/assets/img/features/img1.png" alt="">
</div>
<div class="content">
<h3><a href="HRM-Project/login">UX Designer</a></h3>
<p class="brand">MizTech</p>
<div class="tags">
<span><i class="lni-map-marker"></i> New York</span>
<span><i class="lni-user"></i>John Smith</span>
</div>
<span class="full-time">Full Time</span>
</div>
<div class="save-icon">
<a href="#"><i class="lni-heart-filled"></i></a>
</div>
</div>
</div>
<div class="col-lg-6 col-md-6 col-xs-12">
<div class="jobs-latest">
<div class="img-thumb">
<img src="/HRM-Project/resources/assets/img/features/img2.png" alt="">
</div>
<div class="content">
<h3><a href="HRM-Project/login">UI Designer</a></h3>
<p class="brand">Hunter Inc.</p>
<div class="tags">
<span><i class="lni-map-marker"></i> New York</span>
<span><i class="lni-user"></i>John Smith</span>
</div>
<span class="part-time">Part Time</span>
</div>
<div class="save-icon">
<a href="#"><i class="lni-heart-filled"></i></a>
</div>
</div>
</div>
<div class="col-lg-6 col-md-6 col-xs-12">
<div class="jobs-latest">
<div class="img-thumb">
<img src="/HRM-Project/resources/assets/img/features/img3.png" alt="">
</div>
<div class="content">
<h3><a href="HRM-Project/login">Web Developer</a></h3>
<p class="brand">MagNews</p>
<div class="tags">
<span><i class="lni-map-marker"></i> New York</span>
<span><i class="lni-user"></i>John Smith</span>
</div>
<span class="full-time">Full Time</span>
</div>
<div class="save-icon">
<a href="#"><i class="lni-heart-filled"></i></a>
</div>
</div>
</div>
<div class="col-lg-6 col-md-6 col-xs-12">
<div class="jobs-latest">
<div class="img-thumb">
<img src="/HRM-Project/resources/assets/img/features/img4.png" alt="">
</div>
<div class="content">
<h3><a href="HRM-Project/login">UX Designer</a></h3>
<p class="brand">AmazeSoft</p>
<div class="tags">
<span><i class="lni-map-marker"></i> New York</span>
<span><i class="lni-user"></i>John Smith</span>
</div>
<span class="full-time">Full Time</span>
</div>
<div class="save-icon">
<a href="#"><i class="lni-heart-filled"></i></a>
</div>
</div>
</div>
<div class="col-lg-6 col-md-6 col-xs-12">
<div class="jobs-latest">
<div class="img-thumb">
<img src="/HRM-Project/resources/assets/img/features/img5.png" alt="">
</div>
<div class="content">
<h3><a href="HRM-Project/login">Digital Marketer</a></h3>
<p class="brand">Bingo</p>
<div class="tags">
<span><i class="lni-map-marker"></i> New York</span>
<span><i class="lni-user"></i>John Smith</span>
</div>
<span class="part-time">Part Time</span>
</div>
<div class="save-icon">
<a href="#"><i class="lni-heart-filled"></i></a>
</div>
</div>
</div>
<div class="col-lg-6 col-md-6 col-xs-12">
<div class="jobs-latest">
<div class="img-thumb">
<img src="/HRM-Project/resources/assets/img/features/img6.png" alt="">
</div>
<div class="content">
<h3><a href="HRM-Project/login">Web Developer</a></h3>
<p class="brand">MagNews</p>
<div class="tags">
<span><i class="lni-map-marker"></i> New York</span>
<span><i class="lni-user"></i>John Smith</span>
</div>
 <span class="full-time">Full Time</span>
</div>
<div class="save-icon">
<a href="#"><i class="lni-heart-filled"></i></a>
</div>
</div>
</div>
<div class="col-12 text-center mt-4">
<a href="#" class="btn btn-common">Browse All Jobs</a>
</div>
</div>
</div>
</section>










<footer>



<div id="copyright">
<div class="container">
<div class="row">
<div class="col-md-12">
<div class="site-info text-center">
<p>Designed and Developed by <a href="#" rel="nofollow">SNGC Students</a></p>
</div>
</div>
</div>
</div>
</div>

</footer>


<a href="#" class="back-to-top">
<i class="lni-arrow-up"></i>
</a>

<div id="preloader">
<div class="loader" id="loader-1"></div>
</div>




<spring:url value="/resources/assets/js/jquery-min.js"  var="baseJS1" />
<spring:url value="/resources/assets/js/popper.min.js"  var="baseJS2" />
<spring:url value="/resources/assets/js/bootstrap.min.js"  var="baseJS3" />
<spring:url value="/resources/assets/js/color-switcher.js"  var="baseJS4" />
<spring:url value="/resources/assets/js/owl.carousel.min.js"  var="baseJS5" />
<spring:url value="/resources/assets/js/jquery.slicknav.js"  var="baseJS6" />
<spring:url value="/resources/assets/js/jquery.counterup.min.js"  var="baseJS7" />
<spring:url value="/resources/assets/js/waypoints.min.js"  var="baseJS8" />
<spring:url value="/resources/assets/js/form-validator.min.js"  var="baseJS9" />
<spring:url value="/resources/assets/js/contact-form-script.js"  var="baseJS10" />
<spring:url value="/resources/assets/js/main.js"  var="baseJS11" />
<script src="${baseJS1}"></script>
<script src="${baseJS2}"></script>
<script src="${baseJS3}"></script>
<script src="${baseJS4}"></script>
<script src="${baseJS5}"></script>
<script src="${baseJS6}"></script>
<script src="${baseJS7}"></script>
<script src="${baseJS8}"></script>
<script src="${baseJS9}"></script>
<script src="${baseJS10}"></script>
<script src="${baseJS11}"></script>

</body>


</html>