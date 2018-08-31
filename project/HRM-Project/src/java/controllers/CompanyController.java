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
@RequestMapping("/")
public class CompanyController {
   @RequestMapping(value="/company_profile",method = RequestMethod.GET)
    public String company_profile(ModelMap modelMap) {
        
        return "company_profile";
    }
    @RequestMapping(value="/company_update_profile",method = RequestMethod.GET)
    public String company_update_profile(ModelMap modelMap) {
        
        return "company_update_profile";
    }
}
