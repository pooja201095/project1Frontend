package com.controller;


import java.io.BufferedOutputStream;

import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.Buffer;
import java.text.DateFormat;


import java.util.Date;
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

import com.DaoImpl.CategoryDaoImpl;
import com.DaoImpl.ProductDaoImpl;
import com.DaoImpl.SupplierDaoImpl;
import com.Model.Product;
import com.Model.Supplier;
import com.Model.User;
import com.Model.Category;
@Controller
@RequestMapping("/admin")
public class admincontroller {
	
	@Autowired
	ProductDaoImpl productDaoImpl;
	
	@Autowired
	CategoryDaoImpl categoryDaoImpl;
	
	@ModelAttribute
	public void addAttribute(Model m)
	{
		m.addAttribute("catlist",categoryDaoImpl.retrive());
		m.addAttribute("satlist",supplierDaoImpl.retrive());
		m.addAttribute("prodlist",productDaoImpl.retrive());
	}
	
	@RequestMapping(value="/savecat",method=RequestMethod.POST)
	public ModelAndView savecategory(@RequestParam("cid")int cid,@RequestParam("cname")String cname)
	{
		ModelAndView mav=new ModelAndView();
		Category c= new Category();
		c.setCid(cid);
		c.setCname(cname);
		categoryDaoImpl.insertcategory(c);
		mav.setViewName("modal");
		return mav;
	}
	
	
	
