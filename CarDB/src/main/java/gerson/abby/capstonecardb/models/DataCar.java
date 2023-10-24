package gerson.abby.capstonecardb.models;

import com.fasterxml.jackson.annotation.JsonIgnore;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class DataCar {

    private String name;
    private String make;
    private String model;
    private int year;

    @JsonIgnore
    @ManyToOne
    @JoinColumn(name = "account_id")
    private Account account;
}
