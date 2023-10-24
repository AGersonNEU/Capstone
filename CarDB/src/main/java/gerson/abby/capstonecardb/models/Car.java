package gerson.abby.capstonecardb.models;

import com.fasterxml.jackson.annotation.JsonIgnore;
import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;

@Entity
@Getter
@Setter
public class Car {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int id;

    @JsonIgnore
    @ManyToOne
    @JoinColumn(name = "account_id")
    private Account account;

    private String name;

    private String make;

    private String model;

    private int year;

    private String image;


    public Car(DataCar dataCar) {
        this.name = dataCar.getName();
        this.make = dataCar.getMake();
        this.model = dataCar.getModel();
        this.year = dataCar.getYear();
        this.account = dataCar.getAccount();
    }

    public Car() {

    }
}
