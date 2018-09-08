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
@RequestMapping("customer/")
public class CustomerController {
    @RequestMapping(value="/customer_profile",method = RequestMethod.GET)
    public String customer_profile(ModelMap modelMap) {
        
        return "customer_profile";
    }
    @RequestMapping(value="/customer_update_profile",method = RequestMethod.GET)
    public String customer_update_profile(ModelMap modelMap) {
        
        return "customer_update_profile";
    }
}
