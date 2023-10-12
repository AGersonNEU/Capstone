package com.example.testingsql.repositories;

import com.example.testingsql.models.Account;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface UserRepository extends JpaRepository<Account,Integer> {

    @Query("select a from Account a where a.id = :id")
    Account findAccountById(@Param("id") int id);



}
