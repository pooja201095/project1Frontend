package com.controller;
import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;



import com.DaoImpl.UserDaoImpl;
import com.Model.User;

@Controller
public class homeController {
	
	@Autowired
	UserDaoImpl userdaoimpl;
	@RequestMapping("/")
	public String index()
	{
		return "index";
	}
	
	@RequestMapping("/index")
	public String Home()
	{
		return "index";
	}
	
	/*@RequestMapping("/register")
	public String register()
	{
		return "register";
	}*/
	
	
	@RequestMapping(value="/register", method=RequestMethod.GET)
	public ModelAndView showregister()
	{
		System.out.println("Registration form");
		ModelAndView mav= new ModelAndView();
		mav.addObject("user", new User());
		mav.setViewName("register");
		return mav;
	}
	
	
	
	@RequestMapping(value="/saveregister", method=RequestMethod.POST)
	public ModelAndView saveregister(@ModelAttribute("user")User user,BindingResult result)
	{
		System.out.println("Entered Save Register........");
		ModelAndView mav= new ModelAndView();
		if(result.hasErrors())
		{
			System.out.println("Not inserted..............");
			mav.setViewName("register");
			return mav;
		}
		else
		{
			System.out.println("inserted..........");
			user.setRole("ROLE_USER");
			userdaoimpl.insertUser(user);
			mav.setViewName("redirect:/goToLogin");
						
			return mav;
		}
	}
	
	/*@RequestMapping("/login")
	public String login()
	{
		return "login";
	}*/
	
	@RequestMapping("/goToLogin")
	public ModelAndView goToLogin()
	{
		ModelAndView mav= new ModelAndView();
		mav.setViewName("login");
		return mav;
	}
	
	@RequestMapping("/contactus")
	public String contactus()
	{
		return "contactus";
	}

}
