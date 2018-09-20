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

/**
 *
 * @author Gayathri
 */
@Controller
@RequestMapping("company/")
public class CompanyController {
   @RequestMapping(value="/company_profile",method = RequestMethod.GET)
    public String company_profile(ModelMap modelMap) {
        
        return "company_profile";
    }
    @RequestMapping(value="/company_update_profile",method = RequestMethod.GET)
    public String company_update_profile(ModelMap modelMap) {
        
        return "company_update_profile";
    }
     @RequestMapping(value="/jobpost",method = RequestMethod.GET)
    public String jobpost(ModelMap modelMap) {
        
        return "jobpost";
    }
    @RequestMapping(value="/send_exam_date",method = RequestMethod.GET)
    public String send_exam_date(ModelMap modelMap) {
        
        return "send_exam_date";
    }
    
   @RequestMapping(value="/company_view_appliedcustomer",method = RequestMethod.GET)
    public String company_view_appliedcustomer(ModelMap modelMap) {
        
        return "company_view_appliedcustomer";
    }
    @RequestMapping(value="/Send_examlink",method = RequestMethod.GET)
    public String Send_examlink(ModelMap modelMap) {
        
        return "Send_examlink";
    }
    @RequestMapping(value="/Rank_list",method = RequestMethod.GET)
    public String Rank_list(ModelMap modelMap) {
        
        return "Rank_list";
        
    }
    @RequestMapping(value="/Company_view_profile",method = RequestMethod.GET)
    public String Company_view_profile(ModelMap modelMap) {
        
        return "Company_view_profile";
        
    }
}
