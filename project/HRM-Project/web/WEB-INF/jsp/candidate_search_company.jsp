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

                                        </div>
                                    </div>

                                    <div class="col-12 grid-margin">
                                        <div class="card">
                                            <div class="card-body">
                                                <!--  <h4 class="card-title">Horizontal Two column</h4>-->
                                                <form class="form-sample">

                                                    <div class="row">



                                                    </div>
                                                    <h5 class="card-title">Search Filter</h5>
                                                    <div class="row">
                                                        <div class="col-md-6">
                                                            <div class="form-group row">

                                                                <div class="col-sm-12">
                                                                    <select name="order-listing_length" aria-controls="order-listing" class="form-control" id="cmbComapny" onchange="getJobPostByCompnay()">
                                                                        <option value="5">Select Industry</option>

                                                                    <%
                                                                        String sql1 = "select * from  company_reg";
                                                                        DBFunctions db = new DBFunctions();
                                                                        ResultSet rs1 = db.SelectQuery(sql1);
                                                                        while (rs1.next()) {
                                                                    %>
                                                                    <option value="<%= rs1.getString("UserName")%>"><%= rs1.getString("CompanyName")%></option>
                                                                    <%
                                                                        }
                                                                    %>
                                                                </select> 
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group row">

                                                            <div class="col-sm-12">
                                                                <select class="form-control" id="selCountry" onchange="getallocation()">
                                                                    <option>Select Country</option>
                                                                    <%
                                                         String sql11 = "select * from location where ParentId=0";
                                        
                                                         ResultSet rs11 = db.SelectQuery(sql11);
                                                         while (rs11.next()) {
                                                                    %>
                                                                    <option value=<%= rs11.getString("LocationId")%>><%= rs11.getString("LocationName")%></option>
                                                                    <%
                                                                        }
                                                                    %>
                                                                </select>
                                                            </div>


                                                        </div>
                                                    </div>
                                                </div>

                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <div class="form-group row">

                                                            <div class="col-sm-12">
                                                                <select class="form-control" id="selState" onchange="getallCity()">
                                                                    <option value="0">Select State</option>
                                                                </select> 
                                                            </div>




                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group row">

                                                            <div class="col-sm-12">
                                                                <select class="form-control" id="selCity" onchange="getJobPostByLocation()">
                                                                    <option value="0">Select City</option>
                                                                </select> 
                                                            </div>

                                                        </div>
                                                    </div>
                                                </div>

                                                




                                            </form>
                                        </div>
                                    </div>
                                </div>


                            </div>
                            <div class="row">
                                <div class="col-12">
                                    <div class="table-responsive">
                                        <table id="order-listing" class="table">
                                            <thead>
                                                <tr class="bg-primary text-white">

                                                    <th>Company Name</th>
                                                    <th>Email</th>

                                                    <th>Job Title</th>
                                                    <th>Job Post</th>
                                                    <th>Description</th>
                                                    <th>Remark</th>
                                                    <th>Salary</th>
                                                    <th>Contact</th>
                                                    <th>Industury</th>
                                                    <th></th>

                                                </tr>
                                            </thead>
                                            <tbody id="tbody_companylist">
                                                <%
                                                   
                                                    String sql="";
                                            if(request.getParameter("compName")!=null){
                                                sql= "select  jobpost.*,company_reg.*,job_type_tbl.* from  jobpost inner join company_reg on company_reg.UserName=jobpost.CompanyId  inner join job_type_tbl on job_type_tbl.TypeId=jobpost.JobTypeId where jobpost.CompanyId='"+request.getParameter("compName")+"'";
                                                
                                            }else if(request.getParameter("locName")!=null){
                                                sql= "select  jobpost.*,company_reg.*,job_type_tbl.* from  jobpost inner join company_reg on company_reg.UserName=jobpost.CompanyId  inner join job_type_tbl on job_type_tbl.TypeId=jobpost.JobTypeId where jobpost.JobLocationId='"+request.getParameter("locName")+"'";
                                            }
                                            else{        
                                                sql= "select  jobpost.*,company_reg.*,job_type_tbl.* from  jobpost inner join company_reg on company_reg.UserName=jobpost.CompanyId  inner join job_type_tbl on job_type_tbl.TypeId=jobpost.JobTypeId";
                                            }
                                            ResultSet rs = db.SelectQuery(sql);
                                            while (rs.next()) {
                                                %>
                                                <tr>
                                                    <td><%= rs.getString("companyName")%></td>
                                                    <td><%= rs.getString("email")%></td>
                                                    <td><%= rs.getString("jobTitle")%></td>
                                                    <td><%= rs.getString("jobTypeId")%></td>
                                                    <td><%= rs.getString("jobDescription")%></td>
                                                    <td><%= rs.getString("remark")%></td>
                                                    <td><%= rs.getString("salary")%></td>
                                                    <td><%= rs.getString("contact")%></td>
                                                    <td><%= rs.getString("industry")%></td>

                                                    <td><a href="" onclick="applyJob(<%= rs.getString("jobPostId")%>)">Apply </a></td>
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

