package gerson.abby.diagnosisdb.models;

import com.fasterxml.jackson.annotation.JsonIgnore;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class DataDiagnosis {

    @JsonIgnore
    @ManyToOne
    @JoinColumn(name = "car_id")
    private Car car;

    private String description;

    private String fix;


}
