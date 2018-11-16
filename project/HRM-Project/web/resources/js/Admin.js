/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

var baseUrl = "http://localhost:8080/HRM-Project/";
function approveRejectCompany(type,username){
    alert(type+"--"+username);
    var url = baseUrl + "companyapi/company_approve?comapnayUserName=" + username + "&type=" + type ;
        $.ajax({url: url, success: function (data) {
                if (data == "success") {
                    alert("Update Comapany Status")
                    window.location.reload();
                } else {
                    alert("error occured");
                }
            }});
}
function change_password(type,username){
    alert(type+"--"+username);
    var url = baseUrl + "companyapi/company_approve?comapnayUserName=" + username + "&type=" + type ;
        $.ajax({url: url, success: function (data) {
                if (data == "success") {
                    alert("Update Comapany Status")
                    window.location.reload();
                } else {
                    alert("error occured");
                }
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
    if (ConfirmPassword===Newpassword) {
        $("#er_cnfmpass").text("Password does not match ");
        isValid = false;
    } else {
        $("#er_cnfmpass").text("");
        isValid = true;
    }
    
    if (isValid) {
        var url = baseUrl + "companyapi/change_password?Password=" + Newpassword 
        $.ajax({url: url, success: function (data) {
                if (data == "success") {
                    alert("Passwoord Updated")
                } else {
                    alert("ERROR DETAILS")
                }
            }});
    }

}