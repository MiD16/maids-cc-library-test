package com.MaidsCC.LibraryTest;

import io.restassured.RestAssured;
import io.restassured.http.ContentType;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.boot.test.web.server.LocalServerPort;

import static io.restassured.RestAssured.given;
import static org.hamcrest.Matchers.equalTo;

@SpringBootTest(webEnvironment = SpringBootTest.WebEnvironment.DEFINED_PORT)
public class BookControllerEndToEndTest {
    @LocalServerPort
    private int port;

    @BeforeEach
    public void setUp() {
        RestAssured.port = port;
        System.out.println("Using port: " + port);
    }

    @Test
    public void testAddBook() {
        given()
            .auth().basic("admin", "admin")
            .contentType(ContentType.JSON)
            .body("{\"title\": \"The Great Gatsby\", \"author\": \"F. Scott Fitzgerald\", \"publicationYear\": 1925, \"isbn\": \"9780743273565\"}")
        .when()
            .post("LibraryTest/api/books")
        .then()
            .statusCode(200)
            .body("title", equalTo("The Great Gatsby"));
    }

    @Test
    public void testGetBookById() {
        given()
            .auth().basic("admin", "admin")
            .contentType(ContentType.JSON)
            .body("{\"title\": \"The Great Gatsby\", \"author\": \"F. Scott Fitzgerald\", \"publicationYear\": 1925, \"isbn\": \"9780743273565\"}")
        .when()
            .post("LibraryTest/api/books")
        .then()
            .statusCode(200);

        given()
        .auth().basic("admin", "admin")
        .contentType(ContentType.JSON)
        .when()
            .get("LibraryTest/api/books/1")
        .then()
            .statusCode(200)
            .body("title", equalTo("The Great Gatsby"));
    }
}
