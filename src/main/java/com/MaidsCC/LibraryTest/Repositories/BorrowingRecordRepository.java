package com.MaidsCC.LibraryTest.Repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.MaidsCC.LibraryTest.Models.Book;
import com.MaidsCC.LibraryTest.Models.BorrowingRecord;
import com.MaidsCC.LibraryTest.Models.Patron;

import java.util.Optional;

public interface BorrowingRecordRepository extends JpaRepository<BorrowingRecord, Long> {
    Optional<BorrowingRecord> findByBookAndReturnDateIsNull(Book book);

    Optional<BorrowingRecord> findByBookAndPatronAndReturnDateIsNull(Book book, Patron patron);
}
