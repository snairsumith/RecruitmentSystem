/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import LiibraryFunction.DBFunctions;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import models.CompanyModel;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 *
 * @author Gayathri
 */
@Controller
@RequestMapping("companyapi/")
public class CompanyApiController {

    DBFunctions db = new DBFunctions();

    @RequestMapping(value = "/company_registration", method = RequestMethod.GET)
    @ResponseBody
    public String company_registration(@RequestParam("Username") String Username,
            @RequestParam("Email") String Email,
            @RequestParam("Country") String Country,
            @RequestParam("Password") String Password,
            @RequestParam("name") String name) throws SQLException, ClassNotFoundException {

        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hrm", "root", "");
        Statement stmt = con.createStatement();
        String sql = "insert into company_reg (UserName,Email,Country)values('" + Username + "','" + Email + "','" + Country + "')";
        String sql1 = "insert into login_tbl (CompanyName,UserName,Password,Role,Status)values('"+name+"'," + Username + "','" + Password + "','3','0')";
        int i = stmt.executeUpdate(sql);
        int j = stmt.executeUpdate(sql1);
        if (i > 0 && j > 0) {
            return "success";
        } else {
            return "fail";
        }
    }

    @RequestMapping(value = "/company_profile", method = RequestMethod.GET)
    @ResponseBody
    public String company_profile(@RequestParam("CompanyName") String CompanyName,
            @RequestParam("EstablishmentDate") String EstablishmentDate,
            @RequestParam("City") String City,
            @RequestParam("State") String State,
            @RequestParam("PostCode") String PostCode,
            @RequestParam("Contact") String Contact,
            @RequestParam("SecondaryContact") String SecondaryContact,
            @RequestParam("CompanyWebsite") String CompanyWebsite,
    @RequestParam("Username") String Username) throws SQLException, ClassNotFoundException {

        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hrm", "root", "");
        Statement stmt = con.createStatement();
        String sql = "update company_reg set CompanyName='" + CompanyName + "',EstablishmentDate='" + EstablishmentDate + "',City='" + City + "',State='" + State + "',Pin='" + PostCode + "',Contact='" + Contact + "',SecondaryContact='" + SecondaryContact + "',CompanyWebsite='" + CompanyWebsite + "'  where Username='"+Username+"'";
        int i = stmt.executeUpdate(sql);

        if (i > 0) {
            return "success";
        } else {
            return "fail";
        }
    }

    @RequestMapping(value = "/userregistration", method = RequestMethod.GET)
    @ResponseBody
    public String userregistration(@RequestParam("Username") String username,
            @RequestParam("Email") String Email,
            @RequestParam("Country") String Country,
            @RequestParam("Password") String Password) throws SQLException, ClassNotFoundException {

        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hrm", "root", "");
        Statement stmt = con.createStatement();
        String sql = "insert into company_reg (UserName,Email,Country)values('" + username + "','" + Email + "','" + Country + "')";
        String sql1 = "insert into login_tbl (UserName,Password,Role,Status)values('" + username + "','" + Password + "','2','0')";
        int i = stmt.executeUpdate(sql);
        int j = stmt.executeUpdate(sql1);
        if (i > 0 && j > 0) {
            return "success";
        } else {
            return "fail";
        }
    }

    @RequestMapping(value = "/jobpost", method = RequestMethod.GET)
    @ResponseBody
    public String jobpost(@RequestParam("Createdate") String Createdate,
            @RequestParam("Jobpost") String Jobname,
            @RequestParam("Jobtitle") String Jobtitle,
            @RequestParam("Salary") String Salary,
            @RequestParam("Industry") String Industry,
            @RequestParam("Jobdescription") String Jobdescription,
            @RequestParam("Remark") String Remark,
            @RequestParam("Isactive") String Isactive,
            @RequestParam("streetadd") String streetadd,
            @RequestParam("City") String city,
            @RequestParam("Postcode") String Postcode,
            @RequestParam("Contact") String Contact,
            @RequestParam("SecondaryContact") String SecondaryContact,
            @RequestParam("userName") String userName,
            @RequestParam("JobLocationId") String JobLocationId) throws SQLException, ClassNotFoundException {

        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hrm", "root", "");
        Statement stmt = con.createStatement();
        String sql = "insert into jobpost (CreatedDate,JobTitle,JobTypeId,Salary,Industry,JobDescription,Remark,StreetName,JobLocationId,PostCode,Contact,SecondaryContact,IsActive,CompanyId)"
                + ""
                + "values('" + Createdate + "','" + Jobtitle + "','" + Jobname + "','" + Salary + "','" + Industry + "','" + Jobdescription + "','" + Remark + "','" + streetadd + "','" + JobLocationId + "','" + Postcode + "','" + Contact + "','" + SecondaryContact + "','" + Isactive + "','" + userName + "')";
        int i = stmt.executeUpdate(sql);
        if (i > 0) {
            return "success";
        } else {
            return "fail";
        }
    }

