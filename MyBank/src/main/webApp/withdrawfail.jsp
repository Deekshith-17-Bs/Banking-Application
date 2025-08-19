<!DOCTYPE html>
<html>
<head>
    <title>Transaction Failed</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #eef2f3;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .container {
            text-align: center;
            background-color: #ffffff;
            border: 2px solid #ddd;
            border-radius: 12px;
            padding: 40px 60px;
            width: 500px;
            box-shadow: 0 6px 12px rgba(0, 0, 0, 0.2);
        }
        .message {
            font-size: 28px;
            color: #e74c3c;
            margin-bottom: 20px;
            font-weight: bold;
        }
        .balance-info {
            font-size: 22px;
            color: #2c3e50;
            margin-bottom: 25px;
        }
        .button {
            display: inline-block;
            margin-top: 15px;
            padding: 12px 25px;
            background-color: #3498db;
            color: white;
            text-decoration: none;
            border-radius: 8px;
            font-size: 18px;
            font-weight: bold;
        }
        .button:hover {
            background-color: #2980b9;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="message">Withdrawal FAILED due to insufficient balance!</div>
        <div class="Balance">Your current balance is: <span>${Balance}</span></div>
        <a href="admin.jsp" class="button">Go Back to Home</a>
    </div>
</body>
</html>
