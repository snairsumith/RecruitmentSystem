/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
var baseUrl = "http://localhost:8080/HRM-Project/";
function login() {
    var username = $("#txtEmail").val();
    var password = $("#txtPassword").val();
    var role = $("#selrole").val();
    var url = baseUrl + "userapi/userlogin?username=" + username + "&password=" + password + "&role=" + role
    $.ajax({url: url, success: function (data) {
            alert(data)
            if (data != "fail") {
                if (data == 1) {
                    window.location.href = "Candidate/candidate_profile"
                } else if (data == 2) {
                    window.location.href = "company/company_profile"
                } else if (data == 3) {
                    window.location.href = "Admin/approve_company "
                }
            } else {
                alert("incorrect username or password")
            }

        }});

}
function user_profile_update() {
    var Firstname = $("#txtFirstName").val();
    var Lastname = $("#txtLastName").val();
    var Gender = $("#selGender").val();
    var DateofBirth = $("#txtDateofBirth").val();
    var Home = $("#txtHome").val();
    var State = $("#txtState").val();
    var City = $("#txtCity").val();
    var PostCode = $("#txtPostCode").val();
    var Contact = $("#txtContact").val();
    var HigherQualification = $("#txtHigherQualification").val();
    var Mark = $("#txtMark").val();
    var University = $("#txtUniversity").val();
    var Experience = $("#txtYearofExperience").val();
    var ProfileNotification= document.getElementById("chkProfile").checked;
    var EmailNotification= document.getElementById("chkEmail").checked;
   
    var isValid = true;
    
        
    if (Firstname.isNaN) {
        $("#err_fname").text("Enter valid Name");
        isValid = false;
    } else {
        $("#err_fname").text("");
        isValid = true;
    }
    if (Firstname=="") {
        $("#err_fn").text("Enter First Name");
        isValid = false;
    } else {
        $("#err_fn").text("");
        isValid = true;
    }
    if (Lastname.isNaN) {
        $("#err_lname").text("Enter valid Name");
        isValid = false;
    } else {
        $("#err_lname").text("");
        isValid = true;
    }
    if (Lastname=="") {
        $("#err_ln").text("Enter Last Name");
        isValid = false;
    } else {
        $("#err_ln").text("");
        isValid = true;
    }
    if (DateofBirth == "") {
        $("#err_DOB").text("Date of Birth required");
        isValid = false;
    } else {
        $("#err_DOB").text("");
        isValid = true;
    }
    if (Home == "") {
        $("#err_home").text("Enter Home Adress");
        isValid = false;
    } else {
        $("#err_home").text("");
        isValid = true;
    }
    if (State == "") {
        $("#err_state").text("State required");
        isValid = false;
    } else {
        $("#err_state").text("");
        isValid = true;
    }
    if (City== "") {
        $("#err_city").text("City required");
        isValid = false;
    } else {
        $("#err_city").text("");
        isValid = true;
    }

    if (PostCode=="") {
        $("#err_postcode").text("PostCode Required ");
        isValid = false;
    } else {
        $("#err_postcode").text("");
        isValid = true;
    }
    if (Contact=="") {
        $("#err_con").text("blank");
        isValid = false;
    } else {
        $("#err_con").text("");
        isValid = true;
    }
    if (Contact.length>12) {
        $("#err_contact").text("length");
        isValid = false;
    } else {
        $("#err_contact").text("");
        isValid = true;
    }
    if (!Contact.isNaN) {
        $("#err_c").text("nan");
        isValid = false;
    } else {
        $("#err_c").text("");
        isValid = true;
    }
    if (HigherQualification=="") {
        $("#err_HQ").text("Higher Qualification Required");
        isValid = false;
    } else {
        $("#err_HQ").text("");
        isValid = true;
    }
    if (Mark=="") {
        $("#err_mark").text("Higher Qualification Required");
        isValid = false;
    } else {
        $("#err_mark").text("");
        isValid = true;
    }
    if (University=="") {
        $("#err_university").text("University Required");
        isValid = false;
    } else {
        $("#err_university").text("");
        isValid = true;
    }
    if (isValid) {
        var url = baseUrl + "userapi/user_profile_updation?FirstName=" + Firstname + "&LastName=" + Lastname + "&Gender=" + Gender + "&DateofBirth=" + DateofBirth + "&Home=" + Home + "&State=" + State + "&City=" + City + "&PostCode="+ PostCode +"&Contact=" + Contact + "&Experience=" + Experience + "&HigherQualification=" + HigherQualification + "&Mark=" + Mark + "&University=" + University + "&ProfileNotification=" + ProfileNotification + "&EmailNotification=" + EmailNotification
        $.ajax({url: url, success: function (data) {
                if (data == "sucess") {
                    window.location.href = "uploads"
                } else {
                    alert("incorrect username and passsword")
                }
            }});
    } else {
        // alert("Please Fill the blank filed");
    }

}
function user_reg() {
    var username = $("#txtUserName").val();
    var email = $("#txtEmail").val();
    var country = $("#selCountry").val();
    var password = $("#txtPassword").val();
    var isValid = true;
    if (username == "") {
        $("#err_username").text("username required");
        isValid = false;
    } else {
        $("#err_username").text("");
        isValid = true;
    }
    if (country == "Country") {
        $("#err_country").text("Country required");
        isValid = false;
    } else {
        $("#err_country").text("");
        isValid = true;
    }

    if (password.length < 8) {
        $("#err_password").text("minimum 8 charecters needed ");
        isValid = false;
    } else {
        $("#err_password").text("");
        isValid = true;
    }

    if (!emailValidation(email)) {
        $("#err_email").text("email not valid required");
        isValid = false;
    } else {
        $("#err_email").text("");
        isValid = true;
    }



    if (isValid) {
        var url = baseUrl + "userapi/userregistration?Username=" + username + "&Email=" + email + "&Country=" + country + "&Password=" + password

        $.ajax({url: url, success: function (data) {
                if (data == "sucess") {
                    window.location.href = "login"
                } else {
                    alert("incorrect username and passsword")
                }
            }});
    } else {
        // alert("Please Fill the blank filed");
    }
}
function emailValidation(email) {
    var regex = /^([a-zA-Z0-9_.+-])+\@(([a-zA-Z0-9-])+\.)+([a-zA-Z0-9]{2,4})+$/;
    return regex.test(email);
}


