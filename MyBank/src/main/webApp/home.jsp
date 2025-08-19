<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dr.AIT Bank</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
            text-align: center;
            background: linear-gradient(to bottom right, #e3f2fd, #90caf9);
        }

        .header {
            background-color: #4caf50;
            color: white;
            padding: 20px;
            border-radius: 10px;
            display: inline-block;
            margin: 50px auto;
            animation: fadeIn 2s;
        }

        .header h1 {
            margin: 0;
            font-size: 2.5em;
        }

        .header p {
            font-style: italic;
            font-size: 1em;
        }

        .button-container {
            margin-top: 50px;
        }

        .button-container button {
            background-color: #ffeb3b;
            border: 1px solid #cddc39;
            padding: 15px 30px;
            font-size: 1em;
            font-weight: bold;
            border-radius: 8px;
            cursor: pointer;
            transition: all 0.3s ease-in-out;
            box-shadow: 0px 5px 10px rgba(0, 0, 0, 0.2);
        }

        .button-container button:hover {
            background-color: #fdd835;
            transform: scale(1.1);
            box-shadow: 0px 10px 20px rgba(0, 0, 0, 0.3);
        }

        @keyframes fadeIn {
            from {
                opacity: 0;
                transform: translateY(-20px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }
    </style>
</head>
<body>
    <div class="header">
        <h1>Welcome to Dr.AIT Bank</h1>
        <p>we are glad to have you with us. Let&#39;s make banking easier</p>
    </div>

    <div class="button-container">
        <form action="getin" method="get">
            <button type="submit">Get in</button>
        </form>
    </div>
</body>
</html>