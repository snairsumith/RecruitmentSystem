/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
import LiibraryFunction.DBFunctions;
import java.sql.Connection;
import java.sql.DriverManager;
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
@RequestMapping("adminapi/")
public class AdminApiController {
    DBFunctions db=new DBFunctions();
    
    
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

    
}
