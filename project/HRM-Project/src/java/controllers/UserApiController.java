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
import models.UserModel;

/**
 *
 * @author HP
 */
@Controller
@RequestMapping("/userapi")
public class UserApiController {

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
    List<CompanyModel> getallSupplier(
            @RequestParam("id") int id) throws SQLException {
        List<CompanyModel> sup = new ArrayList<CompanyModel>();

        String sql = "select * from company_reg where CompanyId=" + id + "";
        DBFunctions db = new DBFunctions();
        ResultSet rs = db.SelectQuery(sql);
        while (rs.next()) {

            sup.add(new CompanyModel(rs.getInt("CompanyId"), rs.getString("CompanyName"), rs.getString("Email"), rs.getString("Address"), rs.getString("Country"), rs.getString("City"), rs.getString("Contact"), rs.getString("CompanyWebsite")));
        }

        return sup;

    }

    @RequestMapping(value = "/comapny_deatils_by_location", method = RequestMethod.GET)
    public @ResponseBody
    List<CompanyModel> getComapyByLocation(
            @RequestParam("location") String location) throws SQLException {
        List<CompanyModel> sup = new ArrayList<CompanyModel>();

        String sql = "select * from company_reg where Country='" + location + "'";
        DBFunctions db = new DBFunctions();
        ResultSet rs = db.SelectQuery(sql);
        while (rs.next()) {

            sup.add(new CompanyModel(rs.getInt("CompanyId"), rs.getString("CompanyName"), rs.getString("Email"), rs.getString("Address"), rs.getString("Country"), rs.getString("City"), rs.getString("Contact"), rs.getString("CompanyWebsite")));
        }

        return sup;

    }
}
