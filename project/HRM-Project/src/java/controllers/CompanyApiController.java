/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
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

    @RequestMapping(value = "/company_registration", method = RequestMethod.GET)
    @ResponseBody
    public String company_registration(@RequestParam("Username") String Username,
            @RequestParam("Email") String Email,
            @RequestParam("Country") String Country,
            @RequestParam("Password") String Password) throws SQLException, ClassNotFoundException {

        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hrm", "root", "");
        Statement stmt = con.createStatement();
        String sql = "insert into company_reg (UserName,Email,Country)values('" + Username + "','" + Email + "','" + Country + "')";
        String sql1 = "insert into login_tbl (UserName,Password,Role,Status)values('" + Username + "','" + Password + "','2','0')";
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
            @RequestParam("CompanyWebsite") String CompanyWebsite) throws SQLException, ClassNotFoundException {

        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hrm", "root", "");
        Statement stmt = con.createStatement();
        String sql = "update company_reg set CompanyName='" + CompanyName + "',EstablishmentDate='" + EstablishmentDate + "',City='" + City + "',State='" + State + "',PostCode='" + PostCode + "',Contact='" + Contact + "',SecondaryContact='" + SecondaryContact + "',CompanyWebsite='" + CompanyWebsite + "'  where Username='tcs'";
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
        public String jobpost(@RequestParam("Createdate")String Createdate,
                                  @RequestParam("Jobpost")String Jobname,
                                  @RequestParam("Jobtitle")String Jobtitle,
                                  @RequestParam("Salary")String Salary,
                                  @RequestParam("Industry")String Industry,
                                  
                                  @RequestParam("Jobdescription")String Jobdescription,
                                  @RequestParam("Remark")String Remark,
                                  @RequestParam("Isactive")String Isactive,
                                   @RequestParam("streetadd")String streetadd,
                                   @RequestParam("City")String city,
                                   
                                  @RequestParam("Postcode")String Postcode,
                                  @RequestParam("Contact")String Contact,
                                  @RequestParam("SecondaryContact") String SecondaryContact) throws SQLException, ClassNotFoundException {

        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hrm", "root", "");
        Statement stmt = con.createStatement();
        String sql = "insert into jobpost (CreatedDate,JobTitle,Jobpost,Salary,Industry,JobDescription,Remark,StreetName,JobLocationId,PostCode,Contact,SecondaryContact,IsActive)values('" + Createdate + "','" + Jobtitle + "','" + Jobname + "','" + Salary + "','" + Industry + "','" + Jobdescription + "','" + Remark + "','" + streetadd + "','" + 1 + "','" + Postcode + "','" + Contact + "','" + SecondaryContact + "','" + Isactive + "')";
        int i = stmt.executeUpdate(sql);
        if (i > 0) {
            return "success";
        } else {
            return "fail";
        }
    }
         @RequestMapping(value = "/send_exam_date", method = RequestMethod.GET)
        @ResponseBody
        public String send_exam_date(@RequestParam("CompanyName")String CompanyName,
                                  @RequestParam("ExamName")String ExamName, 
                                  @RequestParam("DateofExam")String DateofExam,
                                  @RequestParam("TimeofExam")String TimeofExam,
                                  @RequestParam("Remark")String Remark) throws SQLException, ClassNotFoundException {

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
}








