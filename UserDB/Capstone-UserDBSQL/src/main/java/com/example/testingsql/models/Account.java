package com.example.testingsql.models;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;

import java.util.Set;

@Entity
@Getter
@Setter
public class Account {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int id;

    @OneToMany(mappedBy = "account")
    private Set<CarModel> carId;

    private String name;

    private String email;

    private String username;

    private String password;

    public Account(DataAccount dataAccount) {
        this.name = dataAccount.getName();
        this.email = dataAccount.getEmail();
        this.username = dataAccount.getUsername();
        this.password = dataAccount.getPassword();
    }

    public Account() {
    }
}
