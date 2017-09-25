package com.controller;

import java.io.BufferedOutputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.Buffer;
import java.text.DateFormat;


import java.util.Date;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.*;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.DaoImpl.CartDaoImpl;
import com.DaoImpl.CategoryDaoImpl;
import com.DaoImpl.OrderDaoImpl;
import com.DaoImpl.ProductDaoImpl;
import com.DaoImpl.SupplierDaoImpl;
import com.DaoImpl.UserDaoImpl;
import com.Model.Cart;
import com.Model.Order;
import com.Model.Product;
import com.Model.Supplier;
import com.Model.User;
import com.Model.Category;

import java.security.*;
@Controller

public class cartController {

	@Autowired
	ProductDaoImpl productDaoImpl;
	
	@Autowired
	CategoryDaoImpl categoryDaoImpl;
	
	@Autowired
	UserDaoImpl userdaoimpl;
	
	@Autowired
	SupplierDaoImpl supplierDaoImpl;
	
	@Autowired
	CartDaoImpl cartDaoImpl;
	
	@Autowired
	OrderDaoImpl orderDaoImpl;
	
	
	
	@RequestMapping(value="/goToCart",method=RequestMethod.GET)
		public ModelAndView goToCart(HttpServletRequest req)
		{
			ModelAndView mav= new ModelAndView("Cart");
			Principal principal= req.getUserPrincipal();
			String userEmail=principal.getName();
			mav.addObject("CartInfo",cartDaoImpl.findCartById(userEmail));
			return mav;
		
	}
	
	@RequestMapping(value="/addToCart",method=RequestMethod.POST)
	public ModelAndView addToCart(HttpServletRequest req)
	{
		ModelAndView mav= new ModelAndView();
		
		
		
			try{
				Principal principal= req.getUserPrincipal();
				String userEmail=principal.getName();
				int pid=Integer.parseInt(req.getParameter("pid"));
				Double price= Double.parseDouble(req.getParameter("pPrice"));
				int quantity= Integer.parseInt(req.getParameter("quant"));
				String productName= req.getParameter("pName");
				String imgname= req.getParameter("pImgname");
				
				Cart exists=cartDaoImpl.getCartbyId(pid, userEmail);
				if(exists==null)
				{
					
					
					System.out.println("#####IF##########");
					Cart cr= new Cart();
					cr.setCartPrice(price);
					cr.setCartProductId(pid);
					cr.setCartProductName(productName);
					cr.setCartQuantity(quantity);
					cr.setCartImage(imgname);
					User u=userdaoimpl.findById(userEmail);
					cr.setCartUserDetails(u);
					cartDaoImpl.insertcart(cr);
				}
				else if(exists!=null)
				{
					System.out.println("########......else.........###");
					Cart cr= new Cart();
					cr.setCartId(exists.getCartId());
					cr.setCartPrice(price);
					cr.setCartProductId(pid);
					cr.setCartProductName(productName);
					cr.setCartQuantity(exists.getCartQuantity()+quantity);
					cr.setCartImage(imgname);
					User u=userdaoimpl.findById(userEmail);
					cr.setCartUserDetails(u);
					cartDaoImpl.updateCart(cr);

					
				}
				mav.addObject("CartInfo",cartDaoImpl.findCartById(userEmail));
				mav.setViewName("Cart");
				return mav;
			}
			catch(Exception e)
			{
				/*mav.addObject("CartInfo",cartDaoImpl.findCartById(userEmail));*/
				mav.setViewName("login");
				return mav;
			}
	
	}
	
	
	@RequestMapping(value="/invoiceProcess",method=RequestMethod.POST)
	public ModelAndView orderSave(HttpServletRequest req)
	{
		ModelAndView mav= new ModelAndView();
		System.out.println("Order..######");
		Order ord= new Order();
		Principal principal= req.getUserPrincipal();
		String userEmail=principal.getName();
		/*Double total= Double.parseDouble(req.getParameter("gtot"));*/
		String payment= req.getParameter("payment");
		User user =userdaoimpl.findById(userEmail);
		ord.setUser(user);
		ord.setPayment(payment);
		/*ord.setTotal(total);*/
		orderDaoImpl.insertOrder(ord);
		mav.addObject("orderDetails",user);
		mav.setViewName("Invoice");
		return mav;
	}
	
	@RequestMapping(value="/Checkout",method=RequestMethod.GET)
	public ModelAndView checkoutProcess(HttpServletRequest req)
	{
		ModelAndView mav= new ModelAndView("Checkout");
		Principal principal= req.getUserPrincipal();
		String userEmail=principal.getName();
		User user= userdaoimpl.findById(userEmail);
		List<Cart> cart=(List<Cart>)cartDaoImpl.findCartById(userEmail);
		mav.addObject("user",user);
		mav.addObject("cart",cart);
		return mav;
	}
	
	
	@RequestMapping(value="/deletePCart/{cartId}")
	public ModelAndView deleteCartItem(@PathVariable("cartId")int cartId,HttpServletRequest req)
	{
		ModelAndView mav= new ModelAndView("Cart");
		Principal principal= req.getUserPrincipal();
		String userEmail=principal.getName();
		cartDaoImpl.deleteCart(cartId);
		mav.addObject("CartInfo",cartDaoImpl.findCartById(userEmail));
		return mav;
	}
	
	
	
	

}
