package com.MaidsCC.LibraryTest.Repositories;

import com.MaidsCC.LibraryTest.Models.Patron;
import org.springframework.data.jpa.repository.JpaRepository;

public interface PatronRepository extends JpaRepository<Patron, Long> {
}
