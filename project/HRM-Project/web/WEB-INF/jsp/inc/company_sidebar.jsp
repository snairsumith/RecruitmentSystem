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
                            <a class="nav-link" href="company_update_profile">
                                <i class="mdi mdi-home-outline menu-icon"></i>              
                                <span class="menu-title">Profile</span>
                            </a>
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
                                   
                                </ul>
                            </div>
                        </li>
                       
                        <li class="nav-item">
                            <a class="nav-link" href="#">
                                <i class="mdi mdi-lightbulb-outline menu-icon"></i>              
                                <span class="menu-title">Notification</span>
                                <span class="badge badge-gradient-primary badge-pill">3</span>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">
                                <i class="mdi mdi-home-outline menu-icon"></i>              
                                <span class="menu-title">Change Password</span>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="../">
                                <i class="mdi mdi-home-outline menu-icon"></i>              
                                <span class="menu-title">Logout</span>
                            </a>
                        </li>
                       
                        <li class="nav-item sidebar-actions">
                            <span class="nav-link">
                                &copy; 2018 hoWzzaT
                            </span>
                        </li>
                    </ul>
                </nav>
