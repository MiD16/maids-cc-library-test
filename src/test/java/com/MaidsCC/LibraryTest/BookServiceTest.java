package com.MaidsCC.LibraryTest;

import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.junit.jupiter.MockitoExtension;

import com.MaidsCC.LibraryTest.Models.Book;
import com.MaidsCC.LibraryTest.Repositories.BookRepository;
import com.MaidsCC.LibraryTest.Services.BookService;

import java.util.Optional;

import static org.assertj.core.api.Assertions.assertThat;
import static org.mockito.ArgumentMatchers.any;
import static org.mockito.Mockito.*;

@ExtendWith(MockitoExtension.class)
public class BookServiceTest {
    @Mock
    private BookRepository bookRepository;

    @InjectMocks
    private BookService bookService;

    @Test
    public void testAddBook() {
        Book book = new Book();
        book.setTitle("1984");
        book.setAuthor("George Orwell");
        book.setPublicationYear(1949);
        book.setIsbn("9780451524935");

        when(bookRepository.save(any(Book.class))).thenReturn(book);

        Book savedBook = bookService.addBook(book);
        assertThat(savedBook.getTitle()).isEqualTo("1984");
        verify(bookRepository, times(1)).save(any(Book.class));
    }

    @Test
    public void testGetBookById() {
        Book book = new Book();
        book.setId(1L);
        book.setTitle("1984");

        when(bookRepository.findById(1L)).thenReturn(Optional.of(book));

        Optional<Book> foundBook = bookService.getBookById(1L);
        assertThat(foundBook).isPresent();
        assertThat(foundBook.get().getTitle()).isEqualTo("1984");
    }
}
