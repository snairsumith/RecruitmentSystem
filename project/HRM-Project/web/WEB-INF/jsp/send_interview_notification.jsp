<%-- 
    Document   : send_interview_notification
    Created on : Sep 21, 2018, 12:52:04 PM
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
                Enter interview notification
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
                     
                           <input type="hidden" id="txtReciverId" value="<%= request.getParameter("ReciverId") %>"/>
                           <input type="hidden"  id="SenderId" value="<%= request.getParameter("SenderId") %>"/>
                           <input type="hidden"  id="JobActiveId" value="<%= request.getParameter("JobActiveId") %>"/>
                           
                    </div>
                    
                    <div class="form-group">
                     
                      <textarea class="form-control" id="txtdetails" rows="4"></textarea>
                    </div>
                           <button type="button" class="btn btn-gradient-primary mr-2" onclick="send_iterview_notification()">Send</button>
                    
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

