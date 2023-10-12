package com.example.testingsql.models;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import lombok.Getter;
import lombok.Setter;

@Entity
@Getter
@Setter
public class Account {

    @Id
    private int id;

    private String name;

    public Account(int id, String name) {
        this.id = id;
        this.name = name;
    }

    public Account() {

    }
}
