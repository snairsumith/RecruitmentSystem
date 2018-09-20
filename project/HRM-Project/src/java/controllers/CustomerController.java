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
}
