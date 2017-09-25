package com.controller;
import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import javax.validation.Valid;




import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;









import com.DaoImpl.CategoryDaoImpl;
import com.DaoImpl.ProductDaoImpl;
import com.DaoImpl.SupplierDaoImpl;
import com.DaoImpl.UserDaoImpl;
import com.Model.Product;
import com.Model.User;

@Controller
public class homeController {
	
	@Autowired
	UserDaoImpl userdaoimpl;
	
	@Autowired
	ProductDaoImpl productDaoImpl;
	
	@Autowired
	CategoryDaoImpl categoryDaoImpl;
	
	@Autowired
	SupplierDaoImpl supplierDaoImpl;
	
	@ModelAttribute
	public void addAttribute(Model m)
	{
		m.addAttribute("catlist",categoryDaoImpl.retrive());
		m.addAttribute("satlist",supplierDaoImpl.retrive());
		m.addAttribute("productCustList",productDaoImpl.retrive());
	}
	
	@RequestMapping("/")
	public String inde(Model m)
	{
		m.addAttribute("catlist",categoryDaoImpl.retrive());
		return "index";
	}
	
	@RequestMapping("/index")
	public String ind(Model m)
	{
		m.addAttribute("catlist",categoryDaoImpl.retrive());
		return "index";
	}
	
	
	
	@RequestMapping(value="/register", method=RequestMethod.GET)
	public ModelAndView showregister(Model m)
	{
		m.addAttribute("catlist",categoryDaoImpl.retrive());
		System.out.println("Registration form");
		ModelAndView mav= new ModelAndView();
		mav.addObject("user", new User());
		mav.setViewName("register");
		return mav;
	}
	
	
	
	@RequestMapping(value="/saveregister", method=RequestMethod.POST)
	public ModelAndView saveregister(@Valid @ModelAttribute("user")User user,BindingResult result)
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
	
	
	
	@RequestMapping("/productCustList")
	public ModelAndView productCustList(@RequestParam("cid") int cid,Model m)
	{
		System.out.println(cid);
		m.addAttribute("catlist",categoryDaoImpl.retrive());
		ModelAndView mav=new ModelAndView();
		mav.addObject("productList",productDaoImpl.getProdbyId(cid));
		mav.setViewName("productCustList");
		return mav;
	}
	
	
	@RequestMapping(value="/prodDetails/{cid}")
	public ModelAndView prodDetail(@PathVariable("cid")int cid,Model m)
	{
		ModelAndView mav= new ModelAndView();
		m.addAttribute("catlist",categoryDaoImpl.retrive());
		Product product=productDaoImpl.findById(cid);
		mav.addObject("product",product);
		mav.setViewName("prodDetails");
		return mav;

	}
	
	
	@RequestMapping("/goToLogin")
	public ModelAndView goToLogin(Model m)
	{
		ModelAndView mav= new ModelAndView();
		m.addAttribute("catlist",categoryDaoImpl.retrive());
		mav.setViewName("login");
		return mav;
	}
	
	
	
	@RequestMapping("/error")
	public ModelAndView errPage(Model m)
	{
		ModelAndView mav= new ModelAndView();
		m.addAttribute("catlist",categoryDaoImpl.retrive());
		mav.setViewName("error");
		return mav;
	}
	
	
	@RequestMapping("/userLogged")
	public ModelAndView userLog(Model m)
	{
		
		ModelAndView mav= new ModelAndView();
		m.addAttribute("catlist",categoryDaoImpl.retrive());
		mav.setViewName("redirect:/index");
		return mav;
	}
	

	@RequestMapping("/logout")
	public ModelAndView userLogout(Model m)
	{
		ModelAndView mav= new ModelAndView();
		m.addAttribute("catlist",categoryDaoImpl.retrive());
		mav.setViewName("index");
		return mav;
	}
	
	
	@RequestMapping("/contactus")
	public String contactus(Model m)
	{
		m.addAttribute("catlist",categoryDaoImpl.retrive());
		return "contactus";
	}

}
