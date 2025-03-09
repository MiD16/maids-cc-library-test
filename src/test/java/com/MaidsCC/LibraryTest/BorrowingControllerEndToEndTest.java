package com.MaidsCC.LibraryTest;

import io.restassured.RestAssured;
import io.restassured.http.ContentType;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.boot.test.web.server.LocalServerPort;

import static io.restassured.RestAssured.given;
import static org.hamcrest.Matchers.equalTo;

@SpringBootTest(webEnvironment = SpringBootTest.WebEnvironment.RANDOM_PORT)
public class BorrowingControllerEndToEndTest {
    @LocalServerPort
    private int port;

    @BeforeEach
    public void setUp() {
        RestAssured.port = port;
    }

    @Test
    public void testBorrowBook() {
        given()
        .auth().basic("admin", "admin")
        .contentType(ContentType.JSON)
            .body("{\"title\": \"The Great Gatsby\", \"author\": \"F. Scott Fitzgerald\", \"publicationYear\": 1925, \"isbn\": \"9780743273565\"}")
        .when()
            .post("/LibraryTest/api/books");

        given()
        .auth().basic("admin", "admin")
        .contentType(ContentType.JSON)
            .body("{\"name\": \"John Doe\", \"contactInformation\": \"john.doe@example.com\"}")
        .when()
            .post("/LibraryTest/api/patrons");

        given()
        .auth().basic("admin", "admin")
        .when()
            .post("/LibraryTest/api/borrow/1/patron/1")
        .then()
            .statusCode(200)
            .body("book.title", equalTo("The Great Gatsby"))
            .body("patron.name", equalTo("John Doe"));
    }
}
