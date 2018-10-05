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
                    
                   <%@ include file="inc/footer.jsp" %> 
</html>

