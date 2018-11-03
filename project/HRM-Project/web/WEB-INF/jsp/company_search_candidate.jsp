<%-- 
    Document   : company_search_candidate
    Created on : Sep 21, 2018, 3:09:20 PM
    Author     : HP
--%>

<%@ include file="inc/header.jsp" %>  


<%@ include file="inc/top_company.jsp"%>
<div class="container-fluid page-body-wrapper">
    <div id="settings-trigger"><i class="mdi mdi-format-color-fill"></i></div>

    <%@ include file="inc/company_sidebar.jsp"%> 
    <!-- partial -->
    <div class="main-panel">          
        <div class="content-wrapper">
            <div class="page-header">
                <h3 class="page-title">
                    Search Candidate
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
                                                            <option value="5">Select Qualification</option>
                                                            <option value="10">10</option>
                                                            <option value="15">15</option>
                                                            <option value="-1">All</option>
                                                        </select> 
                                                </div>
                                            </div>
                                            <div class="col-sm-12 col-md-4">
                                                <div class="dataTables_length" id="order-listing_length">
                                                    <select name="order-listing_length" aria-controls="order-listing" class="form-control">
                                                            <option value="5">Select Experience</option>
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
                                                                <th>Candidate</th>
                                                                <th>Candidate Name</th>
                                                                <th>Email</th>
                                                                <th>Qualification</th>
                                                                <th>Contact</th>
                                                                <th>Status</th>
                                                                <th>Profile</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                           <tr>
                                                            <td>WD-62</td>
                                                            <td>Doe</td>
                                                            <td>Brazil</td>
                                                            <td>$4500</td>
                                                            <td>$7500</td>
                                                            <td>
                                                                <label class="badge badge-danger">Active</label>
                                                            </td>
                                                            <td class="text-right">
                                                                <button class="btn btn-light">
                                                                    <i class="mdi mdi-eye text-primary"></i>View
                                                                </button>
                                                                
                                                            </td>
                                                        </tr>
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
                <!-- content-wrapper ends -->
                <!-- partial:../../partials/_footer.html -->
                <%@ include file="inc/companyfooter.jsp" %>
</html>

