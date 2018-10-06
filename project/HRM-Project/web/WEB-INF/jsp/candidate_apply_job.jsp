<%-- 
    Document   : customer_apply_job
    Created on : Sep 20, 2018, 1:52:21 PM
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
                                Modals
                            </h3>

                        </div>
                        <div class="col-12 grid-margin stretch-card d-none d-md-flex">
                            <div class="card">
                                <div class="card-body">
                                    <h4 class="card-title">Job</h4>
                                    <p class="card-description">Add class <code>.nav-tabs-vertical-custom</code> to <code>.nav</code>
                                        and <code>.tab-content-vertical-custom</code> to <code>.tab-content</code></p>
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
                                                        Location And Contact
                                                    </a>
                                                </li>
                                                <li class="nav-item">
                                                    <a class="nav-link" id="contact-tab-custom" data-toggle="tab" href="#contact-3" role="tab" aria-controls="contact-3" aria-selected="false">
                                                        Eligibility
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
                                                        <img src="../../images/samples/300x300/3.jpg" class="w-25 h-100 rounded" alt="image"/>
                                                        <img src="../../images/samples/300x300/4.jpg" class="w-25 h-100 ml-2 rounded" alt="image"/>                              
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
                        <div class="row">
                            <div class="col-12 grid-margin">
                                <div class="card">
                                    <div class="card-body">

                                        <div class="modal demo-modal">
                                            <div class="modal-dialog modal-lg">
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <h5 class="modal-title">Upload CV</h5>
                                                        <button type="button" class="close">
                                                            <span aria-hidden="true">&times;</span>
                                                        </button>
                                                    </div>
                                                    <div class="modal-body">
                                                        <div class="form-group">

                                                            <input type="file" name="img[]" class="file-upload-default" id="CV">
                                                            <div class="input-group col-xs-12">
                                                                <input type="text" class="form-control file-upload-info" disabled placeholder="Upload CV">
                                                                <span class="input-group-append">
                                                                    <button class="file-upload-browse btn btn-gradient-primary" type="button">Upload</button>
                                                                </span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="modal-footer">
                                                        <button type="button" class="btn btn-success">Apply</<button>

                                                                </div>
                                                                </div>
                                                                </div>
                                                                </div>
                                                                <!-- Dummy Modal Ends -->
                                                                <!-- Modal starts -->

                                                                <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                                                    <div class="modal-dialog modal-lg" role="document">
                                                                        <div class="modal-content">
                                                                            <div class="modal-header">
                                                                                <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
                                                                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                                                    <span aria-hidden="true">&times;</span>
                                                                                </button>
                                                                            </div>
                                                                            <div class="modal-body">
                                                                                <p>Modal body text goes here.</p>
                                                                            </div>
                                                                            <div class="modal-footer">
                                                                                <button type="button" class="btn btn-success">Submit</button>
                                                                                <button type="button" class="btn btn-light" data-dismiss="modal">Cancel</button>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <!-- Modal Ends -->
                                                                </div>
                                                                </div>
                                                                </div>

                                                                </div>
                                                                </div>
                                                                <%@ include file="inc/candidatefooter.jsp" %>
                                                                </html>

