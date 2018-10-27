<%-- 
    Document   : company_sidebar
    Created on : Sep 8, 2018, 12:23:26 PM
    Author     : Gayathri
--%>

<nav class="sidebar sidebar-offcanvas" id="sidebar">
                    <ul class="nav">
                        <li class="nav-item nav-profile">
                            <span class="nav-link">
                                <img src="/HRM-Project/resources/images/logo.svg" alt="image"/>
                                <span class="nav-profile-text">hoWzzaT</span>
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
                                <span class="menu-title">Profile</span>
                                <i class="menu-arrow"></i>
                            </a>
                           <div class="collapse" id="page-layouts">
                                <ul class="nav flex-column sub-menu">
                                    <li class="nav-item"> <a class="nav-link" href="company_profile">Profile</a></li>
                                    <li class="nav-item"> <a class="nav-link" href="company_update_profile">Update Profile</a></li>
                                    <!-- <li class="nav-item"> <a class="nav-link" href="../layout/horizontal-menu.html">Horizontal Menu</a></li>-->                
                                </ul>
                            </div>-->
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" data-toggle="collapse" href="#sidebar-layouts" aria-expanded="false" aria-controls="sidebar-layouts">
                                <i class="mdi mdi-playlist-play menu-icon"></i>              
                                <span class="menu-title">Search</span>
                                <i class="menu-arrow"></i>
                            </a>
                            <div class="collapse" id="sidebar-layouts">
                                <ul class="nav flex-column sub-menu">
                                    <li class="nav-item"> <a class="nav-link" href="company_search_candidate">Candidate</a></li>
                                    <li class="nav-item"> <a class="nav-link" href="company_view_appliedcandidate">Applied Candidate</a></li>
                                    <!--<li class="nav-item"> <a class="nav-link" href="../layout/sidebar-hidden.html">Sidebar Hidden</a></li>
                                    <li class="nav-item"> <a class="nav-link" href="../layout/sidebar-hidden-overlay.html">Sidebar Overlay</a></li>
                                    <li class="nav-item"> <a class="nav-link" href="../layout/sidebar-fixed.html">Sidebar Fixed</a></li>-->
                                </ul>
                            </div>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" data-toggle="collapse" href="#ui-basic" aria-expanded="false" aria-controls="ui-basic">
                                <i class="mdi mdi-texture menu-icon"></i>              
                                <span class="menu-title">Job</span>
                                <i class="menu-arrow"></i>
                            </a>
                            <div class="collapse" id="ui-basic">
                                <ul class="nav flex-column sub-menu">
                                    <li class="nav-item"> <a class="nav-link" href="jobpost">JobPost</a></li>
                                    <!--<li class="nav-item"> <a class="nav-link" href="../ui-features/buttons.html">Buttons</a></li>
                                    <li class="nav-item"> <a class="nav-link" href="../ui-features/badges.html">Badges</a></li>
                                    <li class="nav-item"> <a class="nav-link" href="../ui-features/breadcrumbs.html">Breadcrumbs</a></li>
                                    <li class="nav-item"> <a class="nav-link" href="../ui-features/dropdowns.html">Dropdowns</a></li>
                                    <li class="nav-item"> <a class="nav-link" href="../ui-features/modals.html">Modals</a></li>
                                    <li class="nav-item"> <a class="nav-link" href="../ui-features/progress.html">Progress bar</a></li>
                                    <li class="nav-item"> <a class="nav-link" href="../ui-features/pagination.html">Pagination</a></li>
                                    <li class="nav-item"> <a class="nav-link" href="../ui-features/tabs.html">Tabs</a></li>
                                    <li class="nav-item"> <a class="nav-link" href="../ui-features/typography.html">Typography</a></li>-->
                                </ul>
                            </div>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" data-toggle="collapse" href="#ui-advanced" aria-expanded="false" aria-controls="ui-advanced">
                                <i class="mdi mdi-vector-arrange-above menu-icon"></i>              
                                <span class="menu-title">Online Exam</span>
                                <i class="menu-arrow"></i>
                            </a>
                            <div class="collapse" id="ui-advanced">
                                <ul class="nav flex-column sub-menu">
                                    <li class="nav-item"> <a class="nav-link" href="send_exam_date">Send Exam Date</a></li>
                                    <li class="nav-item"> <a class="nav-link" href="send_examlink">Send Exam Link</a></li>
                                    <li class="nav-item"> <a class="nav-link" href="send_interview_notification">Context menu</a></li>
                                    <!--<li class="nav-item"> <a class="nav-link" href="../ui-features/slider.html">Slider</a></li>
                                    <li class="nav-item"> <a class="nav-link" href="../ui-features/colcade.html">Colcade</a></li>
                                    <li class="nav-item"> <a class="nav-link" href="../ui-features/carousel.html">Carousel</a></li>
                                    <li class="nav-item"> <a class="nav-link" href="../ui-features/loaders.html">Loaders</a></li>
                                    <li class="nav-item"> <a class="nav-link" href="../ui-features/tooltips.html">Tooltip</a></li>-->
                                </ul>
                            </div>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="../ui-features/popups.html">
                                <i class="mdi mdi-lightbulb-outline menu-icon"></i>              
                                <span class="menu-title">Notification</span>
                                <span class="badge badge-gradient-primary badge-pill">3</span>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="../../index.html">
                                <i class="mdi mdi-home-outline menu-icon"></i>              
                                <span class="menu-title">Change Password</span>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="../login">
                                <i class="mdi mdi-home-outline menu-icon"></i>              
                                <span class="menu-title">Logout</span>
                            </a>
                        </li>
                        <!--<li class="nav-item">
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
                        </li>-->
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
                                &copy; 2018 hoWzzaT
                            </span>
                        </li>
                    </ul>
                </nav>
