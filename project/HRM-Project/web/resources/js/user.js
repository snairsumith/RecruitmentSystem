/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
var baseUrl="http://localhost:8080/HRM-Project/";
function login(){
    var username=$("#txtEmail").val();
    var password=$("#txtPassword").val();
    var url=baseUrl+"userapi/userlogin?username="+username+"&password="+password
    $.ajax({url:url,success: function (data) {
            if(data=="sucess"){
                window.location.href="Candidate/candidate_profile"
            }else{
                alert("incorrect username and passsword")
            }
        }});

}
function user_reg(){
    var username=$("#txtEmail").val();
    var password=$("#txtPassword").val();
    var url=baseUrl+"userapi/userlogin?username="+username+"&password="+password
    $.ajax({url:url,success: function (data) {
            if(data=="sucess"){
                window.location.href="Candidate/candidate_profile"
            }else{
                alert("incorrect username and passsword")
            }
        }});

}