    @RequestMapping(value = "/send_exam_date", method = RequestMethod.GET)
    @ResponseBody
    public String send_exam_date(@RequestParam("CompanyName") String CompanyName,
            @RequestParam("ExamName") String ExamName,
            @RequestParam("DateofExam") String DateofExam,
            @RequestParam("TimeofExam") String TimeofExam,
            @RequestParam("Remark") String Remark) throws SQLException, ClassNotFoundException {

        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hrm", "root", "");
        Statement stmt = con.createStatement();
        String sql = "insert into exam (CompanyName,ExamName,DateofExam,TimeofExam,Remark)values('" + CompanyName + "','" + ExamName + "','" + DateofExam + "','" + TimeofExam + "','" + Remark + "')";
        int i = stmt.executeUpdate(sql);
        if (i > 0) {
            return "success";
        } else {
            return "fail";
        }
    }

    @RequestMapping(value = "/company_approve", method = RequestMethod.GET)
    @ResponseBody
    public String company_approve(@RequestParam("comapnayUserName") String comapnayUserName,
            @RequestParam("type") int type) throws SQLException, ClassNotFoundException {
        String sql = "";
        if (type == 1) {
            sql = "update login_tbl set status=1 where UserName='" + comapnayUserName + "'";
        } else {
            sql = "delete from company_reg where UserName='" + comapnayUserName + "'";
        }
        int i = db.InsetQuery(sql);

        if (i > 0) {
            return "success";
        } else {
            return "fail";
        }
    }

    @RequestMapping(value = "/company_deatils", method = RequestMethod.GET)
    public @ResponseBody
    List<CompanyModel> getallSupplier(
            @RequestParam("comapnayUserName") String supplierid) throws SQLException {
        List<CompanyModel> sup = new ArrayList<CompanyModel>();

        String sql = "select * from company_reg where UserName='" + supplierid + "'";
        DBFunctions db = new DBFunctions();
        ResultSet rs = db.SelectQuery(sql);
        while (rs.next()) {

            sup.add(new CompanyModel(rs.getInt("CompanyId"), rs.getString("CompanyName"), rs.getString("Email"), rs.getString("Address"), rs.getString("Country"), rs.getString("City"), rs.getString("Contact"), rs.getString("CompanyWebsite")));
        }

        return sup;

    }

    @RequestMapping(value = "/company_change_password", method = RequestMethod.GET)
    @ResponseBody
    public String company_change_password(@RequestParam("Password") String Password) throws SQLException, ClassNotFoundException {

        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hrm", "root", "");
        Statement stmt = con.createStatement();
        String sql = "update lgin_tbl set Password='" + Password + "' where Username='Company 1'";
        int i = stmt.executeUpdate(sql);

        if (i > 0) {
            return "success";
        } else {
            return "fail";
        }
    }

    @RequestMapping(value = "admin_change_password", method = RequestMethod.GET)
    @ResponseBody
    public String admin_change_password(
            @RequestParam("username") String Username,
            @RequestParam("Password") String Password) throws SQLException, ClassNotFoundException {

        String sql = "update login_tbl set Password='" + Password + "' where Username='" + Username + "'";
        int i = db.InsetQuery(sql);

        if (i > 0) {
            return "success";
        } else {
            return "fail";
        }
    }
    
    @RequestMapping(value = "activeexamlink", method = RequestMethod.GET)
    @ResponseBody
    public String activeexamlink(
            
            @RequestParam("JobPostId") String JobPostId) throws SQLException, ClassNotFoundException {

        String sql = "update jobpost_activity set ExamActive=1 where JobPostId='JobPostId'";
        int i = db.InsetQuery(sql);

        if (i > 0) {
            return "success";
        } else {
            return "fail";
        }
    }
     @RequestMapping(value = "send_iterview_notification", method = RequestMethod.GET)
    @ResponseBody
    public String send_iterview_notification(
            
            @RequestParam("username") String username,
    @RequestParam("details") String details) throws SQLException, ClassNotFoundException {

        String sql = "insert into exam (CompanyName,Details)values('" + username + "','" + details + "')";
        int i = db.InsetQuery(sql);

        if (i > 0) {
            return "success";
        } else {
            return "fail";
        }
    }
    @RequestMapping(value = "sendNotification", method = RequestMethod.GET)
    @ResponseBody
    public String sendNotification(
            @RequestParam("Title") String Title,
            @RequestParam("Desc") String Desc,
            @RequestParam("SenderId") String SenderId,
            @RequestParam("ReciverId") String ReciverId,
            @RequestParam("Type") String Type,
            @RequestParam("ReciverType") String ReciverType) throws SQLException, ClassNotFoundException {

        String sql = "INSERT INTO `notification_tbl` (`NotificationType`, `NotificationTitle`, `NotificationDescription`, `SenderId`, `ReceiverId`, `ReceiverType`)"
                + ""
                + " VALUES ('" + Type + "', '" + Title + "','" + Desc + "', '" + SenderId + "', '" + ReciverId + "', '" + ReciverType + "');";
        int i = db.InsetQuery(sql);

        if (i > 0) {
            return "success";
        } else {
            return "fail";
        }
    }

}
