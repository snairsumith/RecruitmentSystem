var baseUrl = "http://localhost:8080/HRM-Project/";
function company_registration() {
    var username = $("#txtUserName").val();
    var email = $("#txtEmail").val();
    var country = $("#selCountry").val();
    var password = $("#txtPassword").val();
    var name=$("#txtName").val();
    var isValid = true;
    
    if (name == "") {
        $("#err_name").text("Username required");
        isValid = false;
    } else {
        $("#err_name").text("");
        isValid = true;
    }
    if (username == "") {
        $("#err_username").text("Username required");
        isValid = false;
    } else {
        $("#err_username").text("");
        isValid = true;
    }
    if (!emailValidation(email)) {
        $("#err_email").text("Email not valid required");
        isValid = false;
    } else {
        $("#err_email").text("");
        isValid = true;
    }

    if (country == "Country") {
        $("#err_country").text("Country required");
        isValid = false;
    } else {
        $("#err_country").text("");
        isValid = true;
    }
    if (password == "") {
        $("#err_password").text("Password required");
        isValid = false;
    } else {
        $("#err_password").text("");
        isValid = true;
    }

    if (isValid) {
        var url = baseUrl + "companyapi/company_registration?Username=" + username + "&Email=" + email + "&Country=" + country + "&Password=" + password+"&name="+name
        $.ajax({url: url, success: function (data) {
                if (data == "success") {
                    alert("Registration Sucessfull");
                    window.location.href = "http://localhost:8080/HRM-Project/login"
                } else {
                    alert("incorrect username and passsword")
                }
            }});
    }

}

function emailValidation(email) {
    var regex = /^([a-zA-Z0-9_.+-])+\@(([a-zA-Z0-9-])+\.)+([a-zA-Z0-9]{2,4})+$/;
    return regex.test(email);
}

function company_profile() {
    var companyname = $("#txtCompanyName").val();
    var establishementdate = $("#txtEstablishmentDate").val();
    var city = $("#selCity").val();
    var country = $("#selCountry").val();
    var state = $("#selState").val();
    var postcode = $("#txtPostCode").val();
    var contact = $("#txtContact").val();
    var secondarycontact = $("#txtSecondaryContact").val();
    var companywebsite = $("#txtUserName").val();
     var username = localStorage.getItem("username");
    var isValid = true;
    if (companyname == "") {
        $("#err_companyname").text("Companyname required");
        isValid = false;
    } else {
        $("#err_companyname").text("");
        isValid = true;
    }
    if (establishementdate == "") {
        $("#err_establishementdate").text("Establishementdate required");
        isValid = false;
    } else {
        $("#err_establishementdate").text("");
        isValid = true;
    }
    
    if (city == "") {
        $("#err_city").text("city required");
        isValid = false;
    } else {
        $("#err_city").text("");
        isValid = true;
    }
    if (country == "") {
        $("#err_country").text("city required");
        isValid = false;
    } else {
        $("#err_country").text("");
        isValid = true;
    }
    if (state == "") {
        $("#err_state").text("State required");
        isValid = false;
    } else {
        $("#err_state").text("");
        isValid = true;
    }
    if (postcode == "") {
        $("#err_postcode").text("Postcode required");
        isValid = false;
    } else {
        $("#err_postcode").text("");
        isValid = true;
    }


    if (contact == "") {
        $("#err_contact").text("Contact Required ");
        isValid = false;
    } else {
        $("#err_contact").text("");
        isValid = true;
    }
    if ((contact.length > 12) || (contact.isNaN)) {
        $("#err_con").text("Enter Valid Contact Number ");
        isValid = false;
    } else {
        $("#err_con").text("");
        isValid = true;
    }

    if (secondarycontact == "") {
        $("#err_secondarycontact").text("secondarycontact Required ");
        isValid = false;
    } else {
        $("#err_secondarycontact").text("");
        isValid = true;
    }
    if ((secondarycontact.length > 12) || (secondarycontact.isNaN)) {
        $("#err_seccon").text("Enter Valid Contact Number ");
        isValid = false;
    } else {
        $("#err_seccon").text("");
        isValid = true;
    }
    if (companywebsite == "") {
        $("#err_companywebsite").text("companywebsite required");
        isValid = false;
    } else {
        $("#err_companywebsite").text("");
        isValid = true;
    }

    if (isValid) {
        var url = baseUrl + "companyapi/company_profile?CompanyName=" + companyname + "&EstablishmentDate=" + establishementdate + "&City=" + city + "&State=" + state + "&PostCode=" + postcode + "&Contact=" + contact + "&SecondaryContact=" + secondarycontact + "&CompanyWebsite=" + companywebsite + "&Username=" + username
        $.ajax({url: url, success: function (data) {
                if (data == "success") {
                    window.location.href = "jobpost?uname="+username;
                } else {
                    alert("ERROR PROFILE")
                }
            }});
    }

}

