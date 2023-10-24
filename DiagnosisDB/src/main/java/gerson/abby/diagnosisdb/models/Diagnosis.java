package gerson.abby.diagnosisdb.models;

import com.fasterxml.jackson.annotation.JsonIgnore;
import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;

@Entity
@Getter
@Setter
public class Diagnosis {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int id;

    @JsonIgnore
    @ManyToOne
    @JoinColumn(name = "car_id")
    private Car car;

    private String description;

    private String fix;

    //private String OBD_id;

    public Diagnosis(){

    }

    public Diagnosis(DataDiagnosis diagnosis){
        this.description = diagnosis.getDescription();
        this.fix = diagnosis.getFix();
        this.car = diagnosis.getCar();
    }

}
