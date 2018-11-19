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
                                    String sql = "SELECT company_reg.CompanyName,jobpost.*,jobpost_activity.ApplyDate,jobpost_activity.JobPostId as postActivityId FROM `jobpost` inner join jobpost_activity on jobpost_activity.JobId=jobpost.JobPostId inner join company_reg on company_reg.UserName=jobpost.CompanyId  where jobpost_activity.UserId='"+CompanyId+"'";
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
                                            <img class="align-self-center mr-3 w-25 rounded" src="../../images/samples/300x300/15.jpg" alt="sample image">
                                            <div class="media-body">
                                                <p>
                                                    And until then, I can never die? I'm a thing. Fry, you can't just sit here in the dark listening to 
                                                    classical music. Is today's hectic lifestyle making you tense and impatient? Is today's hectic lifestyle 
                                                    making you tense and impatient?
                                                </p>
                                                <p>
                                                    Robot 1-X, save my friends! And Zoidberg! Aww, it's true. I've been hiding it for so long. Fry, we have a 
                                                    crate to deliver. Yes! In your face, Gandhi! Interesting. No, wait, the other thing: tedious.
                                                </p>
                                                <p>
                                                    Five hours? Aw, man! Couldn't you just get me the death penalty? Yes! In your face, Gandhi! We're rescuing 
                                                    ya. Yeah, I do that with my stupidness. With gusto.
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="tab-pane fade" id="contact-3<%= rs.getString("postActivityId")%>" role="tabpanel" aria-labelledby="contact-tab-custom">
                                        <div class="media">
                                            <div class="media-body">
                                                <h5 class="mt-0 mb-1">You've swallowed a planet!</h5>
                                                Did I mention we have comfy chairs? You hate me; you want to kill me! Well, go on! Kill me! KILL ME! I'm the Doctor, 
                                                I'm worse than everyone's aunt. *catches himself* And that is not how I'm introducing myself.
                                            </div>
                                            <img class="ml-3 w-25" src="../../images/samples/300x300/5.jpg" alt="sample image">
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

