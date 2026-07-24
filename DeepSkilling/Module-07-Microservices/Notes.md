# Module 07 – Microservices Architecture using ASP.NET Core Web API

## Introduction

Microservices Architecture is a software development approach in which an application is divided into multiple small, independent services. Each service performs a specific business function and communicates with other services through APIs or messaging protocols.

Unlike a monolithic application, each microservice can be developed, deployed, and scaled independently.

---

# Microservices Architecture

Microservices architecture consists of independently deployable services.

### Characteristics

- Independent deployment
- Loose coupling
- High scalability
- Fault isolation
- Technology independence
- Separate databases
- API-based communication

---

# Monolithic vs Microservices

## Monolithic Architecture

- Single application
- Shared database
- Easy to develop initially
- Difficult to scale
- Entire application is deployed together

## Microservices Architecture

- Multiple independent services
- Database per service
- Easy to scale
- Faster deployments
- Better fault isolation

---

# Advantages of Microservices

- Independent development
- Easy maintenance
- High scalability
- Faster deployment
- Better fault tolerance
- Technology flexibility
- Improved reliability

---

# Challenges

- Complex deployment
- Network latency
- Service communication
- Distributed data management
- Monitoring complexity
- Security management

---

# ASP.NET Core Web API

ASP.NET Core Web API is used to build RESTful services that expose HTTP endpoints for communication between microservices.

Features include:

- Cross-platform support
- High performance
- Dependency Injection
- Middleware pipeline
- Built-in Logging
- Swagger integration

---

# Microservice Communication

Services communicate using different methods.

### HTTP REST API

- Request/Response model
- JSON data exchange
- Most common communication method

### gRPC

- High-performance communication
- Uses Protocol Buffers
- Suitable for internal services

### Messaging

- Asynchronous communication
- RabbitMQ
- Azure Service Bus
- Kafka

---

# Service Discovery

Service Discovery allows services to locate each other dynamically.

Benefits:

- Dynamic registration
- Load balancing
- Easy scaling
- High availability

Examples:

- Consul
- Eureka
- Kubernetes Service Discovery

---

# Database Patterns

## Database per Service

Each service manages its own database.

Advantages:

- Independent deployment
- Better isolation
- Loose coupling

## Shared Database

Multiple services use one database.

Disadvantages:

- Tight coupling
- Difficult maintenance
- Poor scalability

---

# Data Consistency

Distributed systems require consistency strategies.

Common approaches:

- Event-driven architecture
- Saga Pattern
- Eventual Consistency

---

# JWT Authentication

JWT (JSON Web Token) is a secure way to authenticate users.

Process:

1. User logs in.
2. Server validates credentials.
3. JWT Token is generated.
4. Client stores the token.
5. Token is sent with every request.
6. Server validates the token before processing requests.

Benefits:

- Stateless authentication
- Secure communication
- Easy integration
- Scalable authentication

---

# Authorization

Authorization determines what resources a user can access.

Types:

- Role-Based Authorization
- Policy-Based Authorization

---

# Logging

Logging helps developers monitor application behavior.

Benefits:

- Track errors
- Debug issues
- Performance monitoring
- Audit activities

Popular Logging Frameworks:

- Built-in Logging
- Serilog
- NLog

---

# Health Checks

Health Checks monitor service availability.

Examples:

- Database connection
- API availability
- External service status

Endpoint:

```
/health
```

---

# Deployment Strategies

## Rolling Update

Updates services gradually with zero downtime.

Advantages:

- Continuous availability
- Low risk

---

## Blue-Green Deployment

Two identical environments are maintained.

Blue → Current Version

Green → New Version

Traffic is switched after successful testing.

Advantages:

- Zero downtime
- Easy rollback

---

# CI/CD

Continuous Integration

- Build
- Test
- Package

Continuous Deployment

- Deploy automatically
- Reduce manual work
- Faster delivery

Tools:

- GitHub Actions
- Azure DevOps

---

# Docker

Docker packages applications into containers.

Advantages:

- Portable
- Lightweight
- Fast deployment
- Consistent environments

Basic Commands:

```
docker build
docker run
docker images
docker ps
```

---

# Kubernetes

Kubernetes manages containerized applications.

Features:

- Auto Scaling
- Load Balancing
- Self Healing
- Rolling Updates

---

# Hands-on Summary

Implemented:

- ASP.NET Core Web API
- JWT Authentication
- Secure API Endpoint
- Swagger Testing

---

# Key Takeaways

- Microservices divide applications into independent services.
- REST APIs enable service communication.
- JWT secures APIs using token-based authentication.
- Logging and Health Checks improve reliability.
- Docker and Kubernetes simplify deployment.
- CI/CD automates application delivery.
- Microservices provide scalability, flexibility, and maintainability for modern applications.