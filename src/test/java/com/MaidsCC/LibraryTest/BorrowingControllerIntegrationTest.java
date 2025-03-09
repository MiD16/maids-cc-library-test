package com.MaidsCC.LibraryTest;
import org.junit.jupiter.api.Test;
import static org.springframework.security.test.web.servlet.request.SecurityMockMvcRequestPostProcessors.httpBasic;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.AutoConfigureMockMvc;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.web.servlet.MockMvc;

import com.MaidsCC.LibraryTest.Models.Book;
import com.MaidsCC.LibraryTest.Models.Patron;
import com.MaidsCC.LibraryTest.Repositories.BookRepository;
import com.MaidsCC.LibraryTest.Repositories.PatronRepository;

import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.*;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.*;

@SpringBootTest
@AutoConfigureMockMvc
public class BorrowingControllerIntegrationTest {
    @Autowired
    private MockMvc mockMvc;

    @Autowired
    private BookRepository bookRepository;

    @Autowired
    private PatronRepository patronRepository;

    @Test
    public void testBorrowBook() throws Exception {
        Book book = new Book();
        book.setTitle("1984");
        book.setAuthor("George Orwell");
        book.setPublicationYear(1949);
        book.setIsbn("9780451524935");
        bookRepository.save(book);

        Patron patron = new Patron();
        patron.setName("John Doe");
        patron.setContactInformation("john.doe@example.com");
        patronRepository.save(patron);

        mockMvc.perform(post("/api/borrow/{bookId}/patron/{patronId}", book.getId(), patron.getId()).with(httpBasic("admin", "admin")))
               .andExpect(status().isOk())
               .andExpect(jsonPath("$.book.title").value("1984"))
               .andExpect(jsonPath("$.patron.name").value("John Doe"));
    }
}
