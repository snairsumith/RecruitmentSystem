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
import java.util.logging.Level;
import java.util.logging.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 *
 * @author HP
 */
@Controller
@RequestMapping("/userapi")
public class UserApiController {
   
    
    @RequestMapping(value="/userlogin",method = RequestMethod.GET)
    @ResponseBody
    public String userlogin(@RequestParam("username")String username,
                                  @RequestParam("password")String password) throws SQLException,ClassNotFoundException {
        
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hrm","root","");  
            Statement stmt=con.createStatement();
            String sql="select * from login_tbl where UserName='"+username+"' and Password='"+password+"'  and Role=1 ";
            ResultSet rs=stmt.executeQuery(sql); 
            if(rs.next()){
                return "sucess";
            }else{
                return "fail";
            }
    }
    @RequestMapping(value="/userregistration",method = RequestMethod.GET)
    @ResponseBody
    public String userregistration(@RequestParam("Username")String username,
                                  @RequestParam("Email")String Email, 
                                  @RequestParam("Country")String Country,
                                  @RequestParam("Password")String Password)throws SQLException,ClassNotFoundException  {
        
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hrm","root","");  
            Statement stmt=con.createStatement();
            String sql="insert into user_reg (UserName,Email,Country)values('"+username+"','"+Email+"','"+Country+"')";
            String sql1="insert into login_tbl (UserName,Password,Role,Status)values('"+username+"','"+Password+"','1','1')";
            int i =stmt.executeUpdate(sql); 
             int j =stmt.executeUpdate(sql1); 
            if(i>0 && j>0){
                return "sucess";
            }else{
                return "fail";
            }
    }
}
