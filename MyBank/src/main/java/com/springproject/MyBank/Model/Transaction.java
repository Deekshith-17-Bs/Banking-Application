package com.springproject.MyBank.Model;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;

import org.springframework.stereotype.Component;

import java.time.LocalDateTime;
import java.util.Optional;
import java.util.UUID;

@Component
@Entity
public class Transaction {

    private int Accno;
    private String type;
    private int amount;
    @Id
    private String transactionID;
    private  LocalDateTime time;

    public int getAccno() {
        return Accno;
    }

    public void setAccno(int accno) {
        Accno = accno;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public LocalDateTime getTime() {
        return time;
    }

    public void setTime() {
        this.time = LocalDateTime.now();
    }

    public String getTransactionID() {
        return transactionID;
    }

    public void setTransactionID() {
        this.transactionID = "TXN-"+ UUID.randomUUID().toString();;
    }

    public int getAmount() {
        return amount;
    }

    public void setAmount(int amount) {
        this.amount = amount;
    }
    public void setTransactionID(String transactionID)
    {
        this.transactionID=transactionID;
    }
     public void setTime(LocalDateTime time)
     {
         this.time=time;
     }
}
