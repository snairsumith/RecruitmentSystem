<%-- 
    Document   : customer_profile
    Created on : Aug 30, 2018, 9:22:47 PM
    Author     : Gayathri
--%>

<%@ include file="inc/header.jsp" %>  

    
    <%@ include file="inc/top_candidate.jsp"%>
    <div class="container-fluid page-body-wrapper">
        <div id="settings-trigger"><i class="mdi mdi-format-color-fill"></i></div>
                
    <%@ include file="inc/candidate_sidebar.jsp"%> 
                <!-- partial -->
                <div class="main-panel">        
                    <div class="content-wrapper">
                        <div class="page-header">
                            <h3 class="page-title">
                                Customer Profile
                            </h3>
                            
                        </div>
                        <div class="row">
                            <div class="col-12 grid-margin">
                                <div class="card">
                                    <div class="card-body">
                                        <h4 class="card-title">Personal info</h4>
                                        <form class="form-sample">
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <div class="form-group row">
                                                        <label class="col-sm-3 col-form-label">First Name</label>
                                                        <div class="col-sm-9">
                                                            <input type="text" class="form-control" id="txtFirstName"/>
                                                            <label id="err_fname" class="text-danger"></label>
                                                            <label id="err_fn" class="text-danger"></label>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group row">
                                                        <label class="col-sm-3 col-form-label">Last Name</label>
                                                        <div class="col-sm-9">
                                                            <input type="text" class="form-control" id="txtLastName"/>
                                                            <label id="err_lname" class="text-danger"></label>
                                                            <label id="err_ln" class="text-danger"></label>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <div class="form-group row">
                                                        <label class="col-sm-3 col-form-label">Gender</label>
                                                        <div class="col-sm-9">
                                                            <select class="form-control" id="selGender">
                                                                <option>Male</option>
                                                                <option>Female</option>
                                                            </select>
                                                            
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group row">
                                                        <label class="col-sm-3 col-form-label">Date of Birth</label>
                                                        <div class="col-sm-9">
                                                            <input type="date" class="form-control" placeholder="dd/mm/yyyy" id="txtDateofBirth"/>
                                                            <label id="err_DOB" class="text-danger"></label>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">


                                            </div>
                                            <p class="card-description">
                                                Address
                                            </p>
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <div class="form-group row">
                                                        <label class="col-sm-3 col-form-label">Home</label>
                                                        <div class="col-sm-9">
                                                            <input type="text" class="form-control"id="txtHome" />
                                                            <label id="err_home" class="text-danger"></label>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group row">
                                                        <label class="col-sm-3 col-form-label">State</label>
                                                        <div class="col-sm-9">
                                                            <input type="text" class="form-control" id="txtState" />
                                                            <label id="err_state" class="text-danger"></label>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <div class="form-group row">
                                                        <label class="col-sm-3 col-form-label">City</label>
                                                        <div class="col-sm-9">
                                                            <input type="text" class="form-control" id="txtCity"/>
                                                            <label id="err_city" class="text-danger"></label>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group row">
                                                        <label class="col-sm-3 col-form-label">Postcode</label>
                                                        <div class="col-sm-9">
                                                            <input type="text" class="form-control" id="txtPostCode"/>
                                                            <label id="err_postcode" class="text-danger"></label>
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
                                                            <label id="err_country" class="text-danger"></label>
                                                        </div>
                                                    </div>    
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group row">
                                                        <label class="col-sm-3 col-form-label">Contact</label>
                                                        <div class="col-sm-9">
                                                            <input type="text" class="form-control" id="txtContact"/>
                                                            <label id="err_contact" class="text-danger"></label>
                                                            <label id="err_con" class="text-danger"></label>
                                                            <label id="err_c" class="text-danger"></label>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6 grid-margin stretch-card">
                                <div class="card">
                                    <div class="card-body">
                                        <h4 class="card-title">Education And Qualification</h4>
                                        
                                        <form class="forms-sample">
                                            <div class="form-group">
                                                <label>Higher Qualification</label>
                                                <input type="text" class="form-control" id="txtHigherQualification" />
                                                <label id="err_HQ" class="text-danger"></label>
                                            </div>
                                            <div class="form-group">
                                                <label>Mark</label>
                                                <input type="text" class="form-control" id="txtMark"/>
                                                <label id="err_mark" class="text-danger"></label>
                                            </div>
                                            <div class="form-group">
                                                <label>University</label>
                                                <input type="text" class="form-control" id="txtUniversity"/>
                                                <label id="err_university" class="text-danger"></label>
                                            </div>
                                           
                                        </form>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6 grid-margin stretch-card">
                    <div class="card">
                        <div class="card-body">
                            <h4 class="card-title">Notification</h4>
                            <form class="forms-sample">
                                 <div class="form-group row">

                                                <div class="col-sm-4">
                                                    <div class="form-check">
                                                        <label class="form-check-label">
                                                            <input type="radio" class="form-check-input" name="membershipRadios" id="radExperience" value="1" checked="">
                                                            Fresher
                                                            <i class="input-helper"></i></label>
                                                    </div>
                                                </div>
                                                <div class="col-sm-5">
                                                    <div class="form-check">
                                                        <label class="form-check-label">
                                                            <input type="radio" class="form-check-input" name="membershipRadios" id="radExperience" value="2">
                                                            Experienced
                                                            <i class="input-helper"></i></label>
                                                            
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label id="lblexp" >Year of Experience</label>
                                                <input type="text" class="form-control" id="txtYearofExperience" value="0"/>
                                            </div>
                                <div class="form-group">
                                    <div class="form-check">
                                        <label class="form-check-label">
                                            <input type="checkbox" class="form-check-input" id="chkProfile" value="1">
                                            Profile
                                            <i class="input-helper"></i></label>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="form-check">
                                        <label class="form-check-label">
                                            <input type="checkbox" class="form-check-input" checked="" id="chkEmail">
                                            Email
                                            <i class="input-helper"></i></label>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <button type="button" class="btn btn-gradient-primary mb-2"onclick="user_profile_update()">Update</button>
                                </div>

                            </form>
                        </div>
                    </div>
                </div>


                        </div>
                    </div>
                   <%@ include file="inc/candidatefooter.jsp" %> 
</html>

