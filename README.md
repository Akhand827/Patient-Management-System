# 🏥 Distributed Patient Management System

A production-ready, event-driven microservices architecture designed for healthcare patient record management. Built with **Java Spring Boot**, **gRPC**, **Apache Kafka**, and **PostgreSQL**, with automated infrastructure simulation on **AWS (via LocalStack & IaC CDK)**.

---

## 🚀 Key Highlights & Architecture

- **Microservices Architecture:** Decoupled services handling core patient domains, authentication, and inter-service communications.
- **Event-Driven Communication:** Asynchronous messaging and event streaming via **Apache Kafka** (AWS MSK pattern).
- **High-Performance RPC:** **gRPC** protocols implemented for low-latency, strongly-typed internal microservice communication alongside traditional **REST APIs**.
- **API Gateway & Routing:** Centralized entry point with **Spring Cloud Gateway**, dynamic routing, and rate-limiting.
- **Enterprise Security:** JWT-based stateless authentication and authorization using custom Bearer token security microservice.
- **Cloud Infrastructure as Code (IaC):** Infrastructure deployment simulated using **AWS CDK** targeting **LocalStack** (simulating AWS ECS, RDS, and API Gateway locally).
- **Containerized Workflows:** Entire environment managed via multi-container **Docker Compose** orchestration.

---

## 🛠 Tech Stack

| Domain | Tech / Frameworks Used |
| :--- | :--- |
| **Backend Framework** | Java 17/21, Spring Boot 3, Spring Cloud Gateway, Spring Data JPA |
| **Inter-Service Comms** | RESTful APIs, gRPC (Protobuf), Apache Kafka |
| **Database & Caching** | PostgreSQL, Dockerized Database Containers |
| **Security** | Spring Security, JSON Web Tokens (JWT) |
| **DevOps & Cloud** | Docker, Docker Compose, AWS CDK (Java), LocalStack (ECS, RDS, MSK) |
| **Testing & Tools** | JUnit 5, Mockito, Postman, IntelliJ IDEA |

---

--- ## ⚡ Features & Modules 1. **Patient Lifecycle Management:** Complete CRUD endpoints with data validation, pagination, and unified custom error handling (`@ControllerAdvice`). 
2. **Auth & Identity Service:** Centralized JWT generation, key verification, and secure user management. 
3. **Asynchronous Event Processing:** Kafka producers and consumers handling domain events for scalable audit logging and downstream integration. 
4. **Resilient Data Access:** JPA/Hibernate integration mapped with optimized UUID primary key strategies and relational database schema migrations. 
5. **Infrastructure Automation:** Bash deployment scripts automating local AWS infrastructure tear-down and deployment (`cdk deploy` with LocalStack).
 --- ## 🔧 Getting Started 
### Prerequisites 
- **Java 17+** Installed 
- **Docker Desktop** & Docker Compose 
- **Node.js** & **AWS CDK CLI** (for cloud infrastructure scripts) 
### Local Setup (Docker) 
1.	**Clone the Repository:** ```bash git clone [https://github.com/YOUR_GITHUB_USERNAME/patient-management-system.git](https://github.com/YOUR_GITHUB_USERNAME/patient-management-system.git) cd patient-management-system

Key Learnings & Engineering Practices
•	Structured enterprise microservice domains with strict boundary separation.
•	Implemented dual communication modes: gRPC for internal high-throughput demands and REST for external consumer convenience.
•	Developed cloud-native mindset using Infrastructure as Code (AWS CDK) without cloud vendor lock-in during testing via LocalStack.
•	Handled edge cases including concurrent data mutations, global exception logging, and distributed JWT verification.

