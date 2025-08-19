<!DOCTYPE html>
<html>
<head>
    <title>Incorrect Password</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background: linear-gradient(135deg, #cce7ff, #b3d9ff);
            color: #721c24;
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
            border: 2px solid #f5c6cb;
            padding: 30px 40px;
            border-radius: 15px;
            box-shadow: 0 6px 12px rgba(0, 0, 0, 0.15);
            max-width: 400px;
            width: 90%;
            animation: fadeIn 1s ease-in-out;
        }
        h1 {
            font-size: 28px;
            margin-bottom: 20px;
            color: #d9534f;
        }
        p {
            font-size: 16px;
            color: #856404;
            margin-bottom: 25px;
        }
        .go-back-button {
            padding: 12px 25px;
            font-size: 18px;
            color: #fff;
            background: linear-gradient(90deg, #007BFF, #0056b3);
            border: none;
            border-radius: 8px;
            cursor: pointer;
            text-decoration: none;
            transition: background-color 0.3s ease, transform 0.2s ease;
        }
        .go-back-button:hover {
            background-color: #003a75;
            transform: scale(1.05);
        }
        @keyframes fadeIn {
            from {
                opacity: 0;
                transform: scale(0.9);
            }
            to {
                opacity: 1;
                transform: scale(1);
            }
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Incorrect Password</h1>
        <p>The password you entered is incorrect. Please try again.</p>
        <form action="goback" method="POST">
            <button type="submit" class="go-back-button">Go Back</button>
        </form>
    </div>
</body>
</html>