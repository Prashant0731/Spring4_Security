package com.yash.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;



@Controller
public class LogoutController {

	@RequestMapping(value = "/logout1", method = RequestMethod.GET)
	public String logout(HttpServletRequest request, HttpServletResponse response) {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if (auth != null) {
			new SecurityContextLogoutHandler().logout(request, response, auth);
		}
		return "redirect:/";
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