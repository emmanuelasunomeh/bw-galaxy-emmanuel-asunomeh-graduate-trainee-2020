package com.tms.TMS.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
//import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.tms.TMS.entities.Member;
import com.tms.TMS.repos.MemberRepository;

@Controller
public class MemberController {
	
	@Autowired
	private MemberRepository memberRepository;
	
	
	
	
	@RequestMapping("registermember")
	public String showRegistrationPage() {
		return "login/createMember";	
	}
	
	@RequestMapping("dashboard")
	public String showDashboardPage() {
		return "dashboard";	
	}
	
	
	@RequestMapping(value="memberLogin", method=RequestMethod.POST)
	public String register(@ModelAttribute("member") Member member) {
		memberRepository.save(member);
		return "login/memberLogin";
	}
	
	@RequestMapping("memberLogin")
	public String showMemberLoginPage() {
		return "login/memberLogin";
		
	}
	
	
	@RequestMapping(value="memberDashboard", method = RequestMethod.POST)
	public String memberLogin(@RequestParam("username") String username, @RequestParam("password") String password, 
			ModelMap modelMap) {
		Member member = memberRepository.findByUsername(username);
		if(member.getPassword().equals(password)) {
			return "memberDashboard";
		}else {
			modelMap.addAttribute("msg", "invalid User Name or Password Please Try Again!");
		 
		return "login/memberLogin";
		
		}

	}
}