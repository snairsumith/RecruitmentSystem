var baseUrl="http://localhost:8080/HRM-Project/";
function company_registration() {
    var username = $("#txtUserName").val();
    var email = $("#txtEmail").val();
    var country = $("#selCountry").val();
    var password = $("#txtPassword").val();
    if (username != "" && password != "" && country != "" && email != "") {
        var url = baseUrl + "companyapi/company_registration?Username=" + username + "&Email=" + email + "&Country=" + country + "&Password=" + password
        $.ajax({url: url, success: function (data) {
                if (data == "success") {
                    window.location.href = "login"
                } else {
                    alert("incorrect username and passsword")
                }
            }});
    } else {
        alert("Please Fill the blank filed");
    }

}


