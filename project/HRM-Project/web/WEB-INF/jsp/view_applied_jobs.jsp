<%-- 
    Document   : view_applied_jobs
    Created on : Sep 21, 2018, 1:24:24 PM
    Author     : Gayathri
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="LiibraryFunction.DBFunctions"%>
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
                    Applied jobs
                </h3>

            </div>
            <%
                           DBFunctions db = new DBFunctions();
                           String CompanyId=request.getParameter("uname");
                           String sql = "SELECT company_reg.CompanyName,jobpost.*,jobpost_activity.JobDeatilsFromComp,jobpost_activity.ApplyDate,jobpost_activity.JobPostId as postActivityId ,jobpost_activity.ExamActive FROM `jobpost` inner join jobpost_activity on jobpost_activity.JobId=jobpost.JobPostId inner join company_reg on company_reg.UserName=jobpost.CompanyId  where jobpost_activity.UserId='"+CompanyId+"'";
                           ResultSet rs = db.SelectQuery(sql);
                           while(rs.next()){
                                        
                                    
            %>
            <div class="col-12 grid-margin stretch-card d-none d-md-flex">
                <div class="card">
                    <div class="card-body">
                        <h4 class="card-title"><%= rs.getString("CompanyName")%></h4>

                        <div class="row">
                            <div class="col-3">
                                <ul class="nav nav-tabs nav-tabs-vertical-custom" role="tablist">
                                    <li class="nav-item">
                                        <a class="nav-link active" id="home-tab-custom" data-toggle="tab" href="#home-3<%= rs.getString("postActivityId")%>" role="tab" aria-controls="home-3" aria-selected="true">
                                            Job Description
                                        </a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" id="profile-tab-custom" data-toggle="tab" href="#profile-3<%= rs.getString("postActivityId")%>" role="tab" aria-controls="profile-3" aria-selected="false">
                                            Status And Notifications
                                        </a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" id="contact-tab-custom" data-toggle="tab" href="#contact-3<%= rs.getString("postActivityId")%>" role="tab" aria-controls="contact-3" aria-selected="false">
                                            Rank List
                                        </a>
                                    </li>
                                </ul>
                            </div>
                            <div class="col-9 col-lg-6">
                                <div class="tab-content tab-content-vertical tab-content-vertical-custom">
                                    <div class="tab-pane fade show active" id="home-3<%= rs.getString("postActivityId")%>" role="tabpanel" aria-labelledby="home-tab-custom">

                                        <h3 class="font-weight-normal"><%= rs.getString("JobTitle")%></h3>

                                        <p class="mt-4">
                                            <%= rs.getString("JobDescription")%>
                                        </p>
                                    </div>
                                    <div class="tab-pane fade" id="profile-3<%= rs.getString("postActivityId")%>" role="tabpanel" aria-labelledby="profile-tab-custom">
                                        <div class="media">

                                            <div class="media-body">
                                                <%
                                                    int Status=rs.getInt("ExamActive");
                                                    if(Status==1){
                                                %>

                                                
                                                <br>
                                                <br>
                                                <a href="examAttend?uname=<%= request.getParameter("uname") %>&jobPostId=<%= rs.getString("postActivityId")%>">Attend Exam</a>
                                                <%
                                                            }else{ %>
                                                <h1>Wait For Compnay Approvel</h1>
                                                <%
}

                                                %>

<h2>Notification</h2>
                                                <p><%= rs.getString("JobDeatilsFromComp")%></p>

                                            </div>

                                        </div>
                                    </div>
                                    <div class="tab-pane fade" id="contact-3<%= rs.getString("postActivityId")%>" role="tabpanel" aria-labelledby="contact-tab-custom">
                                        <div class="media">
                                            <div class="media-body">
                                                <h5 class="mt-0 mb-1">Result</h5>
                                                <%
                                                    int questions=0;
                                                    int answer=0;
                                                    int result=0;
                                                    int JobId=rs.getInt("postActivityId");
                                                  String sql2 = "select count(*) as Questions from exam_attend where UserId='"+CompanyId+"' and jobPostId='"+JobId+"'";
                                                    ResultSet rs2 = db.SelectQuery(sql2);
                                    if(rs2.next()){ 
                                                questions=rs2.getInt("Questions");
                                                %>
                                                <p>Total Questions : <%= questions %></p>

                                                <%}
                                                %>
                                                
                                                <%
                                                  
                                                  String sql3 = "select count(*) as Answ from exam_attend where UserId='"+CompanyId+"' and jobPostId='"+JobId+"' and Result=1";
                                                    ResultSet rs3 = db.SelectQuery(sql3);
                                    if(rs3.next()){ 
                                                answer=rs3.getInt("Answ");
                                                %>
                                                <p>Correct Answer : <%= answer %></p>

                                                <%}
                                                
                                                
                                                %>
                                            </div>
                                           
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <%
                                        
}
            %>

        </div>
        <%@ include file="inc/candidatefooter.jsp" %>
        </html>

