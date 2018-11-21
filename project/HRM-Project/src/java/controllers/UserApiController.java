package controllers;

import LiibraryFunction.DBFunctions;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import javax.servlet.http.HttpSession;
import models.CompanyModel;
import models.JobModel;
import models.LocationModel;
import models.UserModel;

/**
 *
 * @author HP
 */
@Controller
@RequestMapping("/userapi")
public class UserApiController {
    DBFunctions db=new DBFunctions();
    @RequestMapping(value = "/userlogin", method = RequestMethod.GET)
    @ResponseBody
    public String userlogin(@RequestParam("username") String username,
            @RequestParam("password") String password,
            HttpSession session) throws SQLException, ClassNotFoundException {

        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hrm", "root", "");
        Statement stmt = con.createStatement();
        String sql = "select * from login_tbl where UserName='" + username + "' and Password='" + password + "' ";
        ResultSet rs = stmt.executeQuery(sql);
        if (rs.next()) {

            session.setAttribute("username", username);
            return rs.getString("Role");
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
        String sql = "insert into user_reg (UserName,Email,Country)values('" + username + "','" + Email + "','" + Country + "')";
        String sql1 = "insert into login_tbl (UserName,Password,Role,Status)values('" + username + "','" + Password + "','2','1')";
        int i = stmt.executeUpdate(sql);
        int j = stmt.executeUpdate(sql1);
        if (i > 0 && j > 0) {
            return "sucess";
        } else {
            return "fail";
        }
    }

    @RequestMapping(value = "/user_profile_updation", method = RequestMethod.GET)
    @ResponseBody
    public String user_profile_updation(@RequestParam("FirstName") String FirstName,
            @RequestParam("LastName") String LastName,
            @RequestParam("Gender") String Gender,
            @RequestParam("DateofBirth") String DateofBirth,
            @RequestParam("Home") String Home,
            @RequestParam("State") String State,
            @RequestParam("City") String City,
            @RequestParam("PostCode") String PostCode,
            @RequestParam("Contact") String Contact,
            @RequestParam("HigherQualification") String HigherQualification,
            @RequestParam("Mark") String Mark,
            @RequestParam("University") String University,
            @RequestParam("Experience") String Experience,
            @RequestParam("ProfileNotification") String ProfileNotification,
            @RequestParam("EmailNotification") String EmailNotification,
            @RequestParam("username") String username) throws SQLException, ClassNotFoundException {

        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hrm", "root", "");
        Statement stmt = con.createStatement();
        String sql = "update user_reg set FirstName='" + FirstName + "',LastName='" + LastName + "',Gender='" + Gender + "',Dob='" + DateofBirth + "',Home='" + Home + "',State='" + State + "',City='" + City + "',PostCode='" + PostCode + " ',Contact='" + Contact + "',Experience='" + Experience + "',HigherQualification='" + HigherQualification + "',Marks='" + Mark + "',University='" + University + "',ProfileNotification='" + ProfileNotification + "',EmailNotification='" + EmailNotification + "' where UserName='" + username + "'";

        int i = stmt.executeUpdate(sql);

        if (i > 0) {
            return "sucess";
        } else {
            return "fail";
        }
    }

    @RequestMapping(value = "/user_deatils", method = RequestMethod.GET)
    public @ResponseBody
    List<UserModel> getallSupplier(
            @RequestParam("UserName") String UserName) throws SQLException {
        List<UserModel> sup = new ArrayList<UserModel>();

        String sql = "select * from user_reg where UserName='" + UserName + "'";
        DBFunctions db = new DBFunctions();
        ResultSet rs = db.SelectQuery(sql);
        while (rs.next()) {

            sup.add(new UserModel(rs.getString("UserId"), rs.getString("UserName"), rs.getString("FirstName"), rs.getString("LastName"), rs.getString("Gender"), rs.getString("Dob"), rs.getString("Email"), rs.getString("Country"), rs.getString("City"), rs.getString("Contact"), rs.getString("Experience"), rs.getString("HigherQualification"), rs.getString("Marks"), rs.getString("University"), rs.getString("RegDate"), rs.getString("RegTime"), rs.getString("ProfileNotification"), rs.getString("EmailNotification"), rs.getString("Photo"), rs.getString("Cv"), rs.getString("MarkList"), rs.getString("IdProof"), rs.getString("Home"), rs.getString("State"), rs.getString("PostCode")));
        }

        return sup;

    }

    @RequestMapping(value = "/comapny_deatils_byid", method = RequestMethod.GET)
    public @ResponseBody
    List<JobModel> getAllJobByid(
            @RequestParam("id") String id) throws SQLException {
        List<JobModel> sup = new ArrayList<JobModel>();

        String sql = "select  jobpost.*,company_reg.*,job_type_tbl.* from  jobpost inner join company_reg on company_reg.UserName=jobpost.CompanyId  inner join job_type_tbl on job_type_tbl.TypeId=jobpost.JobTypeId where jobpost.CompanyId='" + id + "'";
        System.out.println(sql);
        DBFunctions db = new DBFunctions();
        ResultSet rs = db.SelectQuery(sql);
        while (rs.next()) {

            sup.add(new JobModel( rs.getString("JobPostId"),rs.getString("TypeName"),rs.getString("CompanyId"),rs.getString("CreatedDate"),rs.getString("JobTitle"),rs.getString("Salary"),rs.getString("Industry"),rs.getString("JobDescription"),rs.getString("Remark"),rs.getString("StreetName"),rs.getString("JobLocationId"),rs.getString("PostCode"),rs.getString("Contact"),rs.getString("SecondaryContact"),rs.getString("IsActive"),rs.getString("CompanyName"),rs.getString("Email"),rs.getString("Address")));
        }

        return sup;

    }

    @RequestMapping(value = "/comapny_deatils_by_location", method = RequestMethod.GET)
    public @ResponseBody
    List<JobModel> getComapyByLocation(
            @RequestParam("location") int location) throws SQLException {
        List<JobModel> sup = new ArrayList<JobModel>();

        String sql = "select  jobpost.*,company_reg.*,job_type_tbl.* from  jobpost inner join company_reg on company_reg.UserName=jobpost.CompanyId  inner join job_type_tbl on job_type_tbl.TypeId=jobpost.JobTypeId where jobpost.JobLocationId='" + location + "'";
        DBFunctions db = new DBFunctions();
        ResultSet rs = db.SelectQuery(sql);
        while (rs.next()) {

           sup.add(new JobModel( rs.getString("JobPostId"),rs.getString("TypeName"),rs.getString("CompanyId"),rs.getString("CreatedDate"),rs.getString("JobTitle"),rs.getString("Salary"),rs.getString("Industry"),rs.getString("JobDescription"),rs.getString("Remark"),rs.getString("StreetName"),rs.getString("JobLocationId"),rs.getString("PostCode"),rs.getString("Contact"),rs.getString("SecondaryContact"),rs.getString("IsActive"),rs.getString("CompanyName"),rs.getString("Email"),rs.getString("Address")));
        }

        return sup;

    }
      @RequestMapping(value = "/comapny_deatils_by_exp", method = RequestMethod.GET)
    public @ResponseBody
    List<JobModel> getComapyByExpe(
            @RequestParam("location") int location) throws SQLException {
        List<JobModel> sup = new ArrayList<JobModel>();

        String sql = "select  jobpost.*,company_reg.*,job_type_tbl.* from  jobpost inner join company_reg on company_reg.UserName=jobpost.CompanyId  inner join job_type_tbl on job_type_tbl.TypeId=jobpost.JobTypeId where jobpost.JobLocationId='" + location + "'";
        DBFunctions db = new DBFunctions();
        ResultSet rs = db.SelectQuery(sql);
        while (rs.next()) {

           sup.add(new JobModel( rs.getString("JobPostId"),rs.getString("TypeName"),rs.getString("CompanyId"),rs.getString("CreatedDate"),rs.getString("JobTitle"),rs.getString("Salary"),rs.getString("Industry"),rs.getString("JobDescription"),rs.getString("Remark"),rs.getString("StreetName"),rs.getString("JobLocationId"),rs.getString("PostCode"),rs.getString("Contact"),rs.getString("SecondaryContact"),rs.getString("IsActive"),rs.getString("CompanyName"),rs.getString("Email"),rs.getString("Address")));
        }

        return sup;

    }
    
        @RequestMapping(value = "/getalllocation", method = RequestMethod.GET)
    public @ResponseBody
    List<LocationModel> getAllLocation(
            @RequestParam("ParentId") int ParentId) throws SQLException {
        List<LocationModel> loc = new ArrayList<LocationModel>();

        String sql = "select * from location where ParentId=" + ParentId;
        DBFunctions db = new DBFunctions();
        ResultSet rs = db.SelectQuery(sql);
        while (rs.next()) {

            loc.add(new LocationModel(rs.getInt("LocationId"), rs.getString("LocationName")));
        }

        return loc;

    }
    @RequestMapping(value = "/candidate_change_password", method = RequestMethod.GET)
    @ResponseBody
    public String company_change_password(@RequestParam("Password") String Password) throws SQLException, ClassNotFoundException {

        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hrm", "root", "");
        Statement stmt = con.createStatement();
        String sql = "update lgin_tbl set Password='" + Password + "' where Username='tcs'";
        int i = stmt.executeUpdate(sql);

        if (i > 0) {
            return "success";
        } else {
            return "fail";
        }
    }
    @RequestMapping(value = "/apply_job", method = RequestMethod.GET)
    @ResponseBody
    public String JobApply(@RequestParam("JobId") int JobId,
            @RequestParam("UserName") String UserName
            ) throws SQLException, ClassNotFoundException {

       
        String sql = "INSERT INTO `jobpost_activity` (`UserId`, `JobId`) VALUES ('"+UserName+"', "+JobId+")";

        int i = db.InsetQuery(sql);

        if (i > 0) {
            return "sucess";
        } else {
            return "fail";
        }
    }
    
    @RequestMapping(value = "/exam_insert", method = RequestMethod.GET)
    @ResponseBody
    public String exam_insert(@RequestParam("qid") int qid,
            @RequestParam("result") int result,
            @RequestParam("UserName") String UserName,
            @RequestParam("answer") String answer,
            @RequestParam("jobPostId") int jobPostId
            ) throws SQLException, ClassNotFoundException {

       
        String sql = "INSERT INTO `exam_attend` (`UserId`, `QuestionId`, `Answer`, `Result`,`jobPostId`) VALUES ('"+UserName+"', "+qid+", '"+answer+"', "+result+","+jobPostId+");";

        int i = db.InsetQuery(sql);

        if (i > 0) {
            return "sucess";
        } else {
            return "fail";
        }
    }
}
