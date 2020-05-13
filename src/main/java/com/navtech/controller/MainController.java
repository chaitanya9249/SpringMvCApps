package com.navtech.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.navtech.dao.UserDao;
import com.navtech.model.UserRegistration;
import com.navtech.model.User_Roles;
import com.navtech.model.Users;

@Controller
@SessionAttributes("loginUser")
public class MainController
{
	@Autowired
	private UserDao userDao;
	
	private String successMessage = "";
	private String failMessage = "";
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public ModelAndView welcomePage(ModelAndView model)
	{
		userDao.saveRoles();
		model.setViewName("welcome_page");
		return model;
	}
	
	@RequestMapping("/dashboardView")
	public ModelAndView dashboardView(ModelAndView model)
	{
		model.setViewName("users_view/dashboard");
		return model;
	}

	@RequestMapping(value = "/loginView", method = RequestMethod.GET)
	public ModelAndView loginPage(ModelAndView model, @ModelAttribute Users loginUser)
	{
		model.addObject("loginUser", loginUser);
		model.setViewName("users_view/userLogin");
		return model;
	}
	
	@RequestMapping(value = "/loginAction", method = RequestMethod.POST)
	public ModelAndView userLogin(ModelAndView model, @ModelAttribute Users loginUser,BindingResult binding)
	{
		Users userExist = userDao.loginAuthentication(loginUser);
		System.out.println("MainController.userLogin() ::::: "+userExist);
		if(userExist != null && userExist.getUserId() > 0)
		{
			model.addObject("loginUser",loginUser);
			model.addObject("userRoleId",userDao.findRoleIdByUser(userExist.getUserId()));
			model.setViewName("users_view/dashboard");
		}
		else
		{
			failMessage = "Invalid user credentials";
			model.addObject("loginFailMessage", failMessage);
			model.setViewName("users_view/userLogin");
			failMessage = "";
		}
		return model;
	}
	
	@RequestMapping(value = "/signupView", method = RequestMethod.GET)
	public ModelAndView signupPage(ModelAndView model, @ModelAttribute UserRegistration empSignup)
	{
		model.addObject("empSignup", empSignup);
		model.addObject("successMessage", successMessage);
		model.addObject("failMessage", failMessage);
		model.setViewName("users_view/userSignup");
		
		successMessage = "";
		failMessage    = "";
		return model;
	}
	

	
	@RequestMapping(value = "/saveUser", method = RequestMethod.POST)
	public ModelAndView saveUserData(ModelAndView model,@ModelAttribute UserRegistration registration)
	{
		try
		{
			if(userDao.existedUser(registration) > 0)
			{
				failMessage = registration.getEmpEmail()+" User Already Existed. Please choose a unique username";
			}
			else
			{
				User_Roles userRoles = new User_Roles();
				Users users = new Users();
				successMessage = "User Registered Successfully";
				
				userDao.saveUserData(registration, userRoles,users);
			}
		} 
		catch (Exception e) 
		{
			e.printStackTrace();
		}
		return new ModelAndView("redirect:signupView");
	}
}