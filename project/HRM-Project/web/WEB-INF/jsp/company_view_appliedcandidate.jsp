<%-- 
    Document   : company_view_appliedcustomer
    Created on : Sep 20, 2018, 12:48:00 PM
    Author     : HP
--%>
    <%@page import="java.sql.ResultSet"%>
<%@page import="LiibraryFunction.DBFunctions"%>
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
                    View Applied Candidate...
                </h3>

            </div>
            <div class="row">

                <div class="col-lg-12 grid-margin stretch-card">
                    <div class="card">
                        <div class="card-body">


                            <div class="table-responsive">
                                <table class="table table-striped">
                                    <thead>
                                        <tr>
                                            
                                            <th>
                                                Candidate Name
                                            </th>
                                            <th>
                                                Job Title
                                            </th>
                                            <th>
                                                Contact
                                            </th>
                                            <th>
                                                Email
                                            </th>

                                           
                                            <th>
                                                Send Exam Link
                                            </th>
                                            <th>
                                                Active Exam Link
                                            </th>
                                        </tr>
                                    </thead>
                                    <%
                      DBFunctions db = new DBFunctions();
                      String CompanyId=request.getParameter("uname");
                      String sql = "SELECT jobpost_activity.JobPostId,jobpost_activity.ExamActive,jobpost_activity.IsNotificationSend,user_reg.Username as User_Name,user_reg.Contact as User_Contact,user_reg.Email as User_Email,jobpost.*,company_reg.* FROM `jobpost` inner join jobpost_activity on jobpost.JobPostId=jobpost_activity.JobId inner join user_reg on user_reg.UserName=jobpost_activity.UserId inner join company_reg on jobpost.CompanyId=company_reg.UserName where company_reg.UserName='"+request.getParameter("uname")+"'";
                      ResultSet rs = db.SelectQuery(sql);
                      while(rs.next()){
                                        
                                    
                                    %>
                                    <tbody>
                                    <td>
                                        <%= rs.getString("User_Name")%>
                                    </td>
                                    <td>
                                        <%= rs.getString("JobTitle")%>
                                    </td>
                                     <td>
                                        <%= rs.getString("User_Contact")%>
                                    </td>
                                    <td>
                                        <%= rs.getString("User_Contact")%>
                                    </td>
                                   
                                    <td>
                                         <% if(rs.getInt("IsNotificationSend")==0){ %>
                                        <a href="#" onclick="ExamLinkSend('<%= request.getParameter("uname") %>','<%= rs.getString("User_Name")%>',<%= rs.getString("JobPostId")%>)">Send</a>
                                         <% }else{ %>
                                          Link Send
                                           <% } %>
                                    </td>
                                  
                                    
                                    <td>
                                         <% if(rs.getInt("ExamActive")==0){ %>
                                        <a href="#" onclick="ActiveExam(<%= request.getParameter("JobPostId") %>)">Active</a>
                                         <% }else{ %>
                                          Exam Activated
                                           <% } %>
                                    </td>
                                    
                                    </tbody>
                                    <%
                                        }
                                    %>

                                </table>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>

        <%@ include file="inc/companyfooter.jsp"%> 
    </div>
</div>
