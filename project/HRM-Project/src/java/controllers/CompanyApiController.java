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
import org.springframework.web.bind.annotation.ResponseBody;

/**
 *
 * @author Gayathri
 */
@Controller
@RequestMapping("companyapi/")
public class CompanyApiController {
    
   @RequestMapping(value="/company_profile",method = RequestMethod.GET)
   @ResponseBody
    public String company_profile(ModelMap modelMap) {
        
        return "hai";
    }
     @RequestMapping(value="/company_registration",method = RequestMethod.GET)
   @ResponseBody
    public String company_registration(ModelMap modelMap) {
        
        return "hai";
    }
    @RequestMapping(value="/company_login",method = RequestMethod.GET)
   @ResponseBody
    public String company_login(ModelMap modelMap) {
        
        return "hai";
    }
}

