<%-- 
    Document   : Exam
    Created on : Nov 21, 2018, 1:10:49 PM
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
                    Exam
                </h3>

            </div>
            <div class="row">
                <%
                    DBFunctions db = new DBFunctions();
                    String CompanyId = request.getParameter("Username");
                    String sql = "SELECT * FROM `question_tbl`";
                    ResultSet rs = db.SelectQuery(sql);
                    while (rs.next()) {


                %>
                <div class="col-12 grid-margin">
                    <div class="card">
                        <div class="card-body">
                            <h4 class="card-title text-primary"><%= rs.getString("Question")%></h4>

                            <div class="d-flex align-items-start border-bottom py-4">
                                <div class="form-check my-0">
                                    <label class="form-check-label">
                                        <input type="radio" name="option" class="form-check-input">
                                        <i class="input-helper"></i></label>
                                </div>
                                <div class="flex-grow-1">
                                    <h6>
                                        <%= rs.getString("Option1")%>
                                    </h6>

                                </div>

                            </div>

                            <div class="d-flex align-items-start border-bottom py-4">
                                <div class="form-check my-0">
                                    <label class="form-check-label">
                                        <input type="radio" name="option" class="form-check-input">
                                        <i class="input-helper"></i></label>
                                </div>
                                <div class="flex-grow-1">
                                    <h6>
                                        <%= rs.getString("Option2")%>
                                    </h6>

                                </div>

                            </div>
                            <div class="d-flex align-items-start border-bottom py-4">
                                <div class="form-check my-0">
                                    <label class="form-check-label">
                                        <input type="radio" name="option" class="form-check-input">
                                        <i class="input-helper"></i></label>
                                </div>
                                <div class="flex-grow-1">
                                    <h6>
                                        <%= rs.getString("Option3")%>
                                    </h6>

                                </div>

                            </div>
                                    <button type="submit" class="btn btn-gradient-primary mr-2">Submit</button>
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
