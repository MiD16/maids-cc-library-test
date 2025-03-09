package com.MaidsCC.LibraryTest;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.junit.jupiter.MockitoExtension;

import com.MaidsCC.LibraryTest.Models.Book;
import com.MaidsCC.LibraryTest.Models.BorrowingRecord;
import com.MaidsCC.LibraryTest.Models.Patron;
import com.MaidsCC.LibraryTest.Repositories.BookRepository;
import com.MaidsCC.LibraryTest.Repositories.BorrowingRecordRepository;
import com.MaidsCC.LibraryTest.Repositories.PatronRepository;
import com.MaidsCC.LibraryTest.Services.BorrowingRecordService;

import java.time.LocalDate;
import java.util.List;
import java.util.Optional;

import static org.assertj.core.api.Assertions.assertThat;
import static org.mockito.ArgumentMatchers.any;
import static org.mockito.Mockito.*;

@ExtendWith(MockitoExtension.class)
public class BorrowingRecordServiceTest {
    @Mock
    private BorrowingRecordRepository borrowingRecordRepository;

    @Mock
    private BookRepository bookRepository;

    @Mock
    private PatronRepository patronRepository;

    @InjectMocks
    private BorrowingRecordService borrowingRecordService;

    @Test
    public void testBorrowBook() {
        Book book = new Book();
        book.setId(1L);
        book.setAuthor("someone");
        book.setIsbn("77777777777777");
        book.setPublicationYear(2001);
        book.setTitle("something");
        bookRepository.save(book);

        Patron patron = new Patron();
        patron.setId(1L);
        patron.setContactInformation("t@temp.com");
        patron.setName("someoneElse");
        patronRepository.save(patron);

        List<Book> books = bookRepository.findAll();
        for(Book b: books) {
            System.out.println("Debugging inside test: " + b.getId() + "- " + b.getTitle());
        }

        when(bookRepository.findById(1L)).thenReturn(Optional.of(book));
        when(patronRepository.findById(1L)).thenReturn(Optional.of(patron));
        when(borrowingRecordRepository.save(any(BorrowingRecord.class))).thenAnswer(invocation -> invocation.getArgument(0));

        BorrowingRecord record = borrowingRecordService.borrowBook(1L, 1L);
        assertThat(record.getBook()).isEqualTo(book);
        assertThat(record.getPatron()).isEqualTo(patron);
        assertThat(record.getBorrowingDate()).isEqualTo(LocalDate.now());
    }
}
