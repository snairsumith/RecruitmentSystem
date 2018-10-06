<%-- 
    Document   : send_examlink
    Created on : Oct 5, 2018, 12:16:02 PM
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
                Exam Link
            </h3>
        
          </div>
          <div class="row">
            <div class="col-md-6 grid-margin stretch-card">
              <div class="card">
                
              </div>
            </div>
            <div class="col-md-6 grid-margin stretch-card">
              <div class="card">
               
              </div>
            </div>
            <div class="col-12 grid-margin stretch-card">
              <div class="card">
                <div class="card-body">
                  <h4 class="card-title">Add Exam link...</h4>
                  
                  <form class="forms-sample">
                    <div class="form-group">
                      <label for="exampleInputName1">Company Name</label>
                      <input type="text" class="form-control" id="exampleInputName1" placeholder="Company Name">
                    </div>
                    <div class="form-group">
                      <label for="exampleInputName1">Exam Name</label>
                      <input type="text" class="form-control" id="exampleInputName1" placeholder="Exam Name">
                    </div>
                      <div class="form-group">
                      <label for="exampleInputName1">Exam Link</label>
                      <input type="text" class="form-control" id="exampleInputName1" placeholder="Time of exam">
                    </div>
                    <div class="form-group">
                      <label for="exampleInputName1">Date of exam</label>
                      <input type="text" class="form-control" id="exampleInputName1" placeholder="Date of Exam">
                    </div>
                    <div class="form-group">
                      <label for="exampleInputName1">Time of exam</label>
                      <input type="text" class="form-control" id="exampleInputName1" placeholder="Time of exam">
                    </div>
                    
                    
                    <div class="form-group">
                      <label for="exampleTextarea1">Instructions</label>
                      <textarea class="form-control" id="exampleTextarea1" rows="4"></textarea>
                    </div>
                    <button type="submit" class="btn btn-gradient-primary mr-2">Send</button>
                    <button class="btn btn-light">Cancel</button>
                  </form>
                </div>
              </div>
            </div>
            
            
           
          </div>
        </div>
        <!-- content-wrapper ends -->
        <!-- partial:../../partials/_footer.html -->
        <%@ include file="inc/companyfooter" %> 
</html>


