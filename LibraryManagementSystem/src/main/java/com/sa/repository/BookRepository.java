package com.sa.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.sa.model.Book;

@Repository
public interface BookRepository extends JpaRepository<Book, Integer> {

		List<Book> findByAllIgnoringCaseTitle(String title);	
	
}
