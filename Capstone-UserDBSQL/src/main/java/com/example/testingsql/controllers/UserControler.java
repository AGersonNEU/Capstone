package com.example.testingsql.controllers;

import com.example.testingsql.repositories.UserRepository;
import com.example.testingsql.models.Account;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/user")
public class UserControler {

    private final UserRepository userRepo;
    public UserControler(UserRepository userRepo){
        this.userRepo = userRepo;
    }

    ////////////////////////CREATE///////////////////////////
    @PostMapping("")
    public Account createUser(){

        return userRepo.save(new Account(1, "urmom"));
    }


    ////////////////////////READ///////////////////////////
    @GetMapping("/{id}")
    public Account getUserByID(@PathVariable int id){

        return userRepo.findAccountById(id);
    }

    ////////////////////////UPDATE///////////////////////////


    ////////////////////////DELETE///////////////////////////
}
