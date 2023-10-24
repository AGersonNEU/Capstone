package gerson.abby.capstonecardb.models;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;
import lombok.Getter;
import lombok.Setter;

import java.util.List;
import java.util.Set;

@Entity
@Getter
@Setter
public class Account {

    @Id
    private int id;

    @OneToMany(mappedBy = "account")
    private List<Car> cars;
}
