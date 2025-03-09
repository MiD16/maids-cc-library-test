package com.MaidsCC.LibraryTest.Repositories;

import com.MaidsCC.LibraryTest.Models.Book;
import org.springframework.data.jpa.repository.JpaRepository;

public interface BookRepository extends JpaRepository<Book, Long> {}