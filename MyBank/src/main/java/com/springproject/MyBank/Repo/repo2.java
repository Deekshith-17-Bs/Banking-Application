package com.springproject.MyBank.Repo;

import com.springproject.MyBank.Model.Transaction;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface repo2 extends JpaRepository<Transaction,String> {
    @Query("select t from Transaction t where t.Accno=?1")
    List<Transaction>findByAccno(int customerID);
}
