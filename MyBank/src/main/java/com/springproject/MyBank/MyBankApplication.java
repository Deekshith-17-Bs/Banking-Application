package com.springproject.MyBank;

import com.springproject.MyBank.Model.Customers;
import com.springproject.MyBank.Repo.repo;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.ApplicationContext;

@SpringBootApplication
public class MyBankApplication {

	public static void main(String[] args) {
		ApplicationContext con=SpringApplication.run(MyBankApplication.class, args);
		//Customers c=con.getBean(Customers.class);


	}

}
