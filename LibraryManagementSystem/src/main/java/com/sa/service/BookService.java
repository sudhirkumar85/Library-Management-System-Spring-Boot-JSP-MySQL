package com.sa.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.sa.model.Book;
import com.sa.repository.BookRepository;

@Service
public class BookService {
	
	private BookRepository bookRepository;
	
	public BookService(BookRepository bookRepository) {
		this.bookRepository = bookRepository;
	}
	
	public Book saveBook(Book book) {
		return bookRepository.save(book);
	}
	
	public Book getBookById(int id) {
		return bookRepository.findById(id).orElse(null);
	}
	
	public List<Book> getBooksByTitle(String title) {
		return bookRepository.findByAllIgnoringCaseTitle(title);
	}

	public List<Book> getAllBooks() {
		return bookRepository.findAll();
	}

	public void deleteBookById(int id) {

		bookRepository.deleteById(id);
	}
}
