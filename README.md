# SKINAI - Java Backend

This is the backend implementation for **SKINAI: Your Pocket Dermatologist**, developed using **Java and Spring Boot**. The backend handles user registration, image upload, and diagnosis data storage. It also integrates with an AI model (hosted separately) for skin condition prediction.

## Technologies Used

- Java 17
- Spring Boot
- Spring Data JPA
- MySQL
- REST APIs

## Features

- User registration and login (basic)
- Store uploaded skin images and predictions
- Fetch diagnosis reports by user
- Integration-ready for AI model via REST

## Project Structure
Got it! Here's a complete and clean README.md file you can directly upload to your GitHub repository for your Java Spring Boot backend (SKINAI) project:


---

# SKINAI - Java Backend (Spring Boot)

This is the backend service for **SKINAI: Your Pocket Dermatologist**, developed using **Java** and **Spring Boot**. It handles user registration, login, and prepares data for AI-based skin disease diagnosis.

---

## Project Overview

This project is a RESTful API developed to support a skin health application. It allows users to register and authenticate, and integrates with future AI services for skin condition analysis.

---

## Tech Stack

- **Language:** Java 17+
- **Framework:** Spring Boot
- **Build Tool:** Maven
- **Database:** MySQL (or H2 for demo/testing)
- **ORM:** Spring Data JPA

---

## Folder Structure

skinai-java-backend/
├── src/
│   └── main/
│       ├── java/
│       │   └── com/
│       │       └── skinai/
│       │           ├── SkinAiApplication.java
│       │           ├── controller/
│       │           │   └── UserController.java
│       │           ├── model/
│       │           │   └── User.java
│       │           └── repository/
│       │               └── UserRepository.java
│       └── resources/
│           └── application.properties
├── pom.xml
└── README.md
