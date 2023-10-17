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

    @Query("delete from Account where id = :id")
    Account deleteAccountById(int id);

    @Query("select a from Account a where a.name = :name and a.email = :email")
    Account findAccountByNameAndEmail(@Param("name") String name, @Param("email") String email);

    @Query("select a from Account a where a.username = :username and a.password = :password")
    Account findAccountByUsernameAndPassword(@Param("username") String username, @Param("password") String password);
}
