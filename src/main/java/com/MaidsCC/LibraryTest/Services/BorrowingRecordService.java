package com.MaidsCC.LibraryTest.Services;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.MaidsCC.LibraryTest.Models.Book;
import com.MaidsCC.LibraryTest.Models.BorrowingRecord;
import com.MaidsCC.LibraryTest.Models.Patron;
import com.MaidsCC.LibraryTest.Repositories.BookRepository;
import com.MaidsCC.LibraryTest.Repositories.BorrowingRecordRepository;
import com.MaidsCC.LibraryTest.Repositories.PatronRepository;

import java.time.LocalDate;
import java.util.List;
import java.util.Optional;

@Service
public class BorrowingRecordService {
    @Autowired
    private BorrowingRecordRepository borrowingRecordRepository;

    @Autowired
    private BookRepository bookRepository;

    @Autowired
    private PatronRepository patronRepository;

    @Transactional
    public BorrowingRecord borrowBook(Long bookId, Long patronId) {
        Book book = bookRepository.findById(bookId).orElseThrow(() -> new RuntimeException("Book not found"));
        Patron patron = patronRepository.findById(patronId).orElseThrow(() -> new RuntimeException("Patron not found"));

        Optional<BorrowingRecord> existingRecord = borrowingRecordRepository.findByBookAndReturnDateIsNull(book);
        if (existingRecord.isPresent()) {
            throw new RuntimeException("Book is already borrowed");
        }

        BorrowingRecord borrowingRecord = new BorrowingRecord();
        borrowingRecord.setBook(book);
        borrowingRecord.setPatron(patron);
        borrowingRecord.setBorrowingDate(LocalDate.now());
        return borrowingRecordRepository.save(borrowingRecord);
    }

    @Transactional
    public BorrowingRecord returnBook(Long bookId, Long patronId) {
        List<Book> books = bookRepository.findAll();
        for(Book b: books) {
            System.out.println("Debugging: " + b.getId() + "- " + b.getTitle());
        }
        Book book = bookRepository.findById(bookId).orElseThrow(() -> new RuntimeException("Book not found"));
        Patron patron = patronRepository.findById(patronId).orElseThrow(() -> new RuntimeException("Patron not found"));

        BorrowingRecord borrowingRecord = borrowingRecordRepository.findByBookAndPatronAndReturnDateIsNull(book, patron)
                .orElseThrow(() -> new RuntimeException("No active borrowing record found"));

        borrowingRecord.setReturnDate(LocalDate.now());
        return borrowingRecordRepository.save(borrowingRecord);
    }
}