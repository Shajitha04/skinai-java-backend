package com.skinai.model;

import jakarta.persistence.*;
import java.time.LocalDateTime;

@Entity
@Table(name = "users")
public class User {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long userId;

    private String fullName;
    private String email;
    private String password;
    private LocalDateTime createdAt = LocalDateTime.now();

    // Getters and Setters
}
