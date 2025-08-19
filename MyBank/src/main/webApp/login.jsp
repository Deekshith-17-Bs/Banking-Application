<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>DR AIT Banking Service</title>
    <style>
        /* Global styles */
        body {
            margin: 0;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(135deg, #a1c4fd, #c2e9fb); /* Soft gradient background */
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .container {
            width: 80%;
            max-width: 900px;
            background-color: #fff;
            padding: 40px;
            border-radius: 12px;
            box-shadow: 0 12px 24px rgba(0, 0, 0, 0.1);
            text-align: center;
        }

        h1 {
            color: #4CAF50;
            margin-bottom: 40px;
            font-size: 2.5em;
            font-weight: 600;
        }

        .forms {
            display: flex;
            justify-content: space-between;
            gap: 30px;
        }

        .form-section {
            width: 48%;
            background-color: #f9f9f9;
            padding: 25px;
            border-radius: 10px;
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }

        .form-section:hover {
            transform: translateY(-5px);
            box-shadow: 0 12px 24px rgba(0, 0, 0, 0.2);
        }

        h2 {
            color: #333;
            font-size: 1.8em;
            margin-bottom: 20px;
        }

        label {
            font-size: 1.1em;
            color: #555;
            margin-bottom: 10px;
            display: block;
            font-weight: bold;
        }

        input[type="text"], input[type="password"] {
            width: 100%;
            padding: 12px;
            margin-bottom: 20px;
            border: 1px solid #ddd;
            border-radius: 8px;
            font-size: 1em;
            transition: border-color 0.3s ease, transform 0.3s ease;
        }

        input[type="text"]:focus, input[type="password"]:focus {
            border-color: #4CAF50;
            transform: scale(1.02);
        }

        input[type="submit"] {
            width: 100%;
            padding: 12px;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 8px;
            font-size: 1.2em;
            cursor: pointer;
            transition: background-color 0.3s ease, transform 0.2s ease;
        }

        input[type="submit"]:hover {
            background-color: #45a049;
            transform: scale(1.05);
        }

        /* Input validation */
        .input-error {
            border-color: #e74c3c;
        }

        .input-error:focus {
            border-color: #c0392b;
        }

    </style>
    <script>
        function validateCustomerId(event) {
            const keyCode = event.keyCode ? event.keyCode : event.which;
            if (keyCode < 48 || keyCode > 57) {
                event.preventDefault();
            }
        }
    </script>
</head>
<body>

    <div class="container">
        <h1>DR AIT Banking Service</h1>
        <div class="forms">
            <!-- Admin Login Section -->
            <div class="form-section">
                <h2>Admin Login</h2>
                <form action="alogin" method="get">
                    <label for="adminId">Admin ID:</label>
                    <input type="text" id="adminId" name="adminId" required>

                    <label for="adminPassword">Password:</label>
                    <input type="password" id="adminPassword" name="adminPassword" required>

                    <input type="submit" value="Login">
                </form>
            </div>

            <!-- Customer Login Section -->
            <div class="form-section">
                <h2>Customer Login</h2>
                <form action="clogin" method="get">
                    <label for="customerId">Customer ID:</label>
                    <input type="text" id="customerId" name="customerId" onkeypress="validateCustomerId(event)" required>

                    <!-- <label for="customerPassword">Password:</label>
                    <input type="password" id="customerPassword" name="customerPassword" required> -->

                    <input type="submit" value="Login">
                </form>
            </div>
        </div>
    </div>

</body>
</html>
