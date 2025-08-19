
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Account Details</title>
    <style>
        body {
            background-color: #f0f8ff;
            font-family: Arial, sans-serif;
            padding: 20px;
        }
        .account-details {
            background-color: #ffffff;
            border: 1px solid #ddd;
            padding: 20px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            margin-top: 30px;
        }
        h2 {
            color: #2c3e50;
        }
        p {
            font-size: 18px;
            color: #34495e;
        }
        .account-info {
            font-weight: bold;
            color: #2980b9;
        }
        .back-button {
            margin-top: 20px;
            padding: 10px 20px;
            background-color: #2980b9;
            color: white;
            border: none;
            cursor: pointer;
        }
        .back-button:hover {
            background-color: #3498db;
        }
    </style>
</head>
<body>

    <h1>Balance</h1>

    <div class="account-details">
        <h2>Account Information:</h2>
        <p><span class="account-info">Account Number:</span> ${customerId}</p>
        <p><span class="account-info">Holder Name:</span> ${holderName}</p>
        <p><span class="account-info">Balance:</span> ${balance}</p>
    </div>

    <button class="back-button" onclick="window.location.href='admin.jsp'">Go Back</button>

</body>
</html>
