<%-- 
    Document   : AdminDashboard
    Created on : Nov 13, 2018, 1:57:32 PM
    Author     : minusbug
--%>

<%@ include file="inc/header.jsp" %>  


<%@ include file="inc/top_admin.jsp"%>
<div class="container-fluid page-body-wrapper">
    <div id="settings-trigger"><i class="mdi mdi-format-color-fill"></i></div>

    <%@ include file="inc/admin_sidebar.jsp"%> 
    <div class="main-panel">
        <div class="content-wrapper">
             <div class="row">
            <div class="col-md-4 stretch-card grid-margin">
                <div class="card bg-gradient-danger border-0 text-white p-3">
                    <div class="card-body">
                        <div class="d-flex align-items-start">
                            <i class="mdi mdi-currency-usd mdi-48px"></i>
                            <div class="ml-4">
                                <h2 class="mb-2">21</h2>
                                <h4 class="mb-0">New Candidate</h4>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-4 stretch-card grid-margin">
                <div class="card bg-gradient-info border-0 text-white p-3">
                    <div class="card-body">
                        <div class="d-flex align-items-start">
                            <i class="mdi mdi-cards-outline mdi-48px"></i>
                            <div class="ml-4">
                                <h2 class="mb-2">67,045</h2>
                                <h4 class="mb-0">New Company</h4>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-4 stretch-card grid-margin">
                <div class="card bg-gradient-success border-0 text-white p-3">
                    <div class="card-body">
                        <div class="d-flex align-items-start">
                            <i class="mdi mdi-chart-line mdi-48px"></i>
                            <div class="ml-4">
                                <h2 class="mb-2">83,900</h2>
                                <h4 class="mb-0">Job Post</h4>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        </div>
       
    </div>
</div>
<%@ include file="inc/adminfooter.jsp"%> 