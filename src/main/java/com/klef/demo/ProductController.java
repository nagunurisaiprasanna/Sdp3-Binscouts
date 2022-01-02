package com.klef.demo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ProductController 
{
	@Autowired
	ProductServices pservice;
	
	

	@GetMapping(path="/addproduct")
	public ModelAndView addproduct()
	{
	// emp - request object of type Employee Class
	return new ModelAndView("addproduct","prd",new Product());
	}
	
	
	@PostMapping(path="/submitprd")
	public ModelAndView submitprd(@ModelAttribute("prd") Product prd)
	{
	pservice.addproduct(prd);
	ModelAndView mv = new ModelAndView();
	mv.setViewName("addproductsuccess");
	mv.addObject("pname",prd.getName());
	return mv;
	}
	
	
	@GetMapping("/viewallproducts")
	public ModelAndView viewallproducts()
	{
		
		List<Product> product =pservice.getallproducts();
		ModelAndView mv=new ModelAndView();
		mv.setViewName("viewallproducts");
		mv.addObject("pdata",product);
		return mv;
	}
	
	
	@GetMapping("/product/delete/{pid}")
	public String deleteproduct(@PathVariable("pid")int pid)
	{
		pservice.deleteproduct(pid);
		return "redirect:/viewallproducts";
		
		
	}
}
