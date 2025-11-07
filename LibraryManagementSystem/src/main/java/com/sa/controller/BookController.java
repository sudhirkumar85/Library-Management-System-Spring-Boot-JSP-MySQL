package com.sa.controller;

import java.util.List;

import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.sa.model.Book;
import com.sa.service.BookService;

@Controller
public class BookController {

	private BookService bookService;

	public BookController(BookService bookService) {
		super();
		this.bookService = bookService;
	}

	@GetMapping("/")
	public String home() {
		return "index";
	}

	@PostMapping("/addbook")
	public String saveBook(Book book) {

		bookService.saveBook(book);
		return "index";
	}
	@GetMapping("/viewBooks")
	public String viewBooks(Model model) {
		
		List<Book> books = bookService.getAllBooks();
		model.addAttribute("books", books);
		return "View-Book";
	}
	
	@GetMapping("/deleteBook")
	public String DeleteBook( int id) {
		System.out.println("Deleting book with ID: " + id);
		bookService.deleteBookById(id);
		
		return "redirect:/viewBooks";
	}
}
