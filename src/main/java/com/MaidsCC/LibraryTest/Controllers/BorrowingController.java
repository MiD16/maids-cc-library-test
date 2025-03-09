package com.MaidsCC.LibraryTest.Controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import com.MaidsCC.LibraryTest.Models.BorrowingRecord;
import com.MaidsCC.LibraryTest.Services.BorrowingRecordService;

@RestController
@RequestMapping("/api")
public class BorrowingController {
    @Autowired
    private BorrowingRecordService borrowingRecordService;

    @PostMapping("/borrow/{bookId}/patron/{patronId}")
    public ResponseEntity<BorrowingRecord> borrowBook(@PathVariable Long bookId, @PathVariable Long patronId) {
        return ResponseEntity.ok(borrowingRecordService.borrowBook(bookId, patronId));
    }

    @PutMapping("/return/{bookId}/patron/{patronId}")
    public ResponseEntity<BorrowingRecord> returnBook(@PathVariable Long bookId, @PathVariable Long patronId) {
        return ResponseEntity.ok(borrowingRecordService.returnBook(bookId, patronId));
    }
}
