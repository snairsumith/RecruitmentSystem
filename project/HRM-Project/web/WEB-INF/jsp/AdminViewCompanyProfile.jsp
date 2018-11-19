<%-- 
    Document   : approve_company
    Created on : Aug 31, 2018, 2:47:55 PM
    Author     : Gayathri
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="LiibraryFunction.DBFunctions"%>
<%@ include file="inc/header.jsp" %>  


<%@ include file="inc/top_admin.jsp"%>
<div class="container-fluid page-body-wrapper">
    <div id="settings-trigger"><i class="mdi mdi-format-color-fill"></i></div>

    <%@ include file="inc/admin_sidebar.jsp"%> 
    <!-- partial -->
    <div class="main-panel">
        <div class="content-wrapper">
            <div class="page-header">
                <h3 class="page-title">
                    New Company Registered
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
                                                Company Name
                                            </th>

                                            <th>
                                                Email
                                            </th>
                                            <th>
                                                Country
                                            </th>
                                            <th>
                                                Registration Date
                                            </th>
                                            <th>
                                               Action     
                                            </th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <%
                                            DBFunctions db = new DBFunctions();
                                            String sql = "select company_reg.*,login_tbl.Status from company_reg inner join login_tbl";
                                            ResultSet rs = db.SelectQuery(sql);
                                            while (rs.next()) {
                                        %>
                                        <tr>
                                            <td><%= rs.getString("UserName")%></td>
                                            <td><%= rs.getString("Email")%></td>
                                            <td><%= rs.getString("Country")%></td>
                                            <td><%= rs.getString("CreatedDate")%></td>

                                            <td></td>
                                        </tr>
                                        <%
                                            }
                                        %>
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
        <%@ include file="inc/adminfooter.jsp"%>
        </html>

