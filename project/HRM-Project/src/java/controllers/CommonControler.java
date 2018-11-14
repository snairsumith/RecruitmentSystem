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
public class CommonControler {
    
    @RequestMapping(value="/",method = RequestMethod.GET)
    public String login(ModelMap modelMap) {
        
        return "login";
    }
        
    @RequestMapping(value="/user_registration",method = RequestMethod.GET)
    public String user_registration(ModelMap modelMap) {
        
        return "user_registration";
    }
    @RequestMapping(value="/company_registration",method = RequestMethod.GET)
    public String company_registration(ModelMap modelMap) {
        
        return "company_registration";
    }
    @RequestMapping(value="/reg_link",method = RequestMethod.GET)
    public String reg_link(ModelMap modelMap) {
        
        return "reg_link";
    }
}
