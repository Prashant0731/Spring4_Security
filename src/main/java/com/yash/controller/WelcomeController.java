package com.yash.controller;

import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;



@Controller
public class WelcomeController {

	@RequestMapping(value="/wc", method= RequestMethod.GET)
	public String showWelcomePage(ModelMap model) {
		model.put("name", "admin");
		return "welcome";
	}
	
	@SuppressWarnings("unused")
	private String getLoggedInUserName(ModelMap model) {
		Object principal = SecurityContextHolder.getContext()
				.getAuthentication().getPrincipal();

		if (principal instanceof UserDetails)
			return ((UserDetails) principal).getUsername();

		return principal.toString();
	}
	
	
	
/*	@RequestMapping(value="/login",method= RequestMethod.POST)
	public String welcomePage(ModelMap model,@RequestParam String name, @RequestParam String password) {
		boolean isValidUser = loginService.validateUser(name, password); 
		if(! isValidUser) {
			model.put("message", "Invalid !!!! userid and password ");
			System.out.println("Invalid userid & Password !!! ");
			return "login";
		}
		
		model.put("name", name);
		model.put("password", password);
		return "welcome";
	}*/
}