package com.tms.TMS.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.tms.TMS.entities.Admin;

import com.tms.TMS.repos.AdminRepository;


@Controller
public class AdminController {
	
	@Autowired
	private AdminRepository adminRepository;
	
	
	@RequestMapping("register")
	public String showRegistrationPage() {
		return "login/adminRegister";	
	}
	
	@RequestMapping("login")
	public String showLoginPage() {
		return "login/login";
	}
	
	@RequestMapping(value="login", method=RequestMethod.POST)
	public String register(@ModelAttribute("admin") Admin admin) {
		adminRepository.save(admin);
		return "login/login";
		
	}	
	
	@RequestMapping(value="dashboard", method = RequestMethod.POST)
	public String login(@RequestParam("username") String username, @RequestParam("password") String password, 
			ModelMap modelMap) {
		Admin admin = adminRepository.findByUsername(username);
		if(admin.getPassword().equals(password)) {
			return "dashboard";
		}else {
			modelMap.addAttribute("msg", "invalid Username or Password Please Try Again!");
			return "login/login";
		}
		
	}

}
