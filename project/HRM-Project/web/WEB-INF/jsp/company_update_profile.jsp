<%@ include file="inc/header.jsp" %>  


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
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group row">
                                                        <label class="col-sm-3 col-form-label">Establishment Date</label>
                                                        <div class="col-sm-9">
                                                            <input class="form-control" placeholder="dd/mm/yyyy" id="txtEstablishmentDate"/>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            

                                            <p class="card-description">
                                                Address
                                            </p>
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <div class="form-group row">
                                                        <label class="col-sm-3 col-form-label">City</label>
                                                        <div class="col-sm-9">
                                                            <input type="text" class="form-control" id="txtAddress"/>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group row">
                                                        <label class="col-sm-3 col-form-label">State</label>
                                                        <div class="col-sm-9">
                                                            <input type="text" class="form-control" id="txtState"/>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <div class="form-group row">
                                                        <label class="col-sm-3 col-form-label">Country</label>
                                                        <div class="col-sm-9">
                                                            <select class="form-control" id="selCountry">
                                                                <option>America</option>
                                                                <option>Italy</option>
                                                                <option>Russia</option>
                                                                <option>Britain</option>
                                                            </select>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group row">
                                                        <label class="col-sm-3 col-form-label">Postcode</label>
                                                        <div class="col-sm-9">
                                                            <input type="text" class="form-control" id="txtPostCode" />
                                                        </div>
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
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group row">
                                                        <label class="col-sm-3 col-form-label">Secondary Contact</label>
                                                        <div class="col-sm-9">
                                                            <input type="text" class="form-control" id="txtSecondaryContact"/>
                                                        </div>
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
                                            <input type="text" class="form-control mb-2 mr-sm-2" id="txtName" placeholder="Jane Doe">

                                            <label class="sr-only" for="inlineFormInputGroupUsername2">Username</label>
                                            <div class="input-group mb-2 mr-sm-2">
                                                <div class="input-group-prepend">
                                                    <div class="input-group-text">@</div>
                                                </div>
                                                <input type="text" class="form-control" id="txtUserName" placeholder="Username">
                                            </div>
                                            <div class="form-check mx-sm-2">
                                                <label class="form-check-label">
                                                    <input type="checkbox" class="form-check-input" checked>

                                                </label>
                                            </div>
                                            <div>
                                            <button type="submit" class="btn btn-gradient-primary mb-2">Update</button>
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
</html>
