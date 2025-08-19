<%@ page import="java.util.List" %>
<%@ page import="com.springproject.MyBank.Model.Transaction" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Transaction History</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f9;
            margin: 0;
            padding: 0;
            height: 100%;
            overflow-y: auto; /* Enable vertical scrolling for the body */
            display: flex;
            justify-content: center;
            align-items: flex-start; /* Align content to the top of the viewport */
        }

        h2 {
            color: #333;
            text-align: center;
            margin-bottom: 20px;
        }

        .container {
            width: 90%;
            max-width: 600px;
            background-color: #fff;
            margin-top: 50px;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1);
        }

        .transaction-card {
            background-color: #f9f9f9;
            border-radius: 8px;
            padding: 20px;
            margin-bottom: 20px; /* Space between cards */
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }

        .transaction-card:hover {
            transform: scale(1.05);
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.2);
        }

        .transaction-card h3 {
            margin: 0;
            color: #333;
            font-size: 20px;
        }

        .transaction-card p {
            margin: 8px 0;
            color: #555;
            font-size: 16px;
        }

        .transaction-card .amount {
            color: #4CAF50;
            font-weight: bold;
            font-size: 18px;
            text-align: center;
        }

        .back-button-container {
            text-align: center;
            margin-top: 20px;
        }

        button {
            background-color: #4CAF50;
            color: white;
            border: none;
            padding: 10px 20px;
            font-size: 16px;
            cursor: pointer;
            border-radius: 5px;
            transition: background-color 0.3s ease;
        }

        button:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Transaction History</h2>
        <%
            List<Transaction> transactionList = (List<Transaction>) request.getAttribute("transactions");

            if (transactionList != null && !transactionList.isEmpty()) {
                for (Transaction t : transactionList) {
        %>
        <div class="transaction-card">
            <h3>Transaction ID: <%= t.getTransactionID() %></h3>
            <p><strong>Account Number:</strong> <%= t.getAccno() %></p>
            <p><strong>Transaction Type:</strong> <%= t.getType() %></p>
            <p><strong>Date:</strong> <%= t.getTime() %></p>
            <p class="amount"><strong>Amount:</strong> ₹<%= t.getAmount() %></p>
        </div>
        <%
                }
            } else {
        %>
        <div class="transaction-card">
            <p>No transaction data available</p>
        </div>
        <%
            }
        %>
        <div class="back-button-container">
            <form action="admin.jsp" method="get">
                <button type="submit">Go Back to Login</button>
            </form>
        </div>
    </div>
</body>
</html>