function job_post() {
    var createdate = $("#txtDate").val();
    var jobname = $("#txtJobname").val();
    var jobtitle = $("#txtJobtitle").val();
    var salary = $("#txtSalary").val();
    var industry = $("#txtindustry").val();
    var isactive=$("#rdactive").val();
    var streetadd=$("#txtStreet").val();
    var remark = $("#txtRemark").val();
    var city = $("#txtCity").val();
    
    var postcode = $("#txtPostCode").val();
    var contact = $("#txtContact").val();
    var secondarycontact = $("#txtSecondaryContact").val();
    var jobdescription = $("#txtJobdescription").val();
    var username = localStorage.getItem("username");
    var isValid = true;

    if (isValid) {
        var url = baseUrl + "companyapi/jobpost?Createddate=" + createdate + "&Jobtitle=" + jobtitle+ "&Jobpost=" + jobname + "&Salary=" + salary + "&Industry=" + industry + "&PostCode=" + postcode + "&Contact=" + contact + "&SecondaryContact=" + secondarycontact + "&Streetadd=" + streetadd + "&Remark=" + remark + "&Jobdescription=" + jobdescription+ "&City=" + city+ "&Isactive=" + isactive+ "&username=" + username+"&Isactive=1";
        $.ajax({url: url, success: function (data) {
                if (data == "sucess") {
                    window.location.href = "company_profile"
                } else {
                    alert("ERROR JOBPOST")
                }
            }});
    }

}

function send_exam_date() {
    var CompanyName = $("#txtCompanyName").val();
    var ExamName = $("#txtExamName").val();
    var DateofExam = $("#txtDateofExam").val();
    var TimeofExam = $("#txtTimeofExam").val();
    var Remark = $("#txtRemark").val();

    var isValid = true;

    if (isValid) {
        var url = baseUrl + "companyapi/send_exam_date?CompanyName=" + CompanyName + "&ExamName=" + ExamName + "&DateofExam=" + DateofExam + "&TimeofExam=" + TimeofExam + "&Remark=" + Remark
        $.ajax({url: url, success: function (data) {
                if (data == "success") {
                    window.location.href = "company_profile"
                } else {
                    alert("ERROR DETAILS")
                }
            }});
    }

}

function companyByUsername(){
    var username = localStorage.getItem("username");
    var url = baseUrl + "companyapi/company_deatils?comapnayUserName="+username;
        $.ajax({url: url, success: function (data) {
              $.each(data, function (key, val) {
                $("#txtCompanyName").val(val.companyName);
                $("#txtCity").val(val.city);
                $("#txtSecondaryContact").val(val.contact);
                $("#txtName").val(val.companyWebsite);
                $("#txteName").val(val.companyName);
                $("#txtUserName").val(val.email);
                
               
            });
            }});
    
}


function job_post() {
    var username = localStorage.getItem("username");
    var createdate = $("#txtDate").val();
    var jobname = $("#txtJobname").val();
    var jobtitle = $("#txtJobtitle").val();
    var salary = $("#txtsal").val();
    var industry = $("#txtInd").val();
    var isactive=$("#rdactive").val();
    var streetadd=$("#txtStreet").val();
    var remark = $("#txtRemark").val();
    var city = $("#selCity").val();
    
    var postcode = $("#txtPostCode").val();
    var contact = $("#txtContact").val();
    var secondarycontact = $("#txtSecondaryContact").val();
    var jobdescription = $("#txtJobdescription").val();
    var isValid = true;

    if (isValid) {
        var url = baseUrl + "companyapi/jobpost?Createdate=" + createdate + "&Jobtitle=" + jobtitle+ "&Jobpost=" + jobname + "&Salary=" + salary + "&Industry=" + industry + "&Postcode=" + postcode + "&Contact=" + contact + "&SecondaryContact=" + secondarycontact + "&streetadd=" + streetadd + "&Remark=" + remark + "&Jobdescription=" + jobdescription+ "&City=" + city+ "&userName="+username+"&JobLocationId="+city+"&Isactive=1";
        $.ajax({url: url, success: function (data) {
                if (data == "success") {
                    alert("Job Posted Sucess");
                    window.location.href = "company_profile?uname="+username;
                } else {
                    alert("ERROR JOBPOST")
                }
            }});
    }

}
function getallocation() {
    var parentid = $("#selCountry").val();
    var url = baseUrl + "/userapi/getalllocation?ParentId=" + parentid;
    $('#selState')
            .empty()
    $.ajax({url: url, success: function (result) {
            $.each(result, function (key, val) {
                $('#selState')
                        .append($("<option></option>")
                                .attr("value", val.locationId)
                                .text(val.locationName));

            });
        }});

}

