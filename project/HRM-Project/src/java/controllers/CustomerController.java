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
@RequestMapping("Candidate/")
public class CustomerController {
    @RequestMapping(value="/candidate_profile",method = RequestMethod.GET)
    public String customer_profile(ModelMap modelMap) {
        
        return "candidate_profile";
    }
    @RequestMapping(value="/candidate_view_job",method = RequestMethod.GET)
    public String candidate_view_job(ModelMap modelMap) {
        
        return "candidate_view_job";
    }
    @RequestMapping(value="/candidate_p",method = RequestMethod.GET)
    public String candidate_update_profile(ModelMap modelMap) {
        
        return "candidate_update_profile";
    }
    @RequestMapping(value="/candidate_apply_job",method = RequestMethod.GET)
    public String candidate_apply_job(ModelMap modelMap) {
        
        return "candidate_apply_job";
    }
    @RequestMapping(value="/view_applied_jobs",method = RequestMethod.GET)
    public String view_applied_jobs(ModelMap modelMap) {
        
        return "view_applied_jobs";
    }
    @RequestMapping(value="/candidate_search_company",method = RequestMethod.GET)
    public String candidate_search_company(ModelMap modelMap) {
        
        return "candidate_search_company";
    }
}
