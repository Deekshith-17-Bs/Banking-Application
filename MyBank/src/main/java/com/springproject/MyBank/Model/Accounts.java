package com.springproject.MyBank.Model;

import com.springproject.MyBank.Repo.repo;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Transient;
import org.hibernate.annotations.CreationTimestamp;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.time.LocalDateTime;
@Component
@Entity
public class Accounts {

 @Transient
    private int i=10010000;
    @Id
    private int ACCno;
    private String Holder_name;
    @CreationTimestamp
    private LocalDateTime creationTime;
  //  private int password;



    public int getACCno() {
        return ACCno;
    }

    public void setACCno(int ACCno) {
        this.ACCno = ACCno;
        i=i+3;
    }

    public String getHolder_name() {
        return Holder_name;
    }

    public void setHolder_name(String holder_name) {
        Holder_name = holder_name;
    }

    public LocalDateTime getCreationTime() {
        return creationTime;
    }

    public void setCreationTime(LocalDateTime creationTime) {
        this.creationTime = creationTime;
    }

    public Accounts createACC(Accounts a,Customers c)
    {
        a.setACCno(i);
        a.setHolder_name(c.getFirstName());
        a.setCreationTime(LocalDateTime.now());
        c.setAccNo(a.getACCno());
        c.setBalance(0);
        System.out.println(c);
        System.out.println(a.getHolder_name()+" "+a.getCreationTime()+" "+a.getACCno());
        System.out.println(+c.getAccNo()+" "+c.getBalance());
       return a;
    }
}
