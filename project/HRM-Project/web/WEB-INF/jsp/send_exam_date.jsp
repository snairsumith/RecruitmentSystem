<%-- 
    Document   : send_exam_date
    Created on : Sep 8, 2018, 1:59:07 PM
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
                Add Notification Date for Exam
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
                  <h4 class="card-title">Add The Details...</h4>
                  
                  <form class="forms-sample">
                    <div class="form-group">
                      <label for="exampleInputName1">Company Name</label>
                      <input type="text" class="form-control" id="txtCompanyName" placeholder="Company Name">
                    </div>
                    <div class="form-group">
                      <label for="exampleInputName1">Exam Name</label>
                      <input type="text" class="form-control" id="txtExamName" placeholder="Exam Name">
                    </div>
                    <div class="form-group">
                      <label for="exampleInputName1">Date of exam</label>
                      <input type="date" class="form-control" id="txtDateofExam" placeholder="Date of Exam">
                    </div>
                    <div class="form-group">
                      <label for="exampleInputName1">Time of exam</label>
                      <input type="text" class="form-control" id="txtTimeofExam" placeholder="Time of exam">
                    </div>
                    
                    
                    <div class="form-group">
                      <label for="exampleTextarea1">Remarks</label>
                      <textarea class="form-control" id="txtRemark" rows="4"></textarea>
                    </div>
                    <button type="button" class="btn btn-gradient-primary mr-2" onclick="send_exam_date()">Submit</button>
                    <button class="btn btn-light">Cancel</button>
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

