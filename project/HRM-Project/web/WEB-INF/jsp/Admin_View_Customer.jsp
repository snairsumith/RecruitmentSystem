<%-- 
    Document   : Admin_View_Customer
    Created on : Sep 20, 2018, 12:45:50 PM
    Author     : anjana
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="LiibraryFunction.DBFunctions"%>
<%@ include file="inc/header.jsp" %>  


<%@ include file="inc/top_admin.jsp"%>
<div class="container-fluid page-body-wrapper">
    <div id="settings-trigger"><i class="mdi mdi-format-color-fill"></i></div>

    <%@ include file="inc/admin_sidebar.jsp"%> 
    <!-- partial -->

    <!-- partial -->
    <div class="main-panel">
        <div class="content-wrapper">
            <div class="page-header">
                <h3 class="page-title">
                    Brows Candidate
                </h3>r

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
                                                Candidate Name
                                            </th>

                                            <th>
                                                Email
                                            </th>
                                            <th>
                                                Contact
                                            </th>
                                            <th>
                                                Country
                                            </th>
                                            <th>
                                                Register Date
                                            </th>
                                            <th>

                                            </th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <%
                                    DBFunctions db = new DBFunctions();
                                    String sql = "SELECT * FROM `user_reg`";
                                    ResultSet rs = db.SelectQuery(sql);
                                    while (rs.next()) {
                                        %>
                                        <tr>
                                            <td><%= rs.getString("UserName")%></td>
                                            <td><%= rs.getString("Email")%></td>
                                            <td><%= rs.getString("Contact")%></td>
                                            <td><%= rs.getString("Country")%></td>
                                            <td><%= rs.getString("RegDate")%></td>

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

