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
                <div class="container-fluid page-body-wrapper full-page-wrapper">
                <div class="content-wrapper d-flex align-items-center auth">
                    <div class="row w-100">
                        <div class="col-lg-4 mx-auto">
                            <div class="auth-form-light text-left p-5">
                                <div class="brand-logo">
                                    <img src="/HRM-Project/resources/images/logo.svg" alt="logo">
                                </div>
                                <h4>Change password here...</h4>
                                
                                <form class="pt-3">
                                    <div class="form-group">
                                        <input type="password" class="form-control form-control-lg" id="txtCrntpass" placeholder="Current Password">
                                        <label class="text-danger" id="err_crntpass"></label>
                                    </div>
                                    <div class="form-group">
                                        <input type="password" class="form-control form-control-lg" id="txtnewpass" placeholder="New Password">
                                        <label class="text-danger" id="err_newpass"></label>
                                        <label class="text-danger" id="er_newpass"></label>
                                    </div>
                                    
                                    <div class="form-group">
                                        <input type="password" class="form-control form-control-lg" id="txtcnfmpass" placeholder="Confirm Password">
                                        <label class="text-danger" id="err_cnfmpass"></label>
                                        <label class="text-danger" id="er_cnfmpass"></label>
                                    </div>
                                    
                                    <div class="mt-3">
                                        <a class="btn btn-block btn-gradient-primary btn-lg font-weight-medium auth-form-btn" onclick="change_password()">DONE</a>
                                    </div>
                                   
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- content-wrapper ends -->
            </div>
            <!-- page-body-wrapper ends -->
       </div>
                    
                   <%@ include file="inc/candidatefooter.jsp" %> 
</html>

