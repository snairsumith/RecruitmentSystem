/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author Gayathri
 */
@Controller
@RequestMapping("Admin/")
public class AdminController {
    @RequestMapping(value="/approve_company",method = RequestMethod.GET)
    public String approve_company(ModelMap modelMap) {
        
        return "approve_company";
    }

    @RequestMapping(value="/Admin_View_Customer",method = RequestMethod.GET)
    public String Admin_View_Customer(ModelMap modelMap) {
        
        return "Admin_View_Customer";
    }
    @RequestMapping(value="/Admin_View_Customer_Profile",method = RequestMethod.GET)
    public String Admin_View_Customer_Profile(ModelMap modelMap) {
        
        return "Admin_View_Customer_Profile";
    }
    @RequestMapping(value="/AdminDashboard",method = RequestMethod.GET)
    public String AdminDashboard(ModelMap modelMap) {
        
        return "AdminDashboard";
    }
     @RequestMapping(value="/admin_change_password",method = RequestMethod.GET)
    public String admin_change_password(ModelMap modelMap) {
        
        return "admin_change_password";
    }
    
     @RequestMapping(value="/view_companys",method = RequestMethod.GET)
    public String admin_view_companys(ModelMap modelMap) {
        
        return "AdminViewCompanyProfile";
    }
    @RequestMapping(value="/view_companys_single",method = RequestMethod.GET)
    public String admin_view_company_single(@RequestParam("Username") String Username) {
        
        return "AdminViewComapnyProfileViewSingle";
    }
    @RequestMapping(value="/view_candiadate_single",method = RequestMethod.GET)
    public String view_candiadate_single(@RequestParam("Username") String Username) {
        
        return "Admin_View_Customer_Profile";
    }
}
