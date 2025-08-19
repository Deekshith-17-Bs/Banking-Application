<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Customer ID Input</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f8ff; /* Light blue background */
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .container {
            background-color: white;
            padding: 40px; /* Larger padding for a bigger form */
            border-radius: 12px;
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.3);
            width: 400px; /* Wider form */
            text-align: center;
        }

        .container h1 {
            font-size: 2em; /* Larger title font */
            margin-bottom: 30px;
        }

        .container label {
            display: block;
            font-size: 1.2em; /* Larger label font */
            margin-bottom: 15px;
        }

        .container input[type="text"] {
            width: 100%;
            padding: 15px; /* Larger input field */
            font-size: 1.1em; /* Bigger font for input */
            margin-bottom: 30px;
            border: 1px solid #ccc;
            border-radius: 6px;
        }

        .container button {
            background-color: #4CAF50;
            color: white;
            padding: 15px 20px; /* Bigger button */
            font-size: 1.2em; /* Larger button text */
            border: none;
            border-radius: 6px;
            cursor: pointer;
        }

        .container button:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Enter Account Number</h1>
        <form action="checkB" method="get">
            <label for="customerId">Account Number:</label>
            <input type="text" id="customerId" name="customerId" placeholder="ACC Number">
            <button type="submit">Get</button>
        </form>
    </div>
</body>
</html>
