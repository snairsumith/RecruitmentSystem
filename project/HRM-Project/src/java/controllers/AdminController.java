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
    
}
