<%-- 
    Document   : candidate_search_company
    Created on : Sep 21, 2018, 2:52:05 PM
    Author     : Gayathri
--%>

<%@ include file="inc/header.jsp" %>
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
                                            <div class="col-sm-12 col-md-4">
                                                <div class="dataTables_length" id="order-listing_length">
                                                     <select name="order-listing_length" aria-controls="order-listing" class="form-control">
                                                            <option value="5">Select Industry</option>
                                                            <option value="10">10</option>
                                                            <option value="15">15</option>
                                                            <option value="-1">All</option>
                                                        </select> 
                                                </div>
                                            </div>
                                            <div class="col-sm-12 col-md-4">
                                                <div class="dataTables_length" id="order-listing_length">
                                                    <select name="order-listing_length" aria-controls="order-listing" class="form-control">
                                                            <option value="5">Select Location</option>
                                                            <option value="10">10</option>
                                                            <option value="15">15</option>
                                                            <option value="-1">All</option>
                                                        </select> 
                                                </div>
                                                
                                            </div>
                                            <div class="col-sm-12 col-md-4">
                                            <div class="form-group">
                                                <button type="button" class="btn btn-gradient-primary mb-2"onclick="">Search</button>
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
                    <%@ include file="inc/candidatefooter.jsp" %> 
</html>

