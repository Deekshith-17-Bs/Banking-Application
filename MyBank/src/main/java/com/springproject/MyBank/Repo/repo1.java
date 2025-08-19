package com.springproject.MyBank.Repo;

import com.springproject.MyBank.Model.Accounts;
import org.springframework.data.jpa.repository.JpaRepository;

public interface repo1 extends JpaRepository<Accounts,Integer> {
}
