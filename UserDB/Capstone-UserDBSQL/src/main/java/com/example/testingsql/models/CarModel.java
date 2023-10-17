package com.example.testingsql.models;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import lombok.Getter;
import lombok.Setter;

import java.util.Set;

@Entity
@Getter
@Setter
public class CarModel {

    @Id
    private int id;

    @ManyToOne
    @JoinColumn(name = "id", nullable = false)
    private Account account;
}
