package com.MaidsCC.LibraryTest;

import static org.springframework.security.test.web.servlet.request.SecurityMockMvcRequestPostProcessors.httpBasic;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.AutoConfigureMockMvc;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.web.servlet.MockMvc;

import com.MaidsCC.LibraryTest.Models.Book;
import com.MaidsCC.LibraryTest.Repositories.BookRepository;

import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.*;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.*;

@SpringBootTest
@AutoConfigureMockMvc
public class BookControllerIntegrationTest {
    @Autowired
    private MockMvc mockMvc;

    @Autowired
    private BookRepository bookRepository;

    @Test
    public void testGetAllBooks() throws Exception {
        Book book = new Book();
        book.setTitle("The Great Gatsby");
        book.setAuthor("F. Scott Fitzgerald");
        book.setPublicationYear(1925);
        book.setIsbn("9780743273565");
        bookRepository.save(book);

        mockMvc.perform(get("/api/books").with(httpBasic("admin", "admin")))
               .andExpect(status().isOk())
               .andExpect(jsonPath("$[0].title").value("The Great Gatsby"));
    }
}
