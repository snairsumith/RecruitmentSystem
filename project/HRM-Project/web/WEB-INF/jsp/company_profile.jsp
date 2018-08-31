<%-- 
    Document   : company_profile
    Created on : Aug 30, 2018, 2:30:21 PM
    Author     : Gayathri
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html>
<html lang="en">


    <!-- Mirrored from www.urbanui.com/gleam/pages/forms/basic_elements.html by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 28 Aug 2018 07:45:10 GMT -->
    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>Company Profile</title>
        <!-- 
        <link rel="stylesheet" href="../../vendors/iconfonts/mdi/css/materialdesignicons.min.css">
        <link rel="stylesheet" href="../../vendors/css/vendor.bundle.base.css">
        <link rel="stylesheet" href="../../vendors/css/vendor.bundle.addons.css">
        
        <link rel="stylesheet" href="http://www.urbanui.com/">
       
        <link rel="stylesheet" href="../../css/style.css">
        
        <link rel="shortcut icon" href="../../images/favicon.png" />
        --> 

        <spring:url value="/resources/vendors/iconfonts/mdi/css/materialdesignicons.min.css" var="hrmCss" />
        <spring:url value="/resources/vendors/css/vendor.bundle.base.css" var="hrmCss" />
        <spring:url value="/resources/vendors/css/vendor.bundle.addons.css" var="hrmCss" />

        <spring:url value="/resources/css/style.css" var="hrmCss" />
        <link href="${hrmCss}" rel="stylesheet" />  
    </head>

    <body>
        <div class="container-scroller">
            <!-- partial:../../partials/_navbar.html -->
            <nav class="navbar default-layout-navbar col-lg-12 col-12 p-0 fixed-top d-flex flex-row">
                <div class="text-center navbar-brand-wrapper d-flex align-items-center justify-content-center">
                    <a class="navbar-brand brand-logo" href="../../index.html"><img src="../../images/logo.svg" alt="logo"/></a>
                    <a class="navbar-brand brand-logo-mini" href="../../index.html"><img src="../../images/logo-mini.svg" alt="logo"/></a>
                </div>
                <div class="navbar-menu-wrapper d-flex align-items-center">
                    <button class="navbar-toggler navbar-toggler align-self-center" type="button" data-toggle="minimize">
                        <span class="mdi mdi-menu"></span>
                    </button>
                    <span class="d-none d-md-inline">Admin Dashboard</span>
                    <ul class="navbar-nav navbar-nav-right">
                        <li class="nav-item nav-profile">
                            <a class="nav-link">
                                <div class="nav-profile-text">
                                    <p class="mb-0">Tyler Barrett</p>
                                </div>
                                <div class="nav-profile-img">
                                    <img src="../../images/faces/face7.jpg" alt="image">
                                </div>
                            </a>
                        </li>
                        <li class="nav-item dropdown">
                            <a class="nav-link count-indicator dropdown-toggle" id="messageDropdown" href="#" data-toggle="dropdown" aria-expanded="false">
                                <i class="mdi mdi-message-text-outline"></i>
                                <span class="count-symbol"></span>
                            </a>
                            <div class="dropdown-menu dropdown-menu-right navbar-dropdown preview-list" aria-labelledby="messageDropdown">
                                <h6 class="p-3 mb-0">Messages</h6>
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item preview-item">
                                    <div class="preview-thumbnail">
                                        <img src="../../images/faces/face4.jpg" alt="image" class="profile-pic">
                                    </div>
                                    <div class="preview-item-content d-flex align-items-start flex-column justify-content-center">
                                        <h6 class="preview-subject ellipsis mb-1 font-weight-normal">Mark send you a message</h6>
                                        <p class="text-gray mb-0">
                                            1 Minutes ago
                                        </p>
                                    </div>
                                </a>
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item preview-item">
                                    <div class="preview-thumbnail">
                                        <img src="../../images/faces/face2.jpg" alt="image" class="profile-pic">
                                    </div>
                                    <div class="preview-item-content d-flex align-items-start flex-column justify-content-center">
                                        <h6 class="preview-subject ellipsis mb-1 font-weight-normal">Cregh send you a message</h6>
                                        <p class="text-gray mb-0">
                                            15 Minutes ago
                                        </p>
                                    </div>
                                </a>
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item preview-item">
                                    <div class="preview-thumbnail">
                                        <img src="../../images/faces/face3.jpg" alt="image" class="profile-pic">
                                    </div>
                                    <div class="preview-item-content d-flex align-items-start flex-column justify-content-center">
                                        <h6 class="preview-subject ellipsis mb-1 font-weight-normal">Profile picture updated</h6>
                                        <p class="text-gray mb-0">
                                            18 Minutes ago
                                        </p>
                                    </div>
                                </a>
                                <div class="dropdown-divider"></div>
                                <h6 class="p-3 mb-0 text-center">4 new messages</h6>
                            </div>
                        </li>
                        <li class="nav-item dropdown">
                            <a class="nav-link count-indicator dropdown-toggle" id="notificationDropdown" href="#" data-toggle="dropdown">
                                <i class="mdi mdi-bell-outline"></i>
                                <span class="count-symbol bg-info"></span>
                            </a>
                            <div class="dropdown-menu dropdown-menu-right navbar-dropdown preview-list" aria-labelledby="notificationDropdown">
                                <h6 class="p-3 mb-0">Notifications</h6>
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item preview-item">
                                    <div class="preview-thumbnail">
                                        <div class="preview-icon bg-success">
                                            <i class="mdi mdi-calendar"></i>
                                        </div>
                                    </div>
                                    <div class="preview-item-content d-flex align-items-start flex-column justify-content-center">
                                        <h6 class="preview-subject font-weight-normal mb-1">Event today</h6>
                                        <p class="text-gray ellipsis mb-0">
                                            Just a reminder that you have an event today
                                        </p>
                                    </div>
                                </a>
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item preview-item">
                                    <div class="preview-thumbnail">
                                        <div class="preview-icon bg-warning">
                                            <i class="mdi mdi-settings"></i>
                                        </div>
                                    </div>
                                    <div class="preview-item-content d-flex align-items-start flex-column justify-content-center">
                                        <h6 class="preview-subject font-weight-normal mb-1">Settings</h6>
                                        <p class="text-gray ellipsis mb-0">
                                            Update dashboard
                                        </p>
                                    </div>
                                </a>
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item preview-item">
                                    <div class="preview-thumbnail">
                                        <div class="preview-icon bg-info">
                                            <i class="mdi mdi-link-variant"></i>
                                        </div>
                                    </div>
                                    <div class="preview-item-content d-flex align-items-start flex-column justify-content-center">
                                        <h6 class="preview-subject font-weight-normal mb-1">Launch Admin</h6>
                                        <p class="text-gray ellipsis mb-0">
                                            New admin wow!
                                        </p>
                                    </div>
                                </a>
                                <div class="dropdown-divider"></div>
                                <h6 class="p-3 mb-0 text-center">See all notifications</h6>
                            </div>
                        </li>
                        <li class="nav-item nav-logout d-none d-lg-block">
                            <a class="nav-link" href="#">
                                Logout
                                <i class="mdi mdi-power"></i>
                            </a>
                        </li>
                    </ul>
                    <button class="navbar-toggler navbar-toggler-right d-lg-none align-self-center" type="button" data-toggle="offcanvas">
                        <span class="mdi mdi-menu"></span>
                    </button>
                </div>
            </nav>
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
                <nav class="sidebar sidebar-offcanvas" id="sidebar">
                    <ul class="nav">
                        <li class="nav-item nav-profile">
                            <span class="nav-link">
                                <img src="../../images/faces/face7.jpg" alt="image"/>
                                <span class="nav-profile-text">Tyler Barrett</span>
                                <span class="badge badge-pill badge-gradient-danger">1</span>
                            </span>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="../../index.html">
                                <i class="mdi mdi-home-outline menu-icon"></i>              
                                <span class="menu-title">Dashboard</span>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" data-toggle="collapse" href="#page-layouts" aria-expanded="false" aria-controls="page-layouts">
                                <i class="mdi mdi-apps menu-icon"></i>              
                                <span class="menu-title">Page Layouts</span>
                                <i class="menu-arrow"></i>
                            </a>
                            <div class="collapse" id="page-layouts">
                                <ul class="nav flex-column sub-menu">
                                    <li class="nav-item"> <a class="nav-link" href="../layout/boxed-layout.html">Boxed</a></li>
                                    <li class="nav-item"> <a class="nav-link" href="../layout/rtl-layout.html">RTL</a></li>
                                    <li class="nav-item"> <a class="nav-link" href="../layout/horizontal-menu.html">Horizontal Menu</a></li>                
                                </ul>
                            </div>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" data-toggle="collapse" href="#sidebar-layouts" aria-expanded="false" aria-controls="sidebar-layouts">
                                <i class="mdi mdi-playlist-play menu-icon"></i>              
                                <span class="menu-title">Sidebar Layouts</span>
                                <i class="menu-arrow"></i>
                            </a>
                            <div class="collapse" id="sidebar-layouts">
                                <ul class="nav flex-column sub-menu">
                                    <li class="nav-item"> <a class="nav-link" href="../layout/compact-menu.html">Compact menu</a></li>
                                    <li class="nav-item"> <a class="nav-link" href="../layout/sidebar-collapsed.html">Icon menu</a></li>
                                    <li class="nav-item"> <a class="nav-link" href="../layout/sidebar-hidden.html">Sidebar Hidden</a></li>
                                    <li class="nav-item"> <a class="nav-link" href="../layout/sidebar-hidden-overlay.html">Sidebar Overlay</a></li>
                                    <li class="nav-item"> <a class="nav-link" href="../layout/sidebar-fixed.html">Sidebar Fixed</a></li>
                                </ul>
                            </div>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" data-toggle="collapse" href="#ui-basic" aria-expanded="false" aria-controls="ui-basic">
                                <i class="mdi mdi-texture menu-icon"></i>              
                                <span class="menu-title">Basic UI Elements</span>
                                <i class="menu-arrow"></i>
                            </a>
                            <div class="collapse" id="ui-basic">
                                <ul class="nav flex-column sub-menu">
                                    <li class="nav-item"> <a class="nav-link" href="../ui-features/accordions.html">Accordions</a></li>
                                    <li class="nav-item"> <a class="nav-link" href="../ui-features/buttons.html">Buttons</a></li>
                                    <li class="nav-item"> <a class="nav-link" href="../ui-features/badges.html">Badges</a></li>
                                    <li class="nav-item"> <a class="nav-link" href="../ui-features/breadcrumbs.html">Breadcrumbs</a></li>
                                    <li class="nav-item"> <a class="nav-link" href="../ui-features/dropdowns.html">Dropdowns</a></li>
                                    <li class="nav-item"> <a class="nav-link" href="../ui-features/modals.html">Modals</a></li>
                                    <li class="nav-item"> <a class="nav-link" href="../ui-features/progress.html">Progress bar</a></li>
                                    <li class="nav-item"> <a class="nav-link" href="../ui-features/pagination.html">Pagination</a></li>
                                    <li class="nav-item"> <a class="nav-link" href="../ui-features/tabs.html">Tabs</a></li>
                                    <li class="nav-item"> <a class="nav-link" href="../ui-features/typography.html">Typography</a></li>
                                </ul>
                            </div>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" data-toggle="collapse" href="#ui-advanced" aria-expanded="false" aria-controls="ui-advanced">
                                <i class="mdi mdi-vector-arrange-above menu-icon"></i>              
                                <span class="menu-title">Advanced UI</span>
                                <i class="menu-arrow"></i>
                            </a>
                            <div class="collapse" id="ui-advanced">
                                <ul class="nav flex-column sub-menu">
                                    <li class="nav-item"> <a class="nav-link" href="../ui-features/dragula.html">Dragula</a></li>
                                    <li class="nav-item"> <a class="nav-link" href="../ui-features/clipboard.html">Clipboard</a></li>
                                    <li class="nav-item"> <a class="nav-link" href="../ui-features/context-menu.html">Context menu</a></li>
                                    <li class="nav-item"> <a class="nav-link" href="../ui-features/slider.html">Slider</a></li>
                                    <li class="nav-item"> <a class="nav-link" href="../ui-features/colcade.html">Colcade</a></li>
                                    <li class="nav-item"> <a class="nav-link" href="../ui-features/carousel.html">Carousel</a></li>
                                    <li class="nav-item"> <a class="nav-link" href="../ui-features/loaders.html">Loaders</a></li>
                                    <li class="nav-item"> <a class="nav-link" href="../ui-features/tooltips.html">Tooltip</a></li>
                                </ul>
                            </div>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="../ui-features/popups.html">
                                <i class="mdi mdi-lightbulb-outline menu-icon"></i>              
                                <span class="menu-title">Popups</span>
                                <span class="badge badge-gradient-primary badge-pill">3</span>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" data-toggle="collapse" href="#icons" aria-expanded="false" aria-controls="icons">
                                <i class="mdi mdi-cards-playing-outline menu-icon"></i>              
                                <span class="menu-title">Icons</span>
                                <i class="menu-arrow"></i>
                            </a>
                            <div class="collapse" id="icons">
                                <ul class="nav flex-column sub-menu">
                                    <li class="nav-item"> <a class="nav-link" href="../icons/mdi.html">Material</a></li>                
                                    <li class="nav-item"> <a class="nav-link" href="../icons/flag-icons.html">Flag icons</a></li>
                                    <li class="nav-item"> <a class="nav-link" href="../icons/font-awesome.html">Font Awesome</a></li>
                                    <li class="nav-item"> <a class="nav-link" href="../icons/simple-line-icon.html">Simple line icons</a></li>
                                    <li class="nav-item"> <a class="nav-link" href="../icons/themify.html">Themify icons</a></li>
                                </ul>
                            </div>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="../ui-features/notifications.html">
                                <i class="mdi mdi-backup-restore menu-icon"></i>              
                                <span class="menu-title">Notifications</span>
                                <span class="badge badge-gradient-success badge-pill">9</span>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="../ui-features/slider.html">
                                <i class="mdi mdi-code-brackets menu-icon"></i>              
                                <span class="menu-title">Sliders</span>              
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" data-toggle="collapse" href="#forms" aria-expanded="false" aria-controls="forms">
                                <i class="mdi mdi mdi-file-outline menu-icon"></i>              
                                <span class="menu-title">Forms</span>
                                <i class="menu-arrow"></i>
                            </a>
                            <div class="collapse" id="forms">
                                <ul class="nav flex-column sub-menu">
                                    <li class="nav-item"> <a class="nav-link" href="basic_elements.html">Form Elements</a></li>
                                    <li class="nav-item"> <a class="nav-link" href="advanced_elements.html">Advanced Forms</a></li>
                                    <li class="nav-item"> <a class="nav-link" href="validation.html">Validation</a></li>
                                    <li class="nav-item"> <a class="nav-link" href="wizard.html">Wizard</a></li>
                                </ul>
                            </div>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="text_editor.html">
                                <i class="mdi mdi-format-list-bulleted  menu-icon"></i>              
                                <span class="menu-title">Text editors</span>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="code_editor.html">
                                <i class="mdi mdi-code-braces menu-icon"></i>              
                                <span class="menu-title">Code editors</span>
                                <span class="badge badge-gradient-info badge-pill">6</span>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" data-toggle="collapse" href="#charts" aria-expanded="false" aria-controls="charts">
                                <i class="mdi mdi-chart-line menu-icon"></i>              
                                <span class="menu-title">Charts</span>
                                <i class="menu-arrow"></i>
                            </a>
                            <div class="collapse" id="charts">
                                <ul class="nav flex-column sub-menu">
                                    <li class="nav-item"> <a class="nav-link" href="../charts/chartjs.html">ChartJs</a></li>
                                    <li class="nav-item"> <a class="nav-link" href="../charts/morris.html">Morris</a></li>
                                    <li class="nav-item"> <a class="nav-link" href="../charts/flot-chart.html">Flot</a></li>
                                    <li class="nav-item"> <a class="nav-link" href="../charts/google-charts.html">Google charts</a></li>
                                    <li class="nav-item"> <a class="nav-link" href="../charts/sparkline.html">Sparkline js</a></li>
                                    <li class="nav-item"> <a class="nav-link" href="../charts/c3.html">C3 charts</a></li>
                                    <li class="nav-item"> <a class="nav-link" href="../charts/chartist.html">Chartist</a></li>
                                    <li class="nav-item"> <a class="nav-link" href="../charts/justGage.html">JustGage</a></li>
                                </ul>
                            </div>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" data-toggle="collapse" href="#tables" aria-expanded="false" aria-controls="tables">
                                <i class="mdi mdi-table menu-icon"></i>              
                                <span class="menu-title">Tables</span>
                                <i class="menu-arrow"></i>
                            </a>
                            <div class="collapse" id="tables">
                                <ul class="nav flex-column sub-menu">
                                    <li class="nav-item"> <a class="nav-link" href="../tables/basic-table.html">Basic table</a></li>
                                    <li class="nav-item"> <a class="nav-link" href="../tables/data-table.html">Data table</a></li>
                                    <li class="nav-item"> <a class="nav-link" href="../tables/js-grid.html">Js-grid</a></li>
                                    <li class="nav-item"> <a class="nav-link" href="../tables/sortable-table.html">Sortable table</a></li>
                                </ul>
                            </div>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" data-toggle="collapse" href="#maps" aria-expanded="false" aria-controls="maps">
                                <i class="mdi mdi-map-marker-radius menu-icon"></i>              
                                <span class="menu-title">Maps</span>
                                <i class="menu-arrow"></i>
                            </a>
                            <div class="collapse" id="maps">
                                <ul class="nav flex-column sub-menu">
                                    <li class="nav-item"> <a class="nav-link" href="../maps/google-maps.html">Google Maps</a></li>
                                    <li class="nav-item"> <a class="nav-link" href="../maps/mapeal.html">Mapeal</a></li>
                                    <li class="nav-item"> <a class="nav-link" href="../maps/vector-map.html">Vector map</a></li>
                                </ul>
                            </div>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" data-toggle="collapse" href="#auth" aria-expanded="false" aria-controls="auth">
                                <i class="mdi mdi-lock-outline menu-icon"></i>              
                                <span class="menu-title">User Pages</span>
                                <i class="menu-arrow"></i>
                            </a>
                            <div class="collapse" id="auth">
                                <ul class="nav flex-column sub-menu">
                                    <li class="nav-item"> <a class="nav-link" href="../samples/login.html"> Login </a></li>
                                    <li class="nav-item"> <a class="nav-link" href="../samples/login-2.html"> Login 2 </a></li>
                                    <li class="nav-item"> <a class="nav-link" href="../samples/register.html"> Register </a></li>
                                    <li class="nav-item"> <a class="nav-link" href="../samples/register-2.html"> Register 2 </a></li>
                                    <li class="nav-item"> <a class="nav-link" href="../samples/lock-screen.html"> Lockscreen </a></li>
                                </ul>
                            </div>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" data-toggle="collapse" href="#error" aria-expanded="false" aria-controls="error">
                                <i class="mdi mdi-security menu-icon"></i>              
                                <span class="menu-title">Error pages</span>
                                <i class="menu-arrow"></i>
                            </a>
                            <div class="collapse" id="error">
                                <ul class="nav flex-column sub-menu">
                                    <li class="nav-item"> <a class="nav-link" href="../samples/error-404.html"> 404 </a></li>
                                    <li class="nav-item"> <a class="nav-link" href="../samples/error-500.html"> 500 </a></li>
                                </ul>
                            </div>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" data-toggle="collapse" href="#general-pages" aria-expanded="false" aria-controls="general-pages">
                                <i class="mdi mdi-gift menu-icon"></i>              
                                <span class="menu-title">General Pages</span>
                                <i class="menu-arrow"></i>
                            </a>
                            <div class="collapse" id="general-pages">
                                <ul class="nav flex-column sub-menu">
                                    <li class="nav-item"> <a class="nav-link" href="../samples/blank-page.html"> Blank Page </a></li>
                                    <li class="nav-item"> <a class="nav-link" href="../samples/profile.html"> Profile </a></li>
                                    <li class="nav-item"> <a class="nav-link" href="../samples/faq.html"> FAQ </a></li>
                                    <li class="nav-item"> <a class="nav-link" href="../samples/faq-2.html"> FAQ 2 </a></li>
                                    <li class="nav-item"> <a class="nav-link" href="../samples/news-grid.html"> News grid </a></li>
                                    <li class="nav-item"> <a class="nav-link" href="../samples/timeline.html"> Timeline </a></li>
                                </ul>
                            </div>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" data-toggle="collapse" href="#e-commerce" aria-expanded="false" aria-controls="e-commerce">
                                <i class="mdi mdi-cart-outline menu-icon"></i>              
                                <span class="menu-title">E-commerce</span>
                                <i class="menu-arrow"></i>
                            </a>
                            <div class="collapse" id="e-commerce">
                                <ul class="nav flex-column sub-menu">
                                    <li class="nav-item"> <a class="nav-link" href="../samples/invoice.html"> Invoice </a></li>
                                    <li class="nav-item"> <a class="nav-link" href="../samples/pricing-table.html"> Pricing Table </a></li>
                                    <li class="nav-item"> <a class="nav-link" href="../samples/orders.html"> Orders </a></li>
                                </ul>
                            </div>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="../apps/email.html">
                                <i class="mdi mdi-email-outline menu-icon"></i>              
                                <span class="menu-title">E-mail</span>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="../apps/calendar.html">
                                <i class="mdi mdi-calendar-today menu-icon"></i>              
                                <span class="menu-title">Calendar</span>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="../apps/gallery.html">
                                <i class="mdi mdi-image-filter menu-icon"></i>              
                                <span class="menu-title">Gallery</span>
                                <span class="badge badge-gradient-warning badge-pill">9</span>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="../documentation.html">
                                <i class="mdi mdi-file-document-box menu-icon"></i>              
                                <span class="menu-title">Documentation</span>
                            </a>
                        </li>
                        <li class="nav-item sidebar-actions">
                            <a class="nav-link" href="#">
                                <i class="mdi mdi-circle-outline menu-icon text-danger"></i>
                                Settings
                            </a>
                            <a class="nav-link" href="#">
                                <i class="mdi mdi-circle-outline menu-icon text-danger"></i>
                                Contact Support
                            </a>
                            <span class="nav-link">
                                &copy; 2018 Gleam Admin
                            </span>
                        </li>
                    </ul>
                </nav>
                <!-- partial -->
                <div class="main-panel">        
                    <div class="content-wrapper">
                        <div class="page-header">
                            <h3 class="page-title">
                                Company Profille
                            </h3>

                        </div>
                        <div class="row">


                            <div class="col-12 grid-margin">
                                <div class="card">
                                    <div class="card-body">

                                        <form class="form-sample">
                                            <p class="card-description">

                                            </p>
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <div class="form-group row">
                                                        <label class="col-sm-3 col-form-label">Company ID</label>
                                                        <div class="col-sm-9">
                                                            <input type="text" class="form-control" />
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group row">
                                                        <label class="col-sm-3 col-form-label">Company Name</label>
                                                        <div class="col-sm-9">
                                                            <input type="text" class="form-control" />
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">

                                                <div class="col-md-6">
                                                    <div class="form-group row">
                                                        <label class="col-sm-3 col-form-label">Establishment Date</label>
                                                        <div class="col-sm-9">
                                                            <input class="form-control" placeholder="dd/mm/yyyy"/>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>

                                            <p class="card-description">
                                                Address
                                            </p>
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <div class="form-group row">
                                                        <label class="col-sm-3 col-form-label">City</label>
                                                        <div class="col-sm-9">
                                                            <input type="text" class="form-control" />
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group row">
                                                        <label class="col-sm-3 col-form-label">State</label>
                                                        <div class="col-sm-9">
                                                            <input type="text" class="form-control" />
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <div class="form-group row">
                                                        <label class="col-sm-3 col-form-label">Country</label>
                                                        <div class="col-sm-9">
                                                            <select class="form-control">
                                                                <option>America</option>
                                                                <option>Italy</option>
                                                                <option>Russia</option>
                                                                <option>Britain</option>
                                                            </select>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group row">
                                                        <label class="col-sm-3 col-form-label">Postcode</label>
                                                        <div class="col-sm-9">
                                                            <input type="text" class="form-control" />
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <div class="form-group row">
                                                        <label class="col-sm-3 col-form-label">Contact</label>
                                                        <div class="col-sm-9">
                                                            <input type="text" class="form-control" />
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group row">
                                                        <label class="col-sm-3 col-form-label">Secondary Contact</label>
                                                        <div class="col-sm-9">
                                                            <input type="text" class="form-control" />
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                            <div class="col-12 grid-margin stretch-card">
                                <div class="card">
                                    <div class="card-body">
                                        <h4 class="card-title">Company Website</h4>

                                        <form class="form-inline">
                                            <label class="sr-only" for="inlineFormInputName2">Name</label>
                                            <input type="text" class="form-control mb-2 mr-sm-2" id="inlineFormInputName2" placeholder="Jane Doe">

                                            <label class="sr-only" for="inlineFormInputGroupUsername2">Username</label>
                                            <div class="input-group mb-2 mr-sm-2">
                                                <div class="input-group-prepend">
                                                    <div class="input-group-text">@</div>
                                                </div>
                                                <input type="text" class="form-control" id="inlineFormInputGroupUsername2" placeholder="Username">
                                            </div>
                                            <div class="form-check mx-sm-2">
                                                <label class="form-check-label">
                                                    <input type="checkbox" class="form-check-input" checked>

                                                </label>
                                            </div>
                                            <button type="submit" class="btn btn-gradient-primary mb-2">Submit</button>
                                        </form>
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
        <!-- 
        
        <script src="../../js/off-canvas.js"></script>
        <script src="../../js/hoverable-collapse.js"></script>
        <script src="../../js/misc.js"></script>
        <script src="../../js/settings.js"></script>
        <script src="../../js/todolist.js"></script>
        
        
        <script src="../../js/file-upload.js"></script>
        <script src="../../js/iCheck.js"></script>
        <script src="../../js/typeahead.js"></script>
        <script src="../../js/select2.js"></script>
        -->
        <spring:url value="/resources/vendors/js/vendor.bundle.base.js" var="rationJS" />
        <spring:url value="/resources/vendors/js/vendor.bundle.addons.js" var="rationJS" />
        <spring:url value="/resources/js/off-canvas.js" var="rationJS" />
        <spring:url value="/resources/js/hoverable-collapse.js" var="rationJS" />
        <spring:url value="/resources/js/misc.js" var="rationJS" />
        <spring:url value="/resources/js/settings.js" var="rationJS" />
        <spring:url value="/resources/js/todolist.js" var="rationJS" />
    </body>


    <!-- Mirrored from www.urbanui.com/gleam/pages/forms/basic_elements.html by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 28 Aug 2018 07:45:13 GMT -->
</html>

