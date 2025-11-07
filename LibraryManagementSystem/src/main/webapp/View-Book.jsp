<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Library Management System</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/7.0.1/css/all.min.css" />
    <link rel="stylesheet" href="css/view-book.css" />

</head>
<body>
	<%@include file="header.html" %>

	<h1>View Books</h1>

	<table>
		<tr>
			<th>Book ID</th>
			<th>Title</th>
			<th>Author</th>
			<th>Published Year</th>
			<th>Actions</th>

		</tr>
		<c:forEach var="book" items="${books}">
			<tr>
				<td>${book.id}</td>
				<td>${book.title}</td>
				<td>${book.author}</td>
				<td>${book.publishedYear}</td>
				<td><a href="deleteBook?id=${book.id}"> <i
						class="fa-solid fa-trash"></i></a> <a href="editBook?id=${book.id}"><i
						class="fa-solid fa-pen-to-square"></i></a></td>
			</tr>
		</c:forEach>
	</table>

	<!-- Footer -->
	<footer class="footer">
		<p>
			&copy; 2025 Library Management System | Designed by <strong><a
				href="https://www.youtube.com/@CodingWithSudhir" target="_blank">Coding
					With Sudhir</a></strong>
		</p>
	</footer>

</body>
</html>