	@RequestMapping(value="/saveproduct",method=RequestMethod.POST)
	public String saveproduct(HttpServletRequest request,@RequestParam("file")MultipartFile file)
	{
		
		
		Product prod=new Product();
		prod.setName(request.getParameter("name"));
		prod.setPrice(Float.parseFloat(request.getParameter("price")));
		prod.setDescription(request.getParameter("description"));
		prod.setStock(Integer.parseInt(request.getParameter("stock")));
		prod.setCategory(categoryDaoImpl.findById(Integer.parseInt(request.getParameter("pcategory"))));
		prod.setSupplier(supplierDaoImpl.findById(Integer.parseInt(request.getParameter("psupplier"))));
		
		String filepath= request.getSession().getServletContext().getRealPath("/");
		String filename=file.getOriginalFilename();
		prod.setImgname(filename);
		productDaoImpl.insertproduct(prod);
		System.out.println("File path File "+filepath+" "+filename);
		try{
			byte imagebyte[]=file.getBytes();
			BufferedOutputStream fos= new BufferedOutputStream(new FileOutputStream(filepath+"/resource/"+filename));
			fos.write(imagebyte);
			fos.close();
		}
		catch(IOException e){
			e.printStackTrace();
		}
		catch(Exception e){
			e.printStackTrace();
		}
		return "index";
		
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
	
/* =========================================Delete update product===================================== */
	@RequestMapping("/productList")
	public ModelAndView productList()
	{
		ModelAndView mav=new ModelAndView();
		mav.addObject("prodList",productDaoImpl.retrive());
		mav.setViewName("productList");
		return mav;
	}
	
	
	@RequestMapping("/deleteProduct/{pid}")
	public String deleteProd(@PathVariable("pid") int pid)
	{
		productDaoImpl.deleteProduct(pid);
		return "redirect:/admin/productList?del";
	}
	
	@RequestMapping("/updateProduct")
	
	public ModelAndView updateProd(@RequestParam("id")int pid)
	{
		System.out.println(".............");
		ModelAndView mav=new ModelAndView();
		Product p=productDaoImpl.findById(pid);
		mav.addObject("prod",p);
		mav.addObject("clist",categoryDaoImpl.retrive());
		mav.addObject("slist",supplierDaoImpl.retrive());
		mav.setViewName("updateProduct");
		return mav;
	}

	@RequestMapping(value="/productUpdate",method=RequestMethod.POST)
	public ModelAndView editProduct(HttpServletRequest request,@RequestParam("file")MultipartFile file)
	{
		ModelAndView mav= new ModelAndView();
		String pid=request.getParameter("pid");
		String pname=request.getParameter("pName");
		String pprice=request.getParameter("pPrice");
		String pstock=request.getParameter("pStock");
		String pdescription=request.getParameter("pDescription");
		String pcategory=request.getParameter("pcategory");
		String psupplier=request.getParameter("psupplier");
		
		
		Product prod2=new Product();
		prod2.setId(Integer.parseInt(pid));
		prod2.setName(pname);
		prod2.setPrice(Float.parseFloat(pprice));
		prod2.setDescription(pdescription);
		prod2.setStock(Integer.parseInt(pstock));
		prod2.setCategory(categoryDaoImpl.findById(Integer.parseInt(pcategory)));
		prod2.setSupplier(supplierDaoImpl.findById(Integer.parseInt(psupplier)));
		
		String filepath= request.getSession().getServletContext().getRealPath("/");
		String filename=file.getOriginalFilename();
		prod2.setImgname(filename);
		productDaoImpl.updateProduct(prod2);
		System.out.println("File path File "+filepath+" "+filename);
		try{
			byte imagebyte[]=file.getBytes();
			BufferedOutputStream fos= new BufferedOutputStream(new FileOutputStream(filepath+"/resource/"+filename));
			fos.write(imagebyte);
			fos.close();
		}
		catch(IOException e){
			e.printStackTrace();
		}
		catch(Exception e){
			e.printStackTrace();
		}
		
		mav.setViewName("redirect:/admin/productList?update");
		return mav;
		
	}
/* ===============================================End============================================= */	
	
	
/*===================================Delete update Category======================================= */
	
	@RequestMapping("/categoryList")
	public ModelAndView categoryList()
	{
		ModelAndView mav=new ModelAndView();
		mav.addObject("catList",categoryDaoImpl.retrive());
		mav.setViewName("categoryList");
		return mav;
	}
	
	@RequestMapping("/deleteCategory/{cid}")
	public String deleteCat(@PathVariable("cid") int cid)
	{
		try{
			categoryDaoImpl.deleteCategory(cid);
			return "redirect:/admin/categoryList?del";
		}
		catch(Exception e){
			System.out.println("Error.........................");
			return "redirect:/error";
		}
	}
	
	
	@RequestMapping("/updateCategory")
	
	public ModelAndView updateCat(@RequestParam("cid")int cid)
	{
		System.out.println(".............");
		ModelAndView mav=new ModelAndView();
		Category c=categoryDaoImpl.findById(cid);
		mav.addObject("cat",c);
		//mav.addObject("clist",categoryDaoImpl.retrive());
		mav.setViewName("updateCategory");
		return mav;
	}
	
	@RequestMapping(value="/categoryUpdate",method=RequestMethod.POST)
	public ModelAndView editCategory(HttpServletRequest request)
	{
		ModelAndView mav= new ModelAndView();
		String cid=request.getParameter("cid");
		String cname=request.getParameter("cname");
	
		
		
		Category cat2=new Category();
		cat2.setCid(Integer.parseInt(cid));
		cat2.setCname(cname);
		
		
		categoryDaoImpl.updateCategory(cat2);

		
		mav.setViewName("redirect:/admin/categoryList?update");
		return mav;
		
	}
	
	/* ===============================================End============================================= */
	
	
/*===================================Delete update Supplier======================================= */
	
	@RequestMapping("/supplierList")
	public ModelAndView supplierList()
	{
		ModelAndView mav=new ModelAndView();
		mav.addObject("satList",supplierDaoImpl.retrive());
		mav.setViewName("supplierList");
		return mav;
	}
	
	@RequestMapping("/deleteSupplier/{sid}")
	public String deleteSat(@PathVariable("sid") int sid)
	{
		try{
		supplierDaoImpl.deleteSupplier(sid);
		return "redirect:/admin/supplierList?del";
		}
		catch(Exception e){
			System.out.println("Error.........................");
			return "redirect:/error";
		}
	}
	
	
	@RequestMapping("/updateSupplier")
	
	public ModelAndView updateSat(@RequestParam("sid")int sid)
	{
		System.out.println(".............");
		ModelAndView mav=new ModelAndView();
		Supplier s=supplierDaoImpl.findById(sid);
		mav.addObject("sat",s);
		mav.setViewName("updateSupplier");
		return mav;
	}
	
	@RequestMapping(value="/supplierUpdate",method=RequestMethod.POST)
	public ModelAndView editSupplier(HttpServletRequest request)
	{
		ModelAndView mav= new ModelAndView();
		String sid=request.getParameter("sid");
		String sname=request.getParameter("sname");
		Supplier sat2=new Supplier();
		sat2.setSid(Integer.parseInt(sid));
		sat2.setSname(sname);
		supplierDaoImpl.updateSupplier(sat2);
		mav.setViewName("redirect:/admin/supplierList?update");
		return mav;
		
	}
	
	/* ===============================================End============================================= */	
	

	
	@RequestMapping("/adding")
	public String addPage()
	{
		return "adding";
	}
	
	@RequestMapping("/index")
	public String goToIndex()
	{
		return "index";
	}
	
	
	

}
