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
    
    @RequestMapping(value="/company_registration",method = RequestMethod.GET)
    @ResponseBody
    public String company_registration(@RequestParam("Username")String Username,
                                  @RequestParam("Email")String Email, 
                                  @RequestParam("Country")String Country,
                                  @RequestParam("Password")String Password)throws SQLException,ClassNotFoundException  {
        
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hrm","root","");  
            Statement stmt=con.createStatement();
            String sql="insert into company_reg (UserName,Email,Country)values('"+Username+"','"+Email+"','"+Country+"')";
            String sql1="insert into login_tbl (UserName,Password,Role,Status)values('"+Username+"','"+Password+"','2','0')";
            int i =stmt.executeUpdate(sql); 
             int j =stmt.executeUpdate(sql1); 
            if(i>0 && j>0){
                return "sucess";
            }else{
                return "fail";
            }
    }
    @RequestMapping(value="/company_profile",method = RequestMethod.GET)
    @ResponseBody
    public String company_profile(@RequestParam("Companyname")String Companyname,
                                  @RequestParam("EstablishmentDate")String EstablishmentDate, 
                                  @RequestParam("City")String City,
                                  @RequestParam("State")String State,
                                  @RequestParam("PostCode")String PostCode,
                                  @RequestParam("Contact")String Contact,
                                  @RequestParam("SecondaryContact")String SecondaryContact)throws SQLException,ClassNotFoundException  {
        
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hrm","root","");  
            Statement stmt=con.createStatement();
            String sql="update into company_reg (Companyname='"+Companyname+"',EstablishmentDate,City,State,PostCode,Contact,SecondaryContact)values(,'"+EstablishmentDate+"','"+City+"','"+State+"','"+PostCode+"','"+Contact+"','"+SecondaryContact+"')";
            
            int i =stmt.executeUpdate(sql); 
             
            if(i>0){
                return "sucess";
            }else{
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
            return "sucess";
        } else {
            return "fail";
        }
    }
}

