var baseUrl = "http://localhost:8080/HRM-Project/";
function company_registration() {
    var username = $("#txtUserName").val();
    var email = $("#txtEmail").val();
    var country = $("#selCountry").val();
    var password = $("#txtPassword").val();
    var isValid = true;
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
        var url = baseUrl + "companyapi/company_registration?Username=" + username + "&Email=" + email + "&Country=" + country + "&Password=" + password
        $.ajax({url: url, success: function (data) {
                if (data == "success") {
                    window.location.href = "login"
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
    var city = $("#txtCity").val();
    var state = $("#txtState").val();
    var postcode = $("#txtPostCode").val();
    var contact = $("#txtContact").val();
    var secondarycontact = $("#txtSecondaryContact").val();
    var companywebsite = $("#txtWebsite").val();
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
    if ((secondarycontact.length > 12) || (!secondarycontact.isNaN)) {
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
        var url = baseUrl + "companyapi/company_profile?CompanyName=" + companyname + "&EstablishmentDate=" + establishementdate + "&City=" + city + "&State=" + state + "&PostCode=" + postcode + "&Contact=" + contact + "&SecondaryContact=" + secondarycontact + "&CompanyWebsite=" + companywebsite
        $.ajax({url: url, success: function (data) {
                if (data == "sucess") {
                    window.location.href = "jobpost"
                } else {
                    alert("incorrect username and passsword")
                }
            }});
    }

}

function job_post() {
    var createdate = $("#txtDate").val();
    var jobname = $("#txtJobname").val();
    var salary = $("#txtSalary").val();
    var industry = $("#txtindustry").val();
    var emptype = $("#txtEmotype").val();
    var remark = $("#txtRemark").val();
    var city = $("#txtCity").val();
    var state = $("#selState").val();
    var country = $("#selCountry").val();
    var postcode = $("#txtPostCode").val();
    var contact = $("#txtContact").val();
    var secondarycontact = $("#txtSecondaryContact").val();
    var jobdescripation = $("#txtJobdescription").val();
    var isValid = true;

    if (isValid) {
        //// var url = baseUrl + "companyapi/jobpost?CompanyName=" + createdate + "&EstablishmentDate=" + establishementdate + "&City=" + city + "&State=" + state + "&PostCode=" + postcode + "&Contact=" + contact + "&SecondaryContact=" + secondarycontact + "&CompanyWebsite=" + companywebsite
        $.ajax({url: url, success: function (data) {
                if (data == "sucess") {
                    window.location.href = "company_profile"
                } else {
                    alert("incorrect username and passsword")
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
                if (data == "sucess") {
                    window.location.href = "company_profile"
                } else {
                    alert("incorrect username and passsword")
                }
            }});
    }

}
