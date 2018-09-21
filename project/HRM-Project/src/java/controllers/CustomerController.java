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
@RequestMapping("Customer/")
public class CustomerController {
    @RequestMapping(value="/customer_profile",method = RequestMethod.GET)
    public String customer_profile(ModelMap modelMap) {
        
        return "customer_profile";
    }
    @RequestMapping(value="/customer_view_job",method = RequestMethod.GET)
    public String customer_view_job(ModelMap modelMap) {
        
        return "customer_view_job";
    }
    @RequestMapping(value="/customer_",method = RequestMethod.GET)
    public String customer_update_profile(ModelMap modelMap) {
        
        return "customer_update_profile";
    }
    @RequestMapping(value="/customer_apply_job",method = RequestMethod.GET)
    public String customer_apply_job(ModelMap modelMap) {
        
        return "customer_apply_job";
    }
    @RequestMapping(value="/customer_view_profile",method = RequestMethod.GET)
    public String customer_view_profile(ModelMap modelMap) {
        
        return "customer_view_profile";
    }
    @RequestMapping(value="/candidate_view_ranklist",method = RequestMethod.GET)
    public String candidate_view_ranklist(ModelMap modelMap) {
        
        return "candidate_view_ranklist";
    }
    @RequestMapping(value="/candidate_view_notification",method = RequestMethod.GET)
    public String candidate_view_notification(ModelMap modelMap) {
        
        return "candidate_view_notification";
    }
     @RequestMapping(value="/view_applied_jobs",method = RequestMethod.GET)
    public String view_applied_jobs(ModelMap modelMap) {
        
        return "view_applied_jobs";
    }
}
