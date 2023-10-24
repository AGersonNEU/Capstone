package gerson.abby.diagnosisdb.repositories;

import gerson.abby.diagnosisdb.models.Car;
import gerson.abby.diagnosisdb.models.Diagnosis;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface DiagnosisRepository extends JpaRepository<Diagnosis, Integer> {


    @Query("select c from Car c where c.id = :id")
    Car findCarById(@Param("id") int id);

}
