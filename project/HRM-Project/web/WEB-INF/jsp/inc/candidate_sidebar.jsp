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
                            <a class="nav-link" href="#">
                                <i class="mdi mdi-home-outline menu-icon"></i>              
                                <span class="menu-title">Dashboard</span>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="candidate_candidate_profile?uname=<%= request.getParameter("uname") %>">
                                <i class="mdi mdi-apps menu-icon"></i>              
                                <span class="menu-title">Profile</span>
                                <i class="menu-arrow"></i>
                            </a>
                            
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" data-toggle="collapse" href="#sidebar-layouts" aria-expanded="false" aria-controls="sidebar-layouts">
                                <i class="mdi mdi-playlist-play menu-icon"></i>              
                                <span class="menu-title">search</span>
                                <i class="menu-arrow"></i>
                            </a>
                            <div class="collapse" id="sidebar-layouts">
                                <ul class="nav flex-column sub-menu">
                                    <li class="nav-item"> <a class="nav-link" href="candidate_search_company?uname=<%= request.getParameter("uname") %>">Job</a></li>
                                    
                                    
                                </ul>
                            </div>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="view_applied_jobs?uname=<%= request.getParameter("uname") %>">
                                <i class="mdi mdi-texture menu-icon"></i>              
                                <span class="menu-title">Requested Jobs</span>
                                
                            </a>
                            
                        </li>
                          
                        <li class="nav-item">
                            <a class="nav-link" href="UserNotification?uname=<%= request.getParameter("uname") %>">
                                <i class="mdi mdi-backup-restore menu-icon"></i>              
                                <span class="menu-title">Notifications</span>
                                
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="candidate_change_password?uname=<%= request.getParameter("uname") %>">
                                <i class="mdi mdi-home-outline menu-icon"></i>              
                                <span class="menu-title">Change Password</span>
                            </a>
                        </li>
                         <li class="nav-item">
                            <a class="nav-link" href="examAttend?uname=<%= request.getParameter("uname") %>">
                                <i class="mdi mdi-home-outline menu-icon"></i>              
                                <span class="menu-title">Exam</span>
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