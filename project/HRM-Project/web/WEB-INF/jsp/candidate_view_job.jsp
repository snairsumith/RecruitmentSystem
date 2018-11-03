<%-- 
    Document   : customer_view_job
    Created on : Sep 20, 2018, 12:45:57 PM
    Author     : Gayathri
--%>

<%@ include file="inc/header.jsp" %>  

    
    <%@ include file="inc/top_candidate.jsp"%>
    <div class="container-fluid page-body-wrapper">
        <div id="settings-trigger"><i class="mdi mdi-format-color-fill"></i></div>
                
    <%@ include file="inc/candidate_sidebar.jsp"%> 
                <div class="main-panel">
                    <div class="content-wrapper">
                        <div class="page-header">
                            <h3 class="page-title">
                                Job Vacancies
                            </h3>
                            
                        </div>
                        
                        <div class="row">
                            
                            <div class="col-lg-12 grid-margin stretch-card">
                                
                                <div class="card">
                                    <div class="card-body">
                                        <div class="row">
                                            <div class="col-sm-12 col-md-3">
                                                <div class="dataTables_length" id="order-listing_length">
                                                    <select name="order-listing_length" aria-controls="order-listing" class="form-control">
                                                            <option value="5">Industry</option>
                                                            <option value="10">10</option>
                                                            <option value="15">15</option>
                                                            <option value="-1">All</option>
                                                        </select>
                                                </div>
                                            </div>
                                            <div class="col-sm-12 col-md-3">
                                                <div class="dataTables_length" id="order-listing_length">
                                                    <select name="order-listing_length" aria-controls="order-listing" class="form-control">
                                                            <option value="5">Location</option>
                                                            <option value="10">10</option>
                                                            <option value="15">15</option>
                                                            <option value="-1">All</option>
                                                        </select> 
                                                </div>
                                                
                                            </div>
                                            <div class="col-sm-12 col-md-3">
                                                <div class="dataTables_length" id="order-listing_length">
                                                    <select name="order-listing_length" aria-controls="order-listing" class="form-control">
                                                            <option value="5">Technology</option>
                                                            <option value="10">10</option>
                                                            <option value="15">15</option>
                                                            <option value="-1">All</option>
                                                        </select>
                                                </div>
                                                
                                            </div>
                                            <div class="col-sm-12 col-md-3">
                                            <div class="form-group">
                                    <button type="button" class="btn btn-gradient-primary mb-2"onclick="">Search</button>
                                </div>
                                            </div>   
                                        </div>
                                        
                                        <div class="table-responsive">
                                            <table class="table table-striped">
                                                <thead>
                                                    <tr>
                                                        <th>
                                                            Company
                                                        </th>
                                                        <th>
                                                            Job
                                                        </th>
                                                        <th>
                                                            Eligibility
                                                        </th>
                                                        <th>
                                                            Apply Last Date  
                                                        </th>
                                                        <th>
                                                            Apply
                                                        </th>
                                                        <th>
                                                            Company Profile
                                                        </th>
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
                    
                   <%@ include file="inc/candidatefooter.jsp" %> 
</html>

