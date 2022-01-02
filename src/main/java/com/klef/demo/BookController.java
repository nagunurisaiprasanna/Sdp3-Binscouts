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
public class BookController
{

	@Autowired
	
	BookService bookservice;
	

	@GetMapping("/bookorder")
	public ModelAndView bookorder()
	{
		ModelAndView mv=new ModelAndView();
		mv.setViewName("bookorder");
		return mv;
	}
	
	
	@PostMapping("/submitorder")
	public ModelAndView submitorder(@ModelAttribute("book") Book book)
	{
		bookservice.bookslot(book);
		
	ModelAndView mv = new ModelAndView();
	mv.setViewName("booksuccess");
	mv.addObject("firstname", book.getFirstname());
	return mv;
	}
	
	
	@GetMapping("/viewallbooked")
	public ModelAndView viewallbooked()
	{
		
		List<Book> book =bookservice.getallbooked();
		ModelAndView mv=new ModelAndView();
		mv.setViewName("viewbooked");
		mv.addObject("data",book);
		return mv;
	}
	

	
	
	@GetMapping("/book/delete/{bid}")
	public String deleteproduct(@PathVariable("bid")int bid)
	{
		bookservice.deletebookrecord(bid);;
		return "redirect:/viewallbooked";
		
		
	}
	
	
}
