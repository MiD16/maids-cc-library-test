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
public class PatronControllerEndToEndTest {
    @LocalServerPort
    private int port;

    @BeforeEach
    public void setUp() {
        RestAssured.port = port;
    }

    @Test
    public void testAddPatron() {
        given()
        .auth().basic("admin", "admin")
            .contentType(ContentType.JSON)
            .body("{\"name\": \"John Doe\", \"contactInformation\": \"john.doe@example.com\"}")
        .when()
            .post("LibraryTest/api/patrons")
        .then()
            .statusCode(200)
            .body("name", equalTo("John Doe"));
    }

    @Test
    public void testGetPatronById() {
        given()
        .auth().basic("admin", "admin")
            .contentType(ContentType.JSON)
            .body("{\"name\": \"John Doe\", \"contactInformation\": \"john.doe@example.com\"}")
        .when()
            .post("LibraryTest/api/patrons");

        given()
        .auth().basic("admin", "admin")
        .contentType(ContentType.JSON)
        .when()
            .get("LibraryTest/api/patrons/1")
        .then()
            .statusCode(200)
            .body("name", equalTo("John Doe"));
    }
}
