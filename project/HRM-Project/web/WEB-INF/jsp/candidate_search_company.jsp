<%-- 
    Document   : candidate_search_company
    Created on : Sep 21, 2018, 2:52:05 PM
    Author     : Gayathri
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="LiibraryFunction.DBFunctions"%>
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
                                            <select name="order-listing_length" aria-controls="order-listing" class="form-control" id="cmbComapny" onchange="getCompanyById()">
                                                <option value="5">Select Industry</option>

                                            <%
                                                String sql1 = "select * from  company_reg";
                                                DBFunctions db = new DBFunctions();
                                                ResultSet rs1 = db.SelectQuery(sql1);
                                                while (rs1.next()) {
                                            %>
                                            <option value=<%= rs1.getString("CompanyId")%>><%= rs1.getString("UserName")%></option>
                                            <%
                                                }
                                            %>
                                        </select> 
                                    </div>
                                </div>
                                <div class="col-sm-12 col-md-4">
                                    <div class="dataTables_length" id="order-listing_length">
                                        <select name="order-listing_length" aria-controls="order-listing" class="form-control" id="cmbLocation" onchange="getCompanyByLocation()">
                                            <option value="5">Select Location</option>
                                            <%
                            String sql2 = "select distinct Country,CompanyId from  company_reg";
                         
                            ResultSet rs2 = db.SelectQuery(sql2);
                            while (rs2.next()) {
                                            %>
                                            <option value=<%= rs2.getString("Country")%>><%= rs2.getString("Country")%></option>
                                            <%
                                                }
                                            %>
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
                                                    <th>Company Id</th>
                                                    <th>Company Name</th>
                                                    <th>Email</th>
                                                    <th>Contact</th>
                                                    <th>Official Site</th>

                                                </tr>
                                            </thead>
                                            <tbody id="tbody_companylist">
                                                <%
                                   
                                            String sql = "SELECT * FROM `company_reg`";
                                            ResultSet rs = db.SelectQuery(sql);
                                            while (rs.next()) {
                                                %>
                                                <tr>
                                                    <td><%= rs.getString("CompanyId")%></td>
                                                    <td><%= rs.getString("CompanyName")%></td>
                                                    <td><%= rs.getString("Email")%></td>
                                                    <td><%= rs.getString("Contact")%></td>
                                                    <td><%= rs.getString("CompanyWebsite")%></td>

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
            </div>
        </div>
        <%@ include file="inc/candidatefooter.jsp" %> 
        </html>

