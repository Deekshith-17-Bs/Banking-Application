package com.springproject.MyBank.service;

import org.springframework.stereotype.Component;

@Component
public class Details {
    final String adminId="bharath";
    final String adminPassword="BHA123";

    public boolean check(String id1,String password1)
    {
           if(id1.equals(adminId) && password1.equals(adminPassword))
               return true;
           else
               return false;
    }


}
