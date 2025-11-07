<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Library Management System</title>
<link rel="stylesheet" href="css/add_book.css">
</head>
<body>
	<%@include file="header.html" %>

    <h1>Add New Book</h1>
    <form action="addbook" method="post">
        <label for="title">Title:</label>
        <input type="text" id="title" name="title" required placeholder="Enter book title">
        
        <label for="author">Author:</label>
        <input type="text" id="author" name="author" required placeholder="Enter author name">
        
        <label for="isbn">ISBN:</label>
        <input type="text" id="isbn" name="isbn" required 	placeholder="1234-5678-9012">
         
         <label for="publishedYear">Published Year</label> 
         <input type="number" id="publishedYear" name="publishedYear" required placeholder="e.g., 2020" min="1000" max="9999">
        <input type="submit" value="Add Book">
        <input type="reset" value="Reset">
 </form>
 
 <!-- Footer -->
    <footer class="footer">
      <p>
        &copy; 2025 Library Management System | Designed by
        <strong
          ><a href="https://www.youtube.com/@CodingWithSudhir" target="_blank"
            >Coding With Sudhir</a
          ></strong
        >
      </p>
    </footer>
 </body>
</html>