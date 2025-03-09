package com.MaidsCC.LibraryTest;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import static org.springframework.security.test.web.servlet.request.SecurityMockMvcRequestPostProcessors.httpBasic;
import org.springframework.boot.test.autoconfigure.web.servlet.AutoConfigureMockMvc;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.web.servlet.MockMvc;

import com.MaidsCC.LibraryTest.Models.Patron;
import com.MaidsCC.LibraryTest.Repositories.PatronRepository;

import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.*;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.*;

@SpringBootTest
@AutoConfigureMockMvc
public class PatronControllerIntegrationTest {
    @Autowired
    private MockMvc mockMvc;

    @Autowired
    private PatronRepository patronRepository;

    @Test
    public void testGetAllPatrons() throws Exception {
        Patron patron = new Patron();
        patron.setName("John Doe");
        patron.setContactInformation("john.doe@example.com");
        patronRepository.save(patron);

        mockMvc.perform(get("/api/patrons").with(httpBasic("admin", "admin")))
               .andExpect(status().isOk())
               .andExpect(jsonPath("$[0].name").value("John Doe"));
    }

    @Test
    public void testAddPatron() throws Exception {
        String patronJson = "{\"name\": \"John Doe\", \"contactInformation\": \"john.doe@example.com\"}";

        mockMvc.perform(post("/api/patrons").with(httpBasic("admin", "admin"))
                .contentType("application/json")
                .content(patronJson))
               .andExpect(status().isOk())
               .andExpect(jsonPath("$.name").value("John Doe"));
    }
}
