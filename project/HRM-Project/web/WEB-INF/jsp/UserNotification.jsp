<%-- 
    Document   : UserNotification
    Created on : Nov 21, 2018, 12:34:20 PM
    Author     : minusbug
--%>

<%@ include file="inc/header.jsp" %>  
<%@page import="java.sql.ResultSet"%>
<%@page import="LiibraryFunction.DBFunctions"%>

<%@ include file="inc/top_candidate.jsp"%>
<div class="container-fluid page-body-wrapper">
    <div id="settings-trigger"><i class="mdi mdi-format-color-fill"></i></div>

    <%@ include file="inc/candidate_sidebar.jsp"%> 
    <div class="main-panel">        
        <div class="content-wrapper">
            <div class="page-header">
                <h3 class="page-title">
                    Customer Notification
                </h3>

            </div>
            <div class="row">
                <%
                    DBFunctions db = new DBFunctions();
                    String CompanyId = request.getParameter("Username");
                    String sql = "SELECT * FROM `notification_tbl` where ReceiverId='" + request.getParameter("uname") + "'";
                    ResultSet rs = db.SelectQuery(sql);
                    while (rs.next()) {


                %>
                <div class="col-12 grid-margin">
                        <div class="card">
                            <div class="card-body">
                                <h4 class="card-title text-primary"><%= rs.getString("NotificationTitle")%></h4>
                                <p><%= rs.getString("NotificationDescription")%></p>
                               
                            </div>
                        </div>
                    </div>
               
                            <%
                                }
                                %>
            </div>
        </div>
    </div>
</div>
<%@ include file="inc/candidatefooter.jsp" %> 