<%-- 
    Document   : view_applied_jobs
    Created on : Sep 21, 2018, 1:24:24 PM
    Author     : Gayathri
--%>

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
            <div class="col-12 grid-margin stretch-card d-none d-md-flex">
                <div class="card">
                    <div class="card-body">
                        <h4 class="card-title">Company Name</h4>

                        <div class="row">
                            <div class="col-3">
                                <ul class="nav nav-tabs nav-tabs-vertical-custom" role="tablist">
                                    <li class="nav-item">
                                        <a class="nav-link active" id="home-tab-custom" data-toggle="tab" href="#home-3" role="tab" aria-controls="home-3" aria-selected="true">
                                            Job Description
                                        </a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" id="profile-tab-custom" data-toggle="tab" href="#profile-3" role="tab" aria-controls="profile-3" aria-selected="false">
                                            Status And Notifications
                                        </a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" id="contact-tab-custom" data-toggle="tab" href="#contact-3" role="tab" aria-controls="contact-3" aria-selected="false">
                                            Rank List
                                        </a>
                                    </li>
                                </ul>
                            </div>
                            <div class="col-9 col-lg-6">
                                <div class="tab-content tab-content-vertical tab-content-vertical-custom">
                                    <div class="tab-pane fade show active" id="home-3" role="tabpanel" aria-labelledby="home-tab-custom">
                                        <h6 class="font-weight-normal">Profiles Of The Powerful Advertising Exec Steve Grasse</h6>
                                        <h3 class="font-weight-normal">How To Write Better Advertising Copy</h3>
                                        <div class="d-flex mt-4">
                                            <img src="/HRM-Project/resources/images/carousel/banner_8.jpg" class="w-25 h-100 rounded" alt="image"/>
                                            <img src="/HRM-Project/resources/images/carousel/banner_9.jpg" class="w-25 h-100 ml-2 rounded" alt="image"/>                              
                                        </div>
                                        <p class="mt-4">
                                            The key to victory is discipline, and that means a well made bed. You will practice until you can make 
                                            your bed in your sleep. You don't know how to do any of those. Then throw her in the laundry room, which 
                                            will hereafter be referred to as "the brig".
                                        </p>
                                    </div>
                                    <div class="tab-pane fade" id="profile-3" role="tabpanel" aria-labelledby="profile-tab-custom">
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
                                    <div class="tab-pane fade" id="contact-3" role="tabpanel" aria-labelledby="contact-tab-custom">
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

        </div>
        <%@ include file="inc/candidatefooter.jsp" %>
        </html>

