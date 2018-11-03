<%-- 
    Document   : company_view_appliedcustomer
    Created on : Sep 20, 2018, 12:48:00 PM
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
                                View Applied Candidate...
                            </h3>
                            
                        </div>
                        <div class="row">
                            
                            <div class="col-lg-12 grid-margin stretch-card">
                                <div class="card">
                                    <div class="card-body">
                                        
                                        
                                        <div class="table-responsive">
                                            <table class="table table-striped">
                                                <thead>
                                                    <tr>
                                                        <th>
                                                            Candidate
                                                        </th>
                                                        <th>
                                                            Candidate Name
                                                        </th>
                                                       <th>
                                                            Job Title
                                                        </th>
                                                        <th>
                                                            Contact
                                                        </th>
                                                         <th>
                                                            Email
                                                        </th>
                                                        
                                                        <th>
                                                            Profile
                                                        </th>
                                                        <th>
                                                            Send Exam Date
                                                        </th>
                                                        <th>
                                                            Send Exam Link
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
                    <!-- content-wrapper ends -->
                    <!-- partial:../../partials/_footer.html -->
                    <%@ include file="inc/companyfooter.jsp"%> 
</html>

