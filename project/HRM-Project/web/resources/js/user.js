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
                    window.location.href = ""
                }
            } else {
                alert("incorrect username or password")
            }

        }});

}
function user_reg() {
    var username = $("#txtUserName").val();
    var email = $("#txtEmail").val();
    var country = $("#selCountry").val();
    var password = $("#txtPassword").val();
    if (username != "" && password != "" && country != "" && email != "") {
        var url = baseUrl + "userapi/userregistration?Username=" + username + "&Email=" + email + "&Country=" + country + "&Password=" + password
        $.ajax({url: url, success: function (data) {
                if (data == "sucess") {
                    window.location.href = "login"
                } else {
                    alert("incorrect username and passsword")
                }
            }});
    } else {
        alert("Please Fill the blank filed");
    }

}


