<%@ include file="inc/header.jsp" %>  
<%@page import="java.sql.ResultSet"%>
<%@page import="LiibraryFunction.DBFunctions"%>

<%@ include file="inc/top_company.jsp"%>

<div class="container-fluid page-body-wrapper">
    <div id="settings-trigger"><i class="mdi mdi-format-color-fill"></i></div>

    <%@ include file="inc/company_sidebar.jsp"%> 
                <!-- partial -->
                <div class="main-panel">        
                    <div class="content-wrapper">
                        <div class="page-header">
                            <h3 class="page-title">
                                Company Profille
                            </h3>

                        </div>
                        <div class="row">


                            <div class="col-12 grid-margin">
                                <div class="card">
                                    <div class="card-body">

                                        <form class="form-sample">
                                            <p class="card-description">

                                            </p>
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <div class="form-group row">
                                                        <label class="col-sm-3 col-form-label">Company Name</label>
                                                        <div class="col-sm-9">
                                                            <input type="text" class="form-control" id="txtCompanyName" />
                                                        </div>
                                                        <label class="text-danger" id="err_companyname"></label>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group row">
                                                        <label class="col-sm-3 col-form-label">Establishment Date</label>
                                                        <div class="col-sm-9">
                                                            <input type="date" class="form-control" placeholder="dd/mm/yyyy" id="txtEstablishmentDate"/>
                                                        </div>
                                                        <label class="text-danger" id="err_establishementdate"></label>
                                                    </div>
                                                </div>
                                            </div>
                                            

                                            <p class="card-description">
                                                Address
                                            </p>
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <div class="form-group row">
                                                        <label class="col-sm-3 col-form-label">Country</label>
                                                        <div class="col-sm-9">
                                                            <select class="form-control" id="selCountry" onchange="getallocation()">
                                                                    <option>Select Country</option>
                                                                    <%
                                                         String sql11 = "select * from location where ParentId=0";
                                         DBFunctions db = new DBFunctions();
                                                         ResultSet rs11 = db.SelectQuery(sql11);
                                                         while (rs11.next()) {
                                                                    %>
                                                                    <option value=<%= rs11.getString("LocationId")%>><%= rs11.getString("LocationName")%></option>
                                                                    <%
                                                                        }
                                                                    %>
                                                                </select>
                                                            
                                                        </div>
                                                                 <label class="text-danger" id="err_country"></label>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group row">
                                                        <label class="col-sm-3 col-form-label">State</label>
                                                        <div class="col-sm-9">
                                                            <select class="form-control" id="selState" onchange="getallCity()">
                                                                    <option value="0">Select State</option>
                                                                </select>
                                                            <label class="text-danger" id="err_state"></label>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <div class="form-group row">
                                                        <label class="col-sm-3 col-form-label">City</label>
                                                        <div class="col-sm-9">
                                                           <select class="form-control" id="selCity" onchange="getallCity()">
                                                                    <option value="0">Select City</option>
                                                                </select> 
                                                        </div>
                                                        <label class="text-danger" id="err_city"></label>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group row">
                                                        <label class="col-sm-3 col-form-label">Postcode</label>
                                                        <div class="col-sm-9">
                                                            <input type="text" class="form-control" id="txtPostCode" />
                                                        </div>
                                                        <label class="text-danger" id="err_postcode"></label>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <div class="form-group row">
                                                        <label class="col-sm-3 col-form-label">Contact</label>
                                                        <div class="col-sm-9">
                                                            <input type="text" class="form-control" id="txtContact" />
                                                        </div>
                                                        <label id="err_contact" class="text-danger"></label>
                                            <label id="err_con" class="text-danger"></label>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group row">
                                                        <label class="col-sm-3 col-form-label">Secondary Contact</label>
                                                        <div class="col-sm-9">
                                                            <input type="text" class="form-control" id="txtSecondaryContact"/>
                                                        </div>
                                                        <label id="err_secondarycontact" class="text-danger"></label>
                                            <label id="err_seccon" class="text-danger"></label>
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
                                        <h4 class="card-title">Company Website</h4>

                                        <form class="form-inline">
                                            <label class="sr-only" for="inlineFormInputName2">Name</label>
                                            <input type="text" class="form-control mb-2 mr-sm-2" id="txteName">

                                            <label class="sr-only" for="inlineFormInputGroupUsername2">Username</label>
                                            <div class="input-group mb-2 mr-sm-2">
                                                <div class="input-group-prepend">
                                                    <div class="input-group-text">@</div>
                                                </div>
                                                <input type="text" class="form-control" id="txtUserName" placeholder="Username">
                                            </div>
                                            <div class="form-check mx-sm-2">
                                                
                                            </div>
                                            <div>
                                                <a class="btn btn-gradient-primary mb-2" onclick="company_profile()">Update</a>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>
                    <!-- content-wrapper ends -->
                    <!-- partial:../../partials/_footer.html -->
                    <%@ include file="inc/companyfooter.jsp" %>
                    <script>companyByUsername();</script>
</html>
