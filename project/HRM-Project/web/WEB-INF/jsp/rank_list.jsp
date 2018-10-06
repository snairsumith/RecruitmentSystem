<%-- 
    Document   : rank_list
    Created on : Oct 5, 2018, 12:14:23 PM
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
                                Rank List
                            </h3>
                            
                        </div>
                        <!--<div class="row">
                            
                            <div class="col-lg-12 grid-margin stretch-card">
                                <div class="card">
                                    <div class="card-body">
                                        
                                        
                                        <div class="table-responsive">
                                            <table class="table table-striped">
                                                <thead>
                                                    <tr>
                                                       <div class="form-group">
                      <label for="exampleInputName1">Company Name</label>
                      <input type="text" class="form-control" id="exampleInputName1" placeholder="Company Name">
                    </div>
                    <div class="form-group">
                      <label for="exampleInputName1">Exam Name</label>
                      <input type="text" class="form-control" id="exampleInputName1" placeholder="Exam Name">
                    </div>
                                                        <th>
                                                            Candidate Name
                                                        </th>
                                                       <th>
                                                            Mark
                                                        </th>
                                                        <th>
                                                            Rank
                                                        </th>
                                                         
                                                        
                                                        
                                                    </tr>
                                                    
                                                </thead>
                                                <tbody>

                                                </tbody>
                                            </table>
                                            
                                        </div>
                                        
                                    </div>
                                </div>
                            </div>
                            
                        </div>-->
                        <div class="col-md-8 d-flex align-items-stretch">
              <div class="row flex-grow-1 w-100">
                <div class="col-12 grid-margin stretch-card">
                  <div class="card">
                    <div class="card-body">
                      <h4 class="card-title">Candidate Rank List</h4>
                      <div class="table-responsive">
                        <table class="table">
                          <thead>
                            <tr>
                              <th>
                                Select
                              </th>
                              <th>
                                Candidate Name
                              </th>
                              <th>
                                Mark
                              </th>
                              <th>
                                Rank
                              </th>
                              
                              <th>
                                Eligibility
                              </th>
                              <th>
                                Email
                              </th>
                            </tr>
                          </thead>
                          <tbody>
                            <tr>
                              <td>
                                <div class="form-check">
                                  <label class="form-check-label">
                                    <input type="checkbox" class="form-check-input">
                                  <i class="input-helper"></i></label>
                                </div>
                              </td>
                              <td>
                                <img src="images/faces/face12.jpg" alt="image" class="img-sm rounded-circle mr-2">
                                Gary Edison
                              </td>
                              <td>
                                80363477
                              </td>
                              <td>
                                Development
                              </td>
                              <td>
                                <label class="badge badge-outline-success">Accepted</label>
                              </td>
                            </tr>
                            <tr>
                              <td>
                                <div class="form-check">
                                  <label class="form-check-label">
                                    <input type="checkbox" class="form-check-input">
                                  <i class="input-helper"></i></label>
                                </div>
                              </td>
                              <td>
                                <img src="images/faces/face1.jpg" alt="image" class="img-sm rounded-circle mr-2">
                                Watt Mark
                              </td>
                              <td>
                                80363477
                              </td>
                              <td>
                                Data analysis
                              </td>
                              <td>
                                <label class="badge badge-outline-danger">Rejected</label>
                              </td>
                            </tr>
                            <tr>
                              <td>
                                <div class="form-check">
                                  <label class="form-check-label">
                                    <input type="checkbox" class="form-check-input" checked="">
                                  <i class="input-helper"></i></label>
                                </div>
                              </td>
                              <td>
                                <img src="images/faces/face12.jpg" alt="image" class="img-sm rounded-circle mr-2">
                                James Disney
                              </td>
                              <td>
                                80363477
                              </td>
                              <td>
                                Designing
                              </td>
                              <td>
                                <label class="badge badge-outline-warning">On hold</label>
                              </td>
                            </tr>
                            <tr>
                              <td>
                                <div class="form-check">
                                  <label class="form-check-label">
                                    <input type="checkbox" class="form-check-input">
                                  <i class="input-helper"></i></label>
                                </div>
                              </td>
                              <td>
                                <img src="images/faces/face2.jpg" alt="image" class="img-sm rounded-circle mr-2">
                                Genelia Perkins
                              </td>
                              <td>
                                80363477
                              </td>
                              <td>
                                Testing
                              </td>
                              <td>
                                <label class="badge badge-outline-success">Accepted</label>
                              </td>
                            </tr>
                            <tr>
                              <td>
                                <div class="form-check">
                                  <label class="form-check-label">
                                    <input type="checkbox" class="form-check-input">
                                  <i class="input-helper"></i></label>
                                </div>
                              </td>
                              <td>
                                <img src="images/faces/face9.jpg" alt="image" class="img-sm rounded-circle mr-2">
                                Jay Morgan
                              </td>
                              <td>
                                80363477
                              </td>
                              <td>
                                Development
                              </td>
                              <td>
                                <label class="badge badge-outline-warning">On hold</label>
                              </td>
                            </tr>
                          </tbody>
                        </table>
                      </div>
                    </div>
                  </div>
                </div>
                
                
              </div>
            </div>
                    </div>
                    <!-- content-wrapper ends -->
                    <!-- partial:../../partials/_footer.html -->
                   <%@ include file="inc/companyfooter.jsp"%> 
</html>


