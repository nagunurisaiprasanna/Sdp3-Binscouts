package com.klef.demo;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class AllController {
	
	@GetMapping("/home")
	public ModelAndView home()
	{
		ModelAndView mv=new ModelAndView();
		mv.setViewName("home");
		return mv;
	}
	
	@GetMapping("/products")
	public ModelAndView services()
	{
		ModelAndView mv=new ModelAndView();
		mv.setViewName("products");
		return mv;
	}
	
	@GetMapping("/index")
	public ModelAndView index()
	{
		ModelAndView mv=new ModelAndView();
		mv.setViewName("index");
		return mv;
	}
	
	@GetMapping("/book")
	public ModelAndView book()
	{
		ModelAndView mv=new ModelAndView();
		mv.setViewName("bookorder");
		return mv;
	}
	
	@GetMapping("/contact")
	public ModelAndView contact()
	{
		ModelAndView mv=new ModelAndView();
		mv.setViewName("contact");
		return mv;
	}
	
	@GetMapping("/feedback")
	public ModelAndView feedback()
	{
		ModelAndView mv=new ModelAndView();
		mv.setViewName("feedback");
		return mv;
	}
	
	@GetMapping("/landing")
	public ModelAndView landing()
	{
		ModelAndView mv=new ModelAndView();
		mv.setViewName("landing");
		return mv;
	}
	
	@GetMapping("/About")
	public ModelAndView About()
	{
		ModelAndView mv=new ModelAndView();
		mv.setViewName("About");
		return mv;
	}
	
}
