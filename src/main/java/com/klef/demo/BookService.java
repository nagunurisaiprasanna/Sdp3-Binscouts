package com.klef.demo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class BookService
{
	@Autowired
	BookRepository bookrepo;
	public void bookslot(Book book)
	{
		bookrepo.save(book);
	}
	
	
	
	public List<Book> getallbooked()
	{
		return (List<Book>)bookrepo.findAll();
	}
	
	
	
	public void deletebookrecord(int bid)
	{
		bookrepo.deleteById(bid);
	}

}
