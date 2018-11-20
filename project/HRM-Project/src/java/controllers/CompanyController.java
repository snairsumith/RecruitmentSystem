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
@RequestMapping("company/")
public class CompanyController {
   @RequestMapping(value="/company_profile",method = RequestMethod.GET)
    public String company_profile(ModelMap modelMap) {
        
        return "company_profile";
    }
    @RequestMapping(value="/company_update_profile",method = RequestMethod.GET)
    public String company_update_profile(@RequestParam("uname") String uname) {
        
        return "company_update_profile";
    }
     @RequestMapping(value="/jobpost",method = RequestMethod.GET)
    public String jobpost(@RequestParam("uname") String uname) {
        
        return "jobpost";
    }
    @RequestMapping(value="/send_exam_date",method = RequestMethod.GET)
    public String send_exam_date(@RequestParam("uname") String uname) {
        
        return "send_exam_date";
    }
    
   @RequestMapping(value="/company_view_appliedcandidate",method = RequestMethod.GET)
    public String company_view_appliedcandidate(@RequestParam("uname") String uname) {
        
        return "company_view_appliedcandidate";
    }
    @RequestMapping(value="/send_examlink",method = RequestMethod.GET)
    public String send_examlink(@RequestParam("uname") String uname) {
        
        return "send_examlink";
    }
    @RequestMapping(value="/rank_list",method = RequestMethod.GET)
    public String rank_list(@RequestParam("uname") String uname) {
        
        return "rank_list";
        
    }
    @RequestMapping(value="/Company_view_profile",method = RequestMethod.GET)
    public String Company_view_profile(@RequestParam("uname") String uname) {
        
        return "Company_view_profile";
        
    }
    @RequestMapping(value="/send_interview_notification",method = RequestMethod.GET)
    public String send_interview_notification(@RequestParam("uname") String uname) {
        
        return "send_interview_notification";
        
    }
    @RequestMapping(value="/company_search_candidate",method = RequestMethod.GET)
    public String company_search_candidate(@RequestParam("uname") String uname) {
        
        return "company_search_candidate";
        
    }
    @RequestMapping(value="/company_change_password",method = RequestMethod.GET)
    public String company_change_password(@RequestParam("uname") String uname) {
        
        return "company_change_password";
        
    }
    @RequestMapping(value="/company_userprofile",method = RequestMethod.GET)
    public String company_userprofile(@RequestParam("uname") String uname) {
        
        return "CompanyUserProfile";
        
    }
}
