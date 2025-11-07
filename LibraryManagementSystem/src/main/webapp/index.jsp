<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <title>Library Management System</title>
    <link
      rel="stylesheet"
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
    />

    <link
      href="https://cdn.jsdelivr.net/npm/aos@2.3.4/dist/aos.css"
      rel="stylesheet"
    />
    <link rel="stylesheet" href="css/styles.css" />
  </head>
  <body>
    <!-- Header / Navbar -->
    <nav class="navbar navbar-expand-lg">
      <div class="container">
        <a class="navbar-brand fw-bold" href="/">📚 Library System</a>
        <button
          class="navbar-toggler"
          type="button"
          data-bs-toggle="collapse"
          data-bs-target="#navbarNav"
        >
          <span class="navbar-toggler-icon text-white"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
          <ul class="navbar-nav ms-auto">
            <li class="nav-item"><a class="nav-link" href="/">Home</a></li>
            <li class="nav-item">
              <a class="nav-link" href="Add-Book.jsp">Add Book</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="viewBooks">View Books</a>
            </li>
            <li class="nav-item"><a class="nav-link" href="#">About</a></li>
            <li class="nav-item"><a class="nav-link" href="#">Contact</a></li>
          </ul>
        </div>
      </div>
    </nav>

    <!-- Hero Section -->
    <section class="hero" data-aos="fade-up" data-aos-duration="1500">
      <div class="container">
        <h1>Welcome to the Library Management System</h1>
        <p>
          Organize your library with ease — add, edit, and manage all your books
          efficiently.
        </p>
        <a href="viewBooks" class="btn-main mt-3">📖 View Books</a>
        <a href="Add-Book.jsp" class="btn-main mt-3 ms-2">➕ Add New Book</a>
      </div>
    </section>

    <!-- Profile Section -->
    <section class="profile" data-aos="zoom-in" data-aos-duration="1500">
      <div class="container">
        <img
          src="data:image/jpeg;base64,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"
          alt="Coding With Sudhir"
        />
        <h2>
          <a href="https://www.youtube.com/@CodingWithSudhir" target="_blank">
            Coding With Sudhir
          </a>
        </h2>
        <p>
          🎥 Watch the complete step-by-step guide for this Library Management
          System on YouTube.
        </p>
        <a
          href="https://www.youtube.com/@CodingWithSudhir"
          target="_blank"
          class="btn-main"
          >▶ Watch Now</a
        >
      </div>
    </section>

    <!-- Features Section -->
    <section class="features">
      <div class="container">
        <h3 data-aos="fade-down" data-aos-duration="1000">
          📘 Why Use Our System?
        </h3>
        <div class="row mt-4">
          <div class="col-md-4" data-aos="fade-right" data-aos-duration="1000">
            <h5>🧾 Easy Book Management</h5>
            <p>Add, update, and delete books effortlessly with a few clicks.</p>
          </div>
          <div
            class="col-md-4"
            data-aos="fade-up"
            data-aos-duration="1000"
            data-aos-delay="200"
          >
            <h5>🔍 Quick Search</h5>
            <p>Find your favorite books instantly by title or author.</p>
          </div>
          <div
            class="col-md-4"
            data-aos="fade-left"
            data-aos-duration="1000"
            data-aos-delay="400"
          >
            <h5>📊 Organized Records</h5>
            <p>
              Keep all your library records safe and structured in one place.
            </p>
          </div>
        </div>
      </div>
    </section>

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

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    <!-- AOS JS -->
    <script src="https://cdn.jsdelivr.net/npm/aos@2.3.4/dist/aos.js"></script>
    <script>
      AOS.init({
        once: true, // animation occurs only once
        easing: "ease-in-out",
        duration: 1000,
        offset: 100,
      });
    </script>
  </body>
</html>