function getallCity() {
    var parentid = $("#selState").val();
    var url = baseUrl + "/userapi/getalllocation?ParentId=" + parentid;
    $('#selCity')
            .empty()
    $.ajax({url: url, success: function (result) {
            $.each(result, function (key, val) {
                $('#selCity')
                        .append($("<option></option>")
                                .attr("value", val.locationId)
                                .text(val.locationName));

            });
        }});

}
function change_password() {
    var CurrentPassword = $("#txtCrntpass").val();
    var Newpassword = $("#txtnewpass").val();
    var ConfirmPassword = $("#txtcnfmpass").val();
    

    var isValid = true;
     if (CurrentPassword == "") {
        $("#err_crntpass").text("Current Password Required ");
        isValid = false;
    } else {
        $("#err_crntpass").text("");
        isValid = true;
    }
    if (Newpassword == "") {
        $("#err_newpass").text("New password Required ");
        isValid = false;
    } else {
        $("#err_newpass").text("");
        isValid = true;
    }
    if (Newpassword.length < 8) {
        $("#er_newpass").text("minimum 8 charecters needed ");
        isValid = false;
    } else {
        $("#er_newpass").text("");
        isValid = true;
    }
    if (ConfirmPassword == "") {
        $("#err_cnfmpass").text("Re-Enter New Password ");
        isValid = false;
    } else {
        $("#err_cnfmpass").text("");
        isValid = true;
    }
    if (ConfirmPassword!=Newpassword) {
        $("#er_cnfmpass").text("Password does not match ");
        isValid = false;
    } else {
        $("#er_cnfmpass").text("");
        isValid = true;
    }
    
    if (isValid) {
        var username = localStorage.getItem("username");
        var url = baseUrl + "companyapi/admin_change_password?Password=" + Newpassword +"&username="+username
        $.ajax({url: url, success: function (data) {
                if (data == "success") {
                    alert("Passwoord Updated")
                } else {
                    alert("ERROR DETAILS")
                }
            }});
    }

}
function ActiveExam(JobPostId){
      var url = baseUrl + "companyapi/activeexamlink?JobPostId=" + JobPostId
        $.ajax({url: url, success: function (data) {
                if (data == "success") {
                    alert("Exam Activated");
                    window.location.reload();
                } else {
                    alert("ERROR DETAILS")
                }
            }});
}
function ExamLinkSend(senderId,ReciverId,JobActivId){
    
   
    var Title="Exam Link";
    var Desc="Company will active link .You can acces from status page";
    var NotificationType="Exam Link";
    var url = baseUrl + "companyapi/sendNotification?Title=" + Title +"&Desc="+Desc+"&SenderId="+senderId+"&ReciverId="+ReciverId+"&Type="+NotificationType+"&ReciverType=user";
        $.ajax({url: url, success: function (data) {
                if (data == "success") {
                     window.location.href="send_interview_notification?uname=Company%201&SenderId="+senderId+"&ReciverId="+ReciverId+"&JobActiveId="+JobActivId;
                } else {
                    alert("ERROR DETAILS")
                }
            }});
    
    
}


function send_iterview_notification() {
    var S = localStorage.getItem("username");
    var details = $("#txtdetails").val();
    var PostId=$("#JobActiveId").val();
    
     var isValid = true;

    if (isValid) {
        var url = baseUrl + "companyapi/send_iterview_notification?details=" + details+ "&JobActiveId="+PostId;
        $.ajax({url: url, success: function (data) {
                if (data == "success") {
                    alert("Interview Notification Sucess");
                    window.location.href = "company_view_appliedcandidate?uname="+S;
                } else {
                    alert("ERROR JOBPOST")
                }
            }});
    }

}