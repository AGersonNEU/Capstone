package com.example.testingsql.controllers;

import com.example.testingsql.models.DataAccount;
import com.example.testingsql.models.LogInDataAccount;
import com.example.testingsql.repositories.UserRepository;
import com.example.testingsql.models.Account;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/user")
public class UserController {

    private final UserRepository userRepo;
    public UserController(UserRepository userRepo){
        this.userRepo = userRepo;
    }


    ////////////////////////CREATE///////////////////////////
    @PostMapping("")
    public Account createUser(@RequestBody DataAccount newAccount){
        return userRepo.save(new Account(newAccount));
    }


    ////////////////////////READ///////////////////////////
    @GetMapping("/{id}")
    public Account getUserByID(@PathVariable int id){

        return userRepo.findAccountById(id);
    }

    @GetMapping("")
    public int getAccountIdByAccountNameAndEmail(@RequestBody DataAccount findAccount){
        return userRepo.findAccountByNameAndEmail(findAccount.getName(), findAccount.getEmail()).getId();
    }

    @PostMapping("/login")
    public Account getAccountIdByAccountUsernameAndPassword(@RequestBody LogInDataAccount findAccount){
        return userRepo.findAccountByUsernameAndPassword(findAccount.getUsername(), findAccount.getPassword());
    }


    ////////////////////////UPDATE///////////////////////////
    @PostMapping("/{id}/{username}")
    public Account updateAccountUsername(@PathVariable int id, @PathVariable String username){
        Account foundAccount = userRepo.findAccountById(id);
        foundAccount.setUsername(username);

        return userRepo.save(foundAccount);
    }

    @PostMapping("/{id}/{name}")
    public Account updateAccountName(@PathVariable int id, @PathVariable String name){
        Account foundAccount = userRepo.findAccountById(id);
        foundAccount.setName(name);

        return userRepo.save(foundAccount);
    }


    ////////////////////////DELETE///////////////////////////
    @DeleteMapping("/{id}")
    public Account deleteAccount(@PathVariable int id){
        return userRepo.deleteAccountById(id);
    }
}
