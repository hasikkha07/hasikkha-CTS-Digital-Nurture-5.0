# 01 – JWT Authentication in Microservices

## Overview

This hands-on demonstrates how to implement JWT (JSON Web Token) Authentication in an ASP.NET Core Web API following the Microservices architecture. It provides secure authentication and authorization for API endpoints using bearer tokens.

---

## Objectives

After completing this exercise, you will be able to:

- Understand JWT Authentication.
- Configure JWT in ASP.NET Core Web API.
- Generate secure JWT tokens.
- Protect API endpoints using authorization.
- Test APIs using Swagger.
- Understand token-based authentication in Microservices.

---

## Project Structure

```
01-Microservices-JWT
│
├── JwtMicroservice
│   ├── Controllers
│   ├── Models
│   ├── Services
│   ├── Middleware
│   ├── Program.cs
│   ├── appsettings.json
│   └── JwtMicroservice.csproj
│
├── README.md
└── Notes.md
```

---

## Features

- ASP.NET Core Web API
- JWT Authentication
- Token Generation
- Secure API Endpoints
- Swagger Integration
- Middleware Configuration
- Dependency Injection

---

## Technologies Used

- ASP.NET Core Web API
- C#
- JWT Bearer Authentication
- Swagger / OpenAPI
- Visual Studio Code
- .NET 10

---

## API Endpoints

### Login

**POST**

```
/api/Auth/login
```

Request Body

```json
{
  "username": "admin",
  "password": "admin123"
}
```

Response

```json
{
  "token": "JWT_TOKEN"
}
```

---

### Secure Endpoint

**GET**

```
/api/Auth/secure
```

Authorization Header

```
Bearer <JWT_TOKEN>
```

Response

```
Access Granted
```

---

## Authentication Flow

1. User sends username and password.
2. Server validates credentials.
3. JWT Token is generated.
4. Client stores the token.
5. Token is included in the Authorization header.
6. Server validates the token.
7. Authorized user accesses protected resources.

---

## Advantages of JWT

- Stateless Authentication
- Secure Communication
- Easy Scalability
- Fast Authorization
- Suitable for Distributed Systems

---

## Learning Outcome

After completing this hands-on, you will understand how JWT Authentication secures ASP.NET Core Web APIs and enables secure communication between Microservices using token-based authentication.