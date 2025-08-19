<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Banking System</title>
    <style>
        /* Global styles */
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f7f7f7;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            background-image: linear-gradient(120deg, #ffecd2, #fcb69f); /* Soft pastel gradient */
        }

        .container {
            width: 100%;
            max-width: 600px;
            background-color: white;
            border-radius: 18px;
            box-shadow: 0px 10px 20px rgba(0, 0, 0, 0.1);
            padding: 40px;
            text-align: center;
        }

        .title {
            font-size: 2.8em;
            color: #34495e;
            margin-bottom: 30px;
            font-weight: 600;
        }

        .button-container {
            display: flex;
            flex-direction: column;
            gap: 20px;
            justify-content: center;
        }

        .button {
            background-color: #3498db;
            color: white;
            border: none;
            padding: 20px;
            font-size: 1.2em;
            border-radius: 12px;
            cursor: pointer;
            transition: background-color 0.3s, transform 0.2s, box-shadow 0.3s ease;
            box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.1);
            text-align: center;
        }

        .button:hover {
            background-color: #2980b9;
            transform: scale(1.05); /* Slightly enlarges on hover */
            box-shadow: 0px 6px 12px rgba(0, 0, 0, 0.15);
        }

        .button.create {
            background-color: #2ecc71; /* Green */
        }

        .button.withdraw {
            background-color: #e74c3c; /* Red */
        }

        .button.deposit {
            background-color: #f39c12; /* Yellow */
        }

        .button.statement {
            background-color: #8e44ad; /* Purple */
        }

        .button.logout {
            background-color: #34495e; /* Grey */
        }

        .button.check-balance {
            background-color: #1abc9c; /* Teal */
        }

        /* Responsive Design */
        @media (max-width: 768px) {
            .container {
                padding: 20px;
            }

            .button {
                font-size: 1em;
                padding: 15px;
            }
        }
    </style>
</head>
<body>

    <div class="container">
        <div class="title">Banking System</div>
        <div class="button-container">

            <form action="createAccount" method="get">
                <button class="button create" name="action" value="create">
                    Create Account
                </button>
            </form>

            <form action="withdraw" method="get">
                <button class="button withdraw" name="action" value="withdraw">
                    Withdraw
                </button>
            </form>

            <form action="deposit" method="get">
                <button class="button deposit" name="action" value="deposit">
                    Deposit
                </button>
            </form>

            <form action="statement" method="get">
                <button class="button statement" name="action" value="statement">
                    Statement
                </button>
            </form>

            <form action="checkBalance" method="get">
                <button class="button check-balance" name="action" value="checkBalance">
                    Check Balance
                </button>
            </form>

            <form action="logout" method="get">
                <button class="button logout" name="action" value="logout">
                    Logout
                </button>
            </form>

        </div>
    </div>

</body>
</html>
