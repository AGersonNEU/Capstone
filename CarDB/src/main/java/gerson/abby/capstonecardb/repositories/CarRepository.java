package gerson.abby.capstonecardb.repositories;

import gerson.abby.capstonecardb.models.Car;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface CarRepository extends JpaRepository<Car, Integer> {

    @Query("select c from Car c where c.id = :id")
    Car findCarById(@Param("id") int id);

    @Query("select c from Car c where c.name = :name")
    Car findCarByName(@Param("name") String name);

    @Query("select * from Car c where c.userId = :userId")
    List<Car> findCarsByUserId(@Param("userId")int userId);


}
