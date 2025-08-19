package com.springproject.MyBank.Model;

import com.springproject.MyBank.Repo.repo;
import com.springproject.MyBank.Repo.repo1;
import com.springproject.MyBank.Repo.repo2;
import com.springproject.MyBank.service.Details;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

@Controller
public class HomeController {
    @Autowired
    private Transaction t;
    @Autowired
    private repo2 r2;
    @Autowired
    private repo1 r1;
    @Autowired
    private repo r;
    @Autowired
    private Details d;
    @Autowired
    private Accounts a;

    @RequestMapping("/")
    public String home() {
        return "home.jsp";
    }

    @RequestMapping("getin")
    public String getin() {
        return "login.jsp";
    }

    @RequestMapping("alogin")
    public String admin(@RequestParam("adminId") String adminId, @RequestParam("adminPassword") String adminPassword) {
        boolean b;
        if (d.check(adminId, adminPassword))
            return "admin.jsp";
        else
            return "return.jsp";

    }

    @RequestMapping("goback")
    public String go() {
        return "login.jsp";
    }

    @RequestMapping("createAccount")
    public String create() {
        return "createACC.jsp";
    }

    @RequestMapping("submitDetails")
    public String created(Customers c, Model model) {

        Accounts account = a.createACC(a, c);
          r.save(c);
           r1.save(account);

        model.addAttribute("ACCno", account.getACCno());
        model.addAttribute("holderName", account.getHolder_name());
        model.addAttribute("creationTime", account.getCreationTime());
        return "getback.jsp";
    }

    @RequestMapping("getback")
    public String getback() {

        return "admin.jsp";
    }

    @RequestMapping("deposit")
    public String depo() {
        return "deposit.jsp";
    }

    @RequestMapping("Deposit")
    public String depo(@RequestParam("accountNumber") int accountNumber, @RequestParam("depositAmount") int depositAmount,Model model) {
        Optional<Customers> acc = r.findById(accountNumber);

        if (acc.isPresent()) {
            Customers c = acc.get();
            c.setBalance(c.getBalance() + depositAmount);
            t.setAccno(c.getAccNo());
            t.setType("DEPOSIT");
            t.setAmount(depositAmount);
            t.setTime();
            t.setTransactionID();
            r2.save(t);
            model.addAttribute("Balance",c.getBalance());
            return "depositsuccess.jsp";
        } else {
            System.out.println("not present dey");
            return "depositfail.jsp";
        }
    }
        @RequestMapping("withdraw")
        public String with()
        {
            return "withdraw.jsp";
        }
        @RequestMapping("withdraw1")
        public String withdrawing(@RequestParam("accountNumber") int accountNumber,@RequestParam("withdrawAmount") int withdrawAmount,Model model)
        {
            Optional<Customers> acc = r.findById(accountNumber);
            if(acc.isPresent())
            {
                Customers c=acc.get();
                if(c.getBalance()>withdrawAmount)
                {
                    c.setBalance(c.getBalance()-withdrawAmount);
                    t.setAccno(c.getAccNo());
                    t.setType("WITHDRAW");
                    t.setAmount(withdrawAmount);
                    t.setTime();
                    t.setTransactionID();
                    r2.save(t);
                model.addAttribute("Balance",c.getBalance());
                    return "withdrawsucces.jsp";
                }
                else
                {
                    System.out.println(c.getBalance());
                    model.addAttribute("Balance",c.getBalance());
                    return "withdrawfail.jsp";
                }
            }
            else {
                return "notfound.jsp";
            }
        }
        @RequestMapping("clogin")
    public String  check(@RequestParam("customerId") int customerID,Model model)
        {
             List<Transaction> l=r2.findByAccno(customerID);
             List<Transaction>transactions=new ArrayList<>();
             if(l.isEmpty())
                 return "notfound1.jsp";
             else {

                 for(Transaction t:l)
                 {

                     Transaction ts=new Transaction();
                     ts.setAccno(t.getAccno());
                     ts.setAmount(t.getAmount());
                     ts.setType(t.getType());
                     ts.setTransactionID(t.getTransactionID());
                     ts.setTime(t.getTime());
                    // model.addAttribute("transaction",ts);
                     transactions.add(ts);


                 }
            model.addAttribute("transactions",transactions);
               //  model.addAttribute("transaction",transactions.get(0));
               //  model.addAttribute("transaction",transactions.get(1));

                 System.out.println("list l"+l);
                 System.out.println("list transactions"+transactions);
                 for(Transaction t:transactions)
                 {
                     System.out.println(t.getAccno()+" "+t.getAmount()+" "+t.getTime()+" "+t.getType()+" "+t.getTransactionID());
                 }
                 return "customerHistory.jsp";
             }

        }
        @RequestMapping("logout")
                public String logout()
        {
            return "login.jsp";
        }
        @RequestMapping("statement")
      public String getall() {

//            List<Transaction> l = r2.findAll();
//            List<Transaction> transactions = new ArrayList<>();
//            if (l.isEmpty())
//                return "notfound1.jsp";
//            else {
//
//                for (Transaction t : l) {
//
//                    Transaction ts = new Transaction();
//                    ts.setAccno(t.getAccno());
//                    ts.setAmount(t.getAmount());
//                    ts.setType(t.getType());
//                    ts.setTransactionID(t.getTransactionID());
//                    ts.setTime(t.getTime());
//                    // model.addAttribute("transaction",ts);
//                    transactions.add(ts);
//
//                }
//                m.addAttribute("transactions", transactions);
                return "getst1.jsp";
            }
            @RequestMapping("checkBalance")
                public String checkb()
            {
                return "getB.jsp";
            }
            @RequestMapping("checkB")
           public String take(@RequestParam("customerId") int customerId,Model model)
            {
                 Optional<Customers> op=r.findById(customerId);
                 Customers cus=op.get();
                 model.addAttribute("customerId",customerId);
                 model.addAttribute("balance",cus.getBalance());
                 model.addAttribute("holderName",cus.getFirstName());
                 return "disB.jsp";

            }
        }

