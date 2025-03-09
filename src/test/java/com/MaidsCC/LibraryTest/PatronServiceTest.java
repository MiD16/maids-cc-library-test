package com.MaidsCC.LibraryTest;

import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.junit.jupiter.MockitoExtension;

import com.MaidsCC.LibraryTest.Models.Patron;
import com.MaidsCC.LibraryTest.Repositories.PatronRepository;
import com.MaidsCC.LibraryTest.Services.PatronService;

import java.util.Optional;

import static org.assertj.core.api.Assertions.assertThat;
import static org.mockito.ArgumentMatchers.any;
import static org.mockito.Mockito.*;

@ExtendWith(MockitoExtension.class)
public class PatronServiceTest {
    @Mock
    private PatronRepository patronRepository;

    @InjectMocks
    private PatronService patronService;

    @Test
    public void testAddPatron() {
        Patron patron = new Patron();
        patron.setName("John Doe");
        patron.setContactInformation("john.doe@example.com");

        when(patronRepository.save(any(Patron.class))).thenReturn(patron);

        Patron savedPatron = patronService.addPatron(patron);
        assertThat(savedPatron.getName()).isEqualTo("John Doe");
        verify(patronRepository, times(1)).save(any(Patron.class));
    }

    @Test
    public void testGetPatronById() {
        Patron patron = new Patron();
        patron.setId(1L);
        patron.setName("John Doe");

        when(patronRepository.findById(1L)).thenReturn(Optional.of(patron));

        Optional<Patron> foundPatron = patronService.getPatronById(1L);
        assertThat(foundPatron).isPresent();
        assertThat(foundPatron.get().getName()).isEqualTo("John Doe");
    }

    @Test
    public void testUpdatePatron() {
        Patron patron = new Patron();
        patron.setId(1L);
        patron.setName("John Doe");
        patron.setContactInformation("john.doe@example.com");

        Patron updatedPatron = new Patron();
        updatedPatron.setName("Jane Doe");
        updatedPatron.setContactInformation("jane.doe@example.com");

        when(patronRepository.findById(1L)).thenReturn(Optional.of(patron));
        when(patronRepository.save(any(Patron.class))).thenReturn(updatedPatron);

        Patron result = patronService.updatePatron(1L, updatedPatron);
        assertThat(result.getName()).isEqualTo("Jane Doe");
        verify(patronRepository, times(1)).save(any(Patron.class));
    }

    @Test
    public void testDeletePatron() {
        doNothing().when(patronRepository).deleteById(1L);
        patronService.deletePatron(1L);
        verify(patronRepository, times(1)).deleteById(1L);
    }
}
