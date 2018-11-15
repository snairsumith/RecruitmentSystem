<%-- 
    Document   : jobpost
    Created on : Aug 31, 2018, 1:20:51 PM
    Author     : HP
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="LiibraryFunction.DBFunctions"%>
<%@ include file="inc/header.jsp" %>  


<%@ include file="inc/top_company.jsp"%>
<div class="container-fluid page-body-wrapper">
    <div id="settings-trigger"><i class="mdi mdi-format-color-fill"></i></div>

    <%@ include file="inc/company_sidebar.jsp"%> 
    <div class="main-panel">        
        <div class="content-wrapper">
            <div class="page-header">
                <h3 class="page-title">
                    Posting Job
                </h3>

            </div>
            <div class="col-12 grid-margin stretch-card">
                <div class="card">
                    <div class="card-body">
                        <h4 class="card-title">Job Description</h4>

                        <form class="forms-sample">

                            <div class="form-group">
                                <label for="exampleInputName1">Created Date</label>
                                <input type="date" class="form-control" placeholder="dd/mm/yyyy" id="txtDate"/>
                            </div>
                            <div class="form-group">
                                <label for="exampleInputName1">Job Title</label>
                                <input type="text" class="form-control" placeholder="Type" id="txtJobtitle"/>
                            </div>

                            <div class="form-group">
                                <label for="exampleSelectGender">Job Post/Role</label>
                                <select class="form-control" id="txtJobname">
                                    <%
                                                 String sql1 = "select * from  job_type_tbl";
                                                 DBFunctions db = new DBFunctions();
                                                 ResultSet rs1 = db.SelectQuery(sql1);
                                                 while (rs1.next()) {
                                    %>
                                    <option value=<%= rs1.getString("TypeId")%>><%= rs1.getString("TypeName")%></option>
                                    <%
                                        }
                                    %>
                                </select>
                            </div>
                            <div class="form-group">
                                <label for="exampleInputName1">Sal</label>
                                <input type="text" class="form-control" placeholder="Type" id="txtsal"/>
                            </div>
                            <div class="form-group">
                                <label for="exampleInputName1">Industry/Functional Area</label>
                                <input type="text" class="form-control" placeholder="Type" id="txtInd"/>
                            </div>

                            <div class="form-group">
                                <label for="exampleTextarea1">Job Description</label>
                                <textarea class="form-control" rows="4" id="txtJobdescription"></textarea>
                            </div>
                            <div class="form-group">
                                <label for="exampleTextarea1">Remark</label>
                                <textarea class="form-control" rows="4" id="txtRemark"></textarea>
                            </div>
                            <div class="form-group row">
                                <label class="col-sm-3 col-form-label">Is Active</label>
                                <div class="col-sm-4">
                                    <div class="form-check">
                                        <label class="form-check-label">

                                            <input type="radio" class="form-check-input" name="membershipRadios" id="rdactive" value="1" checked="">
                                            Yes
                                            <i class="input-helper"></i></label>
                                    </div>
                                </div>
                                <div class="col-sm-5">
                                    <div class="form-check">
                                        <label class="form-check-label">
                                            <input type="radio" class="form-check-input" name="membershipRadios" id="rdactive" value="o">
                                            No
                                            <i class="input-helper"></i></label>
                                    </div>
                                </div>
                            </div>

                        </form>
                    </div>
                </div>
            </div>
            <div class="row">







                <div class="col-12 grid-margin">
                    <div class="card">
                        <div class="card-body">
                            <!--  <h4 class="card-title">Horizontal Two column</h4>-->
                            <form class="form-sample">

                                <div class="row">



                                </div>
                                <h5 class="card-title">Location</h5>
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group row">
                                            <label class="col-sm-3 col-form-label">Street Address</label>
                                            <div class="col-sm-9">
                                                <input type="text" class="form-control" id="txtStreet"/>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group row">
                                            <label class="col-sm-3 col-form-label">Postcode</label>
                                            <div class="col-sm-9">
                                                <input type="text" class="form-control" id="txtPostCode"/>
                                            </div>


                                        </div>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group row">
                                            <label class="col-sm-3 col-form-label">Country</label>
                                            <div class="col-sm-9">
                                                <select class="form-control" id="selCountry" onchange="getallocation()">
                                                    <option>Select District</option>
                                                    <%
                                         String sql = "select * from location where ParentId=0";
                                        
                                         ResultSet rs = db.SelectQuery(sql);
                                         while (rs.next()) {
                                                    %>
                                                    <option value=<%= rs.getString("LocationId")%>><%= rs.getString("LocationName")%></option>
                                                    <%
                                                        }
                                                    %>
                                                </select>
                                            </div>

                                            <label class="col-sm-3 col-form-label">State</label>

                                            <div class="col-sm-9">
                                                <select class="form-control" id="selState" onchange="getallCity()">
                                                    <option value="0">Select State</option>
                                                </select> 

                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group row">
                                            <label class="col-sm-3 col-form-label">Contact</label>
                                            <div class="col-sm-9">
                                                <input type="text" class="form-control" id="txtContact"/>
                                            </div>
                                            <label class="col-sm-3 col-form-label">Secondary Contact</label>
                                            <div class="col-sm-9">
                                                <input type="text" class="form-control" id="txtSecondaryContact"/>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group row">
                                            <label class="col-sm-3 col-form-label">City</label>

                                            <div class="col-sm-9">
                                                <select class="form-control" id="selCity">
                                                    <option value="0">Select City</option>
                                                </select> 

                                            </div>

                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group row">



                                        </div>
                                    </div>
                                </div>




                            </form>
                        </div>
                    </div>
                </div>
                <div class="col-12 grid-margin stretch-card">
                    <div class="card">
                        <div class="card-body">
                            <!--<h4 class="card-title">Inline forms</h4>
                            <p class="card-description">
                              Use the <code>.form-inline</code> class to display a series of labels, form controls, and buttons on a single horizontal row
                            </p>-->
                            <form class="form-inline">


                                <button type="submit" class="btn btn-gradient-primary mr-2" onclick="job_post()">Submit</button>

                            </form>
                        </div>
                    </div>
                </div>

            </div>
        </div>
        <!-- content-wrapper ends -->
        <!-- partial:../../partials/_footer.html -->
        <%@ include file="inc/companyfooter.jsp"%>
        </html>

