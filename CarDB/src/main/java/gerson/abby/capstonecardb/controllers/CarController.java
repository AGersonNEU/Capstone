package gerson.abby.capstonecardb.controllers;


import gerson.abby.capstonecardb.models.Car;
import gerson.abby.capstonecardb.models.DataCar;
import gerson.abby.capstonecardb.repositories.CarRepository;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/car")
public class CarController {

    private final CarRepository carRepo;
    public CarController(CarRepository carRepo){

        this.carRepo = carRepo;
    }

    ////////////////////////CREATE///////////////////////////
    @PostMapping("")
    public Car createCar(@RequestBody DataCar car){

        car.setAccount(carRepo.findAccountById(4));

        return carRepo.save(new Car(car));
    }


    ////////////////////////READ///////////////////////////
    @GetMapping("/{id}")
    public Car findCarByID(@PathVariable int id){

        return carRepo.findCarById(id);
    }

    @GetMapping("/name/{name}")
    public Car findCarByName(@PathVariable String name){

        return carRepo.findCarByName(name);
    }

    @GetMapping("/all/{accountId}")
    public List<Car> findAllCarsforAccount(@PathVariable int accountId){
        return carRepo.findCarsByAccount_Id(accountId);
    }


    ////////////////////////UPDATE///////////////////////////
    @PostMapping("/{name}/{updateName}")
    public Car updateCarName(@PathVariable String name, @PathVariable String updateName){
        Car foundCar = carRepo.findCarByName(name);
        foundCar.setName(updateName);
        return carRepo.save(foundCar);
    }


    ////////////////////////DELETE///////////////////////////
    @DeleteMapping("/{id}")
    public void deleteCar(@PathVariable int id){

        carRepo.delete(carRepo.findCarById(id));
    }

}
