<!DOCTYPE html>
<html>
<head>
    <title>User Details Form</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f8ff;
            margin: 0;
            padding: 0;
        }
        .container {
            width: 50%;
            margin: 50px auto;
            background-color: #ffffff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
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
        input[type="text"],
        input[type="email"],
        input[type="tel"],
        input[type="number"],
        textarea {
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
            background-color: #007BFF;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            margin-top: 20px;
            width: 100%;
        }
        button:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>User Details Form</h2>
        <form id="userForm" action="submitDetails" method="get">
            <label for="firstName">First Name:</label>
            <input type="text" id="firstName" name="firstName" required>
            <div id="firstNameError" class="error"></div>

            <label for="lastName">Last Name:</label>
            <input type="text" id="lastName" name="lastName" required>
            <div id="lastNameError" class="error"></div>

            <label for="email">Email:</label>
            <input type="email" id="email" name="email" required>
            <div id="emailError" class="error"></div>

            <label for="phone">Phone Number:</label>
            <input type="tel" id="phone" name="phone" required>
            <div id="phoneError" class="error"></div>

            <label for="aadhar">Aadhar Number:</label>
            <input type="number" id="aadhar" name="aadhar" required>
            <div id="aadharError" class="error"></div>

            <label for="address">Address:</label>
            <textarea id="address" name="address" rows="3" required></textarea>

            <label for="locality">Locality:</label>
            <input type="text" id="locality" name="locality" required>

            <label for="pin">Pin Code:</label>
            <input type="number" id="pin" name="pin" required>
            <div id="pinError" class="error"></div>

            <label for="taluk">Taluk:</label>
            <input type="text" id="taluk" name="taluk" required>

            <label for="district">District:</label>
            <input type="text" id="district" name="district" required>

            <label for="state">State:</label>
            <input type="text" id="state" name="state" required>

            <button type="submit">Submit</button>
        </form>
    </div>

    <script>
        document.getElementById("userForm").addEventListener("submit", function(event) {
            let isValid = true;

            // First Name Validation
            const firstName = document.getElementById("firstName").value.trim();
            if (!firstName) {
                document.getElementById("firstNameError").textContent = "First name is required.";
                isValid = false;
            } else {
                document.getElementById("firstNameError").textContent = "";
            }

            // Last Name Validation
            const lastName = document.getElementById("lastName").value.trim();
            if (!lastName) {
                document.getElementById("lastNameError").textContent = "Last name is required.";
                isValid = false;
            } else {
                document.getElementById("lastNameError").textContent = "";
            }

            // Email Validation
            const email = document.getElementById("email").value.trim();
            if (!email.includes("@gmail.com")) {
                document.getElementById("emailError").textContent = "Email must contain @gmail.com.";
                isValid = false;
            } else {
                document.getElementById("emailError").textContent = "";
            }

            // Phone Number Validation
            const phone = document.getElementById("phone").value.trim();
            if (!/^\d{10}$/.test(phone)) {
                document.getElementById("phoneError").textContent = "Phone number must be 10 digits.";
                isValid = false;
            } else {
                document.getElementById("phoneError").textContent = "";
            }

            // Aadhar Number Validation
            const aadhar = document.getElementById("aadhar").value.trim();
            if (!/^\d{12}$/.test(aadhar)) {
                document.getElementById("aadharError").textContent = "Aadhar number must be 12 digits.";
                isValid = false;
            } else {
                document.getElementById("aadharError").textContent = "";
            }

            // Pin Code Validation
            const pin = document.getElementById("pin").value.trim();
            if (!/^\d{6}$/.test(pin)) {
                document.getElementById("pinError").textContent = "Pin code must be 6 digits.";
                isValid = false;
            } else {
                document.getElementById("pinError").textContent = "";
            }

            // Prevent form submission if invalid
            if (!isValid) {
                event.preventDefault();
            }
        });
    </script>
</body>
</html>  