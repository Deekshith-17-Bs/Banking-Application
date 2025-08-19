<!DOCTYPE html>
<html>
<head>
    <title> Withdraw Money</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f7f9fc;
            margin: 0;
            padding: 0;
        }
        .container {
            width: 40%;
            margin: 50px auto;
            background-color: #ffffff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }
        h2 {
            text-align: center;
            color: #333;
        }
        label {
            font-weight: bold;
            color: #555;
            display: block;
            margin-top: 10px;
        }
        input[type="number"] {
            width: 100%;
            padding: 10px;
            margin-top: 5px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        .error {
            color: red;
            font-size: 12px;
            margin-top: 5px;
        }
        button {
            background-color: #28a745;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            margin-top: 20px;
            width: 100%;
        }
        button:hover {
            background-color: #218838;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Withdraw Money</h2>
        <form id="withdrawForm" action="withdraw1" method="get">
            <label for="accountNumber">Account Number:</label>
            <input type="number" id="accountNumber" name="accountNumber" required>
            <div id="accountNumberError" class="error"></div>

            <label for="withdrawAmount">Amount to withdraw:</label>
            <input type="number" id="withdrawAmount" name="withdrawAmount" min="1" required>
            <div id="withdrawAmountError" class="error"></div>

            <button type="submit">Withdraw</button>
        </form>
    </div>

    <script>
        document.getElementById("withdrawForm").addEventListener("submit", function(event) {
            let isValid = true;

            // Validate Account Number
            const accountNumber = document.getElementById("accountNumber").value.trim();
            if (!accountNumber || accountNumber.length < 8) {
                document.getElementById("accountNumberError").textContent = "Please enter a valid account number (minimum 8 digits).";
                isValid = false;
            } else {
                document.getElementById("accountNumberError").textContent = "";
            }

            // Validate Deposit Amount
            const depositAmount = document.getElementById("withdrawAmount").value.trim();
            if (!depositAmount || parseFloat(depositAmount) <= 0) {
                document.getElementById("withdrawAmountError").textContent = "Please enter a valid amount to withdraw.";
                isValid = false;
            } else {
                document.getElementById("withdrawAmountError").textContent = "";
            }

            // Prevent form submission if invalid
            if (!isValid) {
                event.preventDefault();
            }
        });
    </script>
</body>
</html>
