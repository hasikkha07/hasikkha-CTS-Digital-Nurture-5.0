# Module 06 – ASP.NET Core Web API Notes

## What is Web API?

ASP.NET Core Web API is a framework used to build RESTful HTTP services that can be consumed by web applications, mobile applications, desktop software, and other APIs.

---

## REST API

REST stands for Representational State Transfer.

Characteristics:
- Client-Server Architecture
- Stateless Communication
- Uniform Interface
- Resource-Based URLs
- Uses HTTP Protocol

Example:

GET /api/products

POST /api/products

PUT /api/products/1

DELETE /api/products/1

---

## HTTP Methods

GET
- Retrieve data

POST
- Insert new data

PUT
- Update existing data

DELETE
- Remove data

PATCH
- Partial update

---

## Status Codes

200 OK

201 Created

204 No Content

400 Bad Request

401 Unauthorized

403 Forbidden

404 Not Found

500 Internal Server Error

---

## Controllers

Controllers receive HTTP requests and return HTTP responses.

Example:

StudentController

ProductController

EmployeeController

---

## Routing

Routing maps URLs to controller actions.

Example:

api/student

api/product

api/employee

---

## Model Binding

Model Binding automatically maps incoming request data to C# objects.

Example:

POST Student

↓

Student object

---

## Validation

Validation checks whether the incoming model is valid.

Common attributes:

Required

Range

StringLength

EmailAddress

---

## Dependency Injection

DI allows services to be injected into controllers.

Advantages

- Loose coupling
- Easy testing
- Better maintainability

---

## Middleware

Middleware processes every HTTP request.

Examples

Authentication

Logging

Exception Handling

Authorization

---

## Exception Handling

Exceptions should return meaningful HTTP responses.

Use

try-catch

Custom Middleware

Global Exception Handling

---

## Swagger

Swagger automatically generates API documentation.

Benefits

- Interactive API testing
- Easy Documentation
- Endpoint Discovery

URL

/swagger

---

## API Testing

Tools

Swagger UI

Postman

curl

---

## REST API Best Practices

- Use nouns in URLs
- Use correct HTTP methods
- Return proper status codes
- Validate user input
- Handle exceptions
- Use Dependency Injection
- Keep controllers lightweight
- Follow REST naming conventions
- Document APIs with Swagger

---

## Summary

This module provides practical experience in developing RESTful APIs using ASP.NET Core, implementing controllers, middleware, validation, dependency injection, exception handling, and Swagger documentation.