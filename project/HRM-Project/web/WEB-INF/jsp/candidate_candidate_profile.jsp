    <%@page import="java.sql.ResultSet"%>
<%@page import="LiibraryFunction.DBFunctions"%>
<%@ include file="inc/header.jsp" %>  

    
    <%@ include file="inc/top_candidate.jsp"%>
    <div class="container-fluid page-body-wrapper">
        <div id="settings-trigger"><i class="mdi mdi-format-color-fill"></i></div>
                
    <%@ include file="inc/candidate_sidebar.jsp"%> 
     <%
                                    DBFunctions db = new DBFunctions();
                                    String CompanyId=request.getParameter("uname");
                                    String sql = "SELECT * FROM `user_reg` where UserName='"+CompanyId+"'";
                                    ResultSet rs = db.SelectQuery(sql);
                                    if(rs.next()){
                                        
                                    
                                    %>
      <!-- partial -->
      <div class="main-panel">
        <div class="content-wrapper">
          <div class="page-header">
            <h3 class="page-title">
              Profile
            </h3>
          
          </div>
          <div class="row">
            <div class="col-12">
              <div class="card">
                <div class="card-body">
                  <div class="row">
                    <div class="col-lg-4">
                      <div class="border-bottom text-center pb-4">
                        <img src="/HRM-Project/resources/images/faces/face1.jpg" alt="profile" class="img-lg rounded-circle mb-3"/>
                        <p><%= rs.getString("FirstName")%> </p>
                        <div class="d-flex justify-content-between">
                          <button class="btn btn-gradient-success">Hire Me</button>
                          
                        </div>
                      </div>
                      <div class="border-bottom py-4">
                        <p>Skills</p>
                        <div>
                          <label class="badge badge-outline-dark">c</label>
                          <label class="badge badge-outline-dark">c++</label>
                          <label class="badge badge-outline-dark">java</label>
                          <label class="badge badge-outline-dark">Graphic Design</label>
                          <label class="badge badge-outline-dark">Web Design</label>  
                        </div>                                                               
                      </div>
                      
                      <div class="py-4">
                        <p class="clearfix">
                          <span class="float-left">
                            Status
                          </span>
                          <span class="float-right text-muted">
                            Active
                          </span>
                        </p>
                        <p class="clearfix">
                          <span class="float-left">
                            Phone
                          </span>
                          <span class="float-right text-muted">
                            <%= rs.getString("Contact")%>
                          </span>
                        </p>
                        <p class="clearfix">
                          <span class="float-left">
                            Mail
                          </span>
                          <span class="float-right text-muted">
                            <%= rs.getString("Email")%>
                          </span>
                        </p>
                        
                      </div>
                    
                    </div>
                    <div class="col-lg-8">
                      <div class="d-flex justify-content-between">
                        <div>
                          <h3><%= rs.getString("FirstName")%>  <%= rs.getString("LastName")%> </h3>
                         <div class="d-flex align-items-center">
                            <h5 class="mb-0 mr-2 text-muted"><%= rs.getString("Country")%>,<%= rs.getString("City")%></h5>
                                                     </div>
                        </div>
                        <div>
                          <button class="btn btn-outline-secondary btn-icon">
                            <i class="mdi mdi-comment-processing"></i>
                          </button>
                          <button class="btn btn-gradient-primary">Request</button>
                        </div>
                      </div>
                      <div class="mt-4 py-2 border-top border-bottom">
                        <ul class="nav profile-navbar">
                          <li class="nav-item">
                            <a class="nav-link" href="#">
                              <i class="mdi mdi-account-outline"></i>
                              CV
                            </a>
                          </li>
                          <li class="nav-item">
                            <a class="nav-link active" href="#">
                              <i class="mdi mdi-newspaper"></i>
                              Resume
                            </a>
                          </li>
                          <li class="nav-item">
                            <a class="nav-link" href="#">
                              <i class="mdi mdi-calendar"></i>
                              ID_proof
                            </a>
                          </li>
                          <li class="nav-item">
                            <a class="nav-link" href="#">
                              <i class="mdi mdi-attachment"></i>
                              MarkList
                            </a>
                          </li>
                        </ul>
                      </div>
                      <div class="profile-feed">
                        <div class="d-flex align-items-start profile-feed-item">
                          <img src="../../images/faces/face13.jpg" alt="profile" class="img-sm rounded-circle"/>
                          <div class="ml-4">
                            <h6>
                              cv
                              <small class="ml-4 text-muted"><i class="mdi mdi-clock mr-1"></i>10 hours</small>
                            </h6>
                            <!--<p>
                              There is no better advertisement campaign that is low cost and also successful at the same time.
                            </p>-->
                            <p class="small text-muted mt-2 mb-0">
                              <span>
                                <i class="mdi mdi-star mr-1"></i>4
                              </span>
                              <span class="ml-2">
                                <i class="mdi mdi-comment mr-1"></i>11
                              </span>
                              <span class="ml-2">
                                <i class="mdi mdi-reply"></i>
                              </span>
                            </p>
                          </div>
                        </div>
                        <div class="d-flex align-items-start profile-feed-item">
                          <img src="../../images/faces/face16.jpg" alt="profile" class="img-sm rounded-circle"/>
                          <div class="ml-4">
                            <h6>
                             Resume
                              <small class="ml-4 text-muted"><i class="mdi mdi-clock mr-1"></i>10 hours</small>
                            </h6>
                            <img src="../../images/samples/1280x768/12.jpg" alt="sample" class="rounded mw-100"/>                            
                            <p class="small text-muted mt-2 mb-0">
                              <span>
                                <i class="mdi mdi-star mr-1"></i>4
                              </span>
                              <span class="ml-2">
                                <i class="mdi mdi-comment mr-1"></i>11
                              </span>
                              <span class="ml-2">
                                <i class="mdi mdi-reply"></i>
                              </span>
                            </p>
                          </div>
                        </div>
                        <div class="d-flex align-items-start profile-feed-item">
                          <img src="../../images/faces/face19.jpg" alt="profile" class="img-sm rounded-circle"/>
                          <div class="ml-4">
                            <h6>
                             Marklist
                              <small class="ml-4 text-muted"><i class="mdi mdi-clock mr-1"></i>10 hours</small>
                            </h6>
                           <!-- <p>
                              When I first got into the online advertising business, I was looking for the magical combination 
                              that would put my website into the top search engine rankings
                            </p>-->
                            <img src="../../images/samples/1280x768/5.jpg" alt="sample" class="rounded mw-100"/>                                                        
                            <p class="small text-muted mt-2 mb-0">
                              <span>
                                <i class="mdi mdi-star mr-1"></i>4
                              </span>
                              <span class="ml-2">
                                <i class="mdi mdi-comment mr-1"></i>11
                              </span>
                              <span class="ml-2">
                                <i class="mdi mdi-reply"></i>
                              </span>
                            </p>
                          </div>
                        </div>
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
        <%@ include file="inc/candidatefooter.jsp"%> 

