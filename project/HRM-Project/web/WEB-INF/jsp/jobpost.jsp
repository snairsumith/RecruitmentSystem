<%-- 
    Document   : jobpost
    Created on : Aug 31, 2018, 1:20:51 PM
    Author     : HP
--%>

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
                                            <input class="form-control" placeholder="dd/mm/yyyy"/>
                                        </div>
                                        <div class="form-group">
                                            <label for="exampleInputEmail3">Job Name/Role</label>
                                            <input type="text" class="form-control" id="exampleInputEmail3" placeholder="job name/role">
                                        </div>
                                        <div class="form-group">
                                            <label for="exampleInputPassword4">Salary</label>
                                            <input type="text" class="form-control" id="exampleInputPassword4" placeholder="salary">
                                        </div>
                                        
                                        
                                       <div class="form-group">
                                            <label for="exampleInputCity1">Industry/Functional Area</label>
                                            <input type="text" class="form-control" id="exampleInputCity1" placeholder="industry/functional area">
                                        </div>
                                        <div class="form-group">
                                            <label for="exampleInputCity1">Employment Type</label>
                                            <input type="text" class="form-control" id="exampleInputCity1" placeholder="employment type">
                                        </div>
                                        <div class="form-group">
                                            <label for="exampleTextarea1">Remark</label>
                                            <textarea class="form-control" id="exampleTextarea1" rows="4"></textarea>
                                        </div>
                                         <div class="form-group row">
                                                        <label class="col-sm-3 col-form-label">Is Active</label>
                                                        <div class="col-sm-4">
                                                            <div class="form-check">
                                                                <label class="form-check-label">

                                                                    <input type="radio" class="form-check-input" name="membershipRadios" id="membershipRadios1" value="" checked="">
                                                                    Yes
                                                                    <i class="input-helper"></i></label>
                                                            </div>
                                                        </div>
                                                        <div class="col-sm-5">
                                                            <div class="form-check">
                                                                <label class="form-check-label">
                                                                    <input type="radio" class="form-check-input" name="membershipRadios" id="membershipRadios2" value="option2">
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
                                                        <label class="col-sm-3 col-form-label">City</label>
                                                        <div class="col-sm-9">
                                                            <input type="text" class="form-control" />
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group row">
                                                        <label class="col-sm-3 col-form-label">State</label>
                                                        <div class="col-sm-9">
                                                            <select class="form-control">
                                                                <option>Kerala</option>
                                                                <option>TamilNadhu</option>
                                                                <option>Karanadaka</option>
                                                                <option>Delhi</option>
                                                            </select> 

                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <div class="form-group row">
                                                        <label class="col-sm-3 col-form-label">Country</label>
                                                        <div class="col-sm-9">
                                                            <select class="form-control">
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
                                                            <input type="text" class="form-control" />
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <div class="form-group row">
                                                        <label class="col-sm-3 col-form-label">Contact</label>
                                                        <div class="col-sm-9">
                                                            <input type="text" class="form-control" />
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group row">
                                                        <label class="col-sm-3 col-form-label">Secondary Contact</label>
                                                        <div class="col-sm-9">
                                                            <input type="text" class="form-control" />
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <div class="form-group row">
                                                        <label class="col-sm-3 col-form-label">Job Description</label>
                                                        <div class="col-sm-9">
                                                            <textarea class="form-control" id="exampleTextarea1" rows="4"></textarea>
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
                  <!--<h4 class="card-title">Inline forms</h4>
                  <p class="card-description">
                    Use the <code>.form-inline</code> class to display a series of labels, form controls, and buttons on a single horizontal row
                  </p>-->
                  <form class="form-inline">
                    <!--<label class="sr-only" for="inlineFormInputName2">Name</label>
                    <input type="text" class="form-control mb-2 mr-sm-2" id="inlineFormInputName2" placeholder="Jane Doe">
                  
                    <label class="sr-only" for="inlineFormInputGroupUsername2">Username</label>
                    <div class="input-group mb-2 mr-sm-2">
                      <div class="input-group-prepend">
                        <div class="input-group-text">@</div>
                      </div>
                      <input type="text" class="form-control" id="inlineFormInputGroupUsername2" placeholder="Username">
                    </div>-->
                    <!--<div class="form-check mx-sm-2">
                      <label class="form-check-label">
                        <input type="checkbox" class="form-check-input" checked="">
                        Remember me
                      <i class="input-helper"></i></label>
                    </div>-->
                   
                    <button type="submit" class="btn btn-gradient-primary mr-2">Submit</button>
                                        <button class="btn btn-light">Cancel</button>
                  </form>
                </div>
              </div>
            </div>

                        </div>
                    </div>
                    <!-- content-wrapper ends -->
                    <!-- partial:../../partials/_footer.html -->
                    <%@ include file="inc/company_sidebar.jsp"%> 
</html>

