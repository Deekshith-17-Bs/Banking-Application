<%@ page import="java.util.List" %>
<%@ page import="com.springproject.MyBank.Model.Transaction" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Transaction History</title>
    <style>
        /* Global Styles */
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f4f4f9;
            margin: 0;
            padding: 0;
            height: 100%;
            display: flex;
            justify-content: center;
            align-items: flex-start;
            overflow-y: auto;
        }

        h2 {
            color: #333;
            text-align: center;
            margin-bottom: 30px;
        }

        .container {
            width: 90%;
            max-width: 700px;
            background-color: #fff;
            margin-top: 30px;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1);
            text-align: center;
        }

        .transaction-card {
            background-color: #f9f9f9;
            border-radius: 8px;
            padding: 20px;
            margin-bottom: 25px;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s ease, box-shadow 0.3s ease;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
        }

        .transaction-card h3 {
            margin: 0;
            color: #333;
            font-size: 22px;
            font-weight: bold;
        }

        .transaction-card p {
            margin: 8px 0;
            color: #555;
            font-size: 16px;
        }

        .transaction-card .amount {
            color: #4CAF50;
            font-weight: bold;
            font-size: 20px;
            margin-top: 10px;
        }

        .back-button-container {
            margin-top: 30px;
        }

        button {
            background-color: #4CAF50;
            color: white;
            border: none;
            padding: 12px 25px;
            font-size: 18px;
            cursor: pointer;
            border-radius: 5px;
            transition: background-color 0.3s ease, transform 0.2s ease;
        }

        button:hover {
            background-color: #45a049;
            transform: scale(1.05);
        }

        button:active {
            transform: scale(1);
        }

        @media print {
            body {
                font-size: 12px;
            }

            button {
                display: none;
            }

            .container {
                padding: 10px;
            }

            .transaction-card {
                padding: 10px;
                margin-bottom: 15px;
                box-shadow: none;
            }
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
            <p class="amount"><strong>Amount:</strong> <%= t.getAmount() %></p>
        </div>
        <%
                }
            } else {
        %>
        <div class="no-transaction-message">
            No transaction data available.
        </div>
        <%
            }
        %>
        <div class="back-button-container">
            <form action="login.jsp" method="get">
                <button type="submit">Go Back to Login</button>
            </form>
        </div>
    </div>
</body>
</html>
