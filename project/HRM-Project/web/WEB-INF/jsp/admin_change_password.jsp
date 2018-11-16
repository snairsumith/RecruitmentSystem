<%-- 
    Document   : admin_change_password
    Created on : Nov 16, 2018, 12:25:07 PM
    Author     : Gayathri
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="LiibraryFunction.DBFunctions"%>
<%@ include file="inc/header.jsp" %>  


<%@ include file="inc/top_admin.jsp"%>
<div class="container-fluid page-body-wrapper">
    <div id="settings-trigger"><i class="mdi mdi-format-color-fill"></i></div>

    <%@ include file="inc/admin_sidebar.jsp"%> 
        
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
         
 <%@ include file="inc/adminfooter.jsp"%> 

    <!-- Mirrored from www.urbanui.com/gleam/pages/samples/register.html by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 28 Aug 2018 07:45:44 GMT -->
</html>
