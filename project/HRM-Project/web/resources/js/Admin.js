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