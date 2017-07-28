package com.controller;


import java.text.DateFormat;


import java.util.Date;
import java.util.Locale;

import javax.servlet.http.*;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.DaoImpl.CategoryDaoImpl;
import com.DaoImpl.ProductDaoImpl;
import com.DaoImpl.SupplierDaoImpl;
import com.Model.Product;
import com.Model.Supplier;
import com.Model.User;
import com.Model.Category;
@Controller
public class admincontroller {
	
	@Autowired
	ProductDaoImpl productDaoImpl;
	
	@Autowired
	CategoryDaoImpl categoryDaoImpl;
	
	@RequestMapping(value="/savecat",method=RequestMethod.POST)
	public ModelAndView savecategory(@RequestParam("cid")int cid,@RequestParam("name")String name)
	{
		ModelAndView mav=new ModelAndView();
		Category c= new Category();
		c.setCid(cid);
		c.setName(name);
		categoryDaoImpl.insertcategory(c);
		mav.setViewName("index");
		return mav;
	}
	
	@ModelAttribute
	public void addAttribute(Model m)
	{
		m.addAttribute("catlist",categoryDaoImpl);
		m.addAttribute("satlist",supplierDaoImpl);
		m.addAttribute("prodlist",productDaoImpl);
	}
	
	@RequestMapping(value="/saveproduct",method=RequestMethod.POST)
	public String saveproduct(HttpServletRequest request,@RequestParam("file")MultipartFile file)
	{
		
		
		Product prod=new Product();
		prod.setName(request.getParameter("pname"));
		prod.setPrice(Float.parseFloat(request.getParameter("price")));
		prod.setDescription(request.getParameter("description"));
		prod.setStock(Integer.parseInt(request.getParameter("stock")));
		prod.setCat(categoryDaoImpl.findById(Integer.parseInt(request.getParameter("pcategory"))));
		prod.setSupplier(supplierDaoImpl.findById(Integer.parseInt(request.getParameter("psupplier"))));
	
		
	}
	
	
	
	@Autowired
	SupplierDaoImpl supplierDaoImpl;
	@RequestMapping(value="/savesupp",method=RequestMethod.POST)
	@Transactional
	public ModelAndView saveSupplier(@RequestParam("sid")int sid,@RequestParam("sname")String sname)
	{
		ModelAndView mav=new ModelAndView();
		Supplier ss= new Supplier();
		ss.setSid(sid);
		ss.setSname(sname);
		supplierDaoImpl.insertSupplier(ss);
		mav.setViewName("index");
		return mav;
	}
	
	@RequestMapping("/adding")
	public String addPage()
	{
		return "adding";
	}

}
