package com.yash.controller;

import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;
 
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.yash.model.User;
import com.yash.model.UserProfile;
import com.yash.service.UserProfileService;
import com.yash.service.UserService;
 
@Controller
@RequestMapping("/")
@SessionAttributes("roles")
public class AppController {
	
    @Autowired
    UserProfileService userProfileService;
    @Autowired
    UserService userService;
    @Autowired
    MessageSource messageSource;
    
	@RequestMapping(value ={"/" , "/home" }, method = RequestMethod.GET)
    public String homePage(ModelMap model) {
		System.out.println(" Controller, public String homePage(ModelMap mode){ START } ");
		model.addAttribute("greeting", "Hi, Welcome to Prashant");
		model.addAttribute("loggedinuser", getPrincipal());
		System.out.println(" Controller, public String homePage(ModelMap mode){ END } ");
		return "welcome";
    }
    @RequestMapping(value = "/admin", method = RequestMethod.GET)
    public String adminPage(ModelMap model) {
    	System.out.println(" Controller, public String adminPage(ModelMap model){ START } ");
		User user = new User();
		model.addAttribute("user", user);
		model.addAttribute("edit", false);
        model.addAttribute("loggedinuser", getPrincipal());
        System.out.println(" Controller, public String adminPage(ModelMap model){ END } ");
        return "admin";
    }
    @RequestMapping(value = "/db", method = RequestMethod.GET)
    public String dbaPage(ModelMap model) {
    	System.out.println(" Controller, public String dbaPage(ModelMap model){ START } ");
    	User user = new User();
    	model.addAttribute("user", user);
		model.addAttribute("edit", false);    	
        model.addAttribute("loggedinuser", getPrincipal());
        System.out.println(" Controller, public String dbaPage(ModelMap model){ END } ");
        return "dba";
    }
    @RequestMapping(value="/parent", method = RequestMethod.GET)
    public String parentPage(ModelMap model){
        System.out.println(" Controller, public String parentPage(ModelMap model){ START } ");
    	User user = new User();
    	model.addAttribute("user", user);
		model.addAttribute("edit", false);    	
        model.addAttribute("loggedinuser", getPrincipal());
        System.out.println(" Controller, public String parentPage(ModelMap model){ END } ");
    	return "parent";
    }
    @RequestMapping(value = "/Access_Denied", method = RequestMethod.GET)
    public String accessDeniedPage(ModelMap model) {
        System.out.println(" Controller, public String accessDeniedPage(ModelMap model){ START } ");
        model.addAttribute("loggedinuser", getPrincipal());
        System.out.println(" Controller, public String accessDeniedPage(ModelMap model){ END } ");
        return "accessDenied";
    }
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String loginPage(){
		System.out.println(" public String loginPage(){ MyLogin } ");
		return "login";
	}
    @RequestMapping(value="/logout", method = RequestMethod.GET)
    public String logoutPage (HttpServletRequest request, HttpServletResponse response) {
       Authentication auth = SecurityContextHolder.getContext().getAuthentication();
       if (auth != null){    
    	   System.out.println(" if (auth != null){ } ");
          new SecurityContextLogoutHandler().logout(request, response, auth);
       }
       System.out.println(" controller, public String logoutPage (HttpServletRequest request, HttpServletResponse response){} ");
       return "redirect:/login?logout";
    }
  
/*This method will list all existing users.*/
    @RequestMapping(value = "/list", method = RequestMethod.GET)
    public String listUsers(ModelMap model) {
        List<User> users = userService.findAllUsers();
        model.addAttribute("users", users);
        model.addAttribute("loggedinuser", getPrincipal());
        return "userslist";
    }
/**
 * This method will provide the medium to add a new user.
 */    
    @RequestMapping(value = { "/newuser" }, method = RequestMethod.GET)
    public String newUser(ModelMap model) {
    	System.out.println(" controller, public String newRegistration(ModelMap model){ START } ");
        User user = new User();
        model.addAttribute("user", user);
        model.addAttribute("edit", false);
        model.addAttribute("loggedinuser", getPrincipal());
    	System.out.println(" controller, public String newRegistration(ModelMap model){ END } ");
        return "registration";
    }
/* This method will be called on form submission, handling POST request It
 * also validates the user input*/
    @RequestMapping(value = { "/newuser" }, method = RequestMethod.POST)
    public String saveUser(@Valid User user, BindingResult result, ModelMap model) {
        if (result.hasErrors()) {
            System.out.println("There are errors");
            return "registration";
        }
/* Preferred way to achieve uniqueness of field [sso] should be implementing custom @Unique annotation 
 * and applying it on field [sso] of Model class [User].
 * 
 * Below mentioned peace of code [if block] is to demonstrate that you can fill custom errors outside the validation
 * framework as well while still using internationalized messages.
 */   
        if(!userService.isUserSSOUnique(user.getId(), user.getSsoId())){
            FieldError ssoError =new FieldError("user","ssoId",messageSource.getMessage("non.unique.ssoId", new String[]{user.getSsoId()}, Locale.getDefault()));
            result.addError(ssoError);
            return "registration";
        }
        userService.save(user);
        
        System.out.println("Data of User: "+ "\n"+ "First Name : "+user.getFirstName()+"\n"+ "Last Name  : "+user.getLastName()+"\n"+ "SSO ID     : "+user.getSsoId()+"\n"+ "Password   : "+user.getPassword()+"\n"+ "Email      : "+user.getEmail());
        System.out.println("Checking UsrProfiles....");
        model.addAttribute("success", "User " + user.getFirstName() + " "+ user.getLastName() + " registered successfully");
        model.addAttribute("loggedinuser", getPrincipal());
        return "registrationsuccess";
    }

    private String getPrincipal(){
    	System.out.println(" Controller, private String getPrincipal(){ START }");
        String userName = null;
        Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        
        if (principal instanceof UserDetails) {
            userName = ((UserDetails)principal).getUsername();
        } 
        else {
            userName = principal.toString();
        }
        System.out.println(" Controller, private String getPrincipal(){ END } ");
        return userName;
    }
    
    @ModelAttribute("roles")
    public List<UserProfile> initializeProfiles() {
    	System.out.println(" Controller, public List<UserProfile> initializeProfiles(){ Role } ");
        return userProfileService.findAll();
    }

/******************************UPDATE************************************************************************/   
/*This method will provide the medium to update an existing user.*/
    @RequestMapping(value = { "/edit-user-{ssoId}" }, method = RequestMethod.GET)
    public String editUser(@PathVariable String ssoId, ModelMap model) {
        User user = userService.findBySso(ssoId);
        model.addAttribute("user", user);
        model.addAttribute("edit", true);
        model.addAttribute("loggedinuser", getPrincipal());
        return "registration";
    }
/**
 * This method will be called on form submission, handling POST request for
 * updating user in database. It also validates the user input
**/
    @RequestMapping(value = { "/edit-user-{ssoId}" }, method = RequestMethod.POST)
    public String updateUser(@Valid User user, BindingResult result,ModelMap model, @PathVariable String ssoId) {
        if (result.hasErrors()){
            return "registration";
        }
        userService.updateUser(user);
        model.addAttribute("success", "User " + user.getFirstName() + " "+ user.getLastName() + " updated successfully");
        model.addAttribute("loggedinuser", getPrincipal());
        return "registrationsuccess";
    }
/**
 * This method will delete an user by it's SSOID value.
 */
    @RequestMapping(value = { "/delete-user-{ssoId}" }, method = RequestMethod.GET)
    public String deleteUser(@PathVariable String ssoId) {
        userService.deleteUserBySSO(ssoId);
        return "redirect:/list";
    }
}