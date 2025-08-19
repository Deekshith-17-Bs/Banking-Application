package com.springproject.MyBank.Repo;

import com.springproject.MyBank.Model.Customers;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface repo extends JpaRepository<Customers, Integer> {

}

