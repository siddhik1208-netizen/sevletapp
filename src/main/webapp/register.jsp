
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Employee Registration</title>

<style>
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: 'Segoe UI', sans-serif;
}

body {
    background: #f5f7ff;
    color: #333;
}

/* Navbar */
.navbar {
    background: white;
    padding: 20px 8%;
    display: flex;
    justify-content: space-between;
    align-items: center;
    box-shadow: 0 2px 12px rgba(0, 0, 0, 0.06);
}

.logo {
    font-size: 25px;
    font-weight: bold;
    color: #5266d8;
}

.logo span {
    color: #ff8a9b;
}

.nav-links {
    display: flex;
    gap: 28px;
}

.nav-links a {
    text-decoration: none;
    color: #555;
    font-size: 15px;
    transition: 0.3s;
}

.nav-links a:hover {
    color: #5266d8;
}

/* Registration Section */
.register-section {
    min-height: 85vh;
    padding: 45px 20px;
    display: flex;
    justify-content: center;
    align-items: center;
}

.register-card {
    width: 520px;
    max-width: 100%;
    background: white;
    padding: 35px 40px;
    border-radius: 18px;
    box-shadow: 0 10px 35px rgba(82, 102, 216, 0.12);
}

.register-card h1 {
    text-align: center;
    color: #303b75;
    font-size: 29px;
    margin-bottom: 8px;
}

.register-card h1 span {
    color: #697be8;
}

.subtitle {
    text-align: center;
    color: #888;
    font-size: 14px;
    margin-bottom: 28px;
}

/* Form Fields */
.form-group {
    margin-bottom: 17px;
}

.form-group label {
    display: block;
    margin-bottom: 7px;
    font-size: 14px;
    font-weight: 600;
    color: #444;
}

.form-group input,
.form-group select,
.form-group textarea {
    width: 100%;
    padding: 12px 14px;
    border: 1px solid #dfe3f3;
    border-radius: 9px;
    outline: none;
    font-size: 14px;
    background: #fcfcff;
    transition: 0.3s;
}

.form-group input:focus,
.form-group select:focus,
.form-group textarea:focus {
    border-color: #697be8;
    box-shadow: 0 0 0 3px rgba(105, 123, 232, 0.12);
}

.form-group textarea {
    resize: vertical;
    min-height: 80px;
}

/* Gender */
.gender-options {
    display: flex;
    gap: 25px;
    align-items: center;
    flex-wrap: wrap;
    padding: 8px 0;
}

.gender-options label {
    display: flex;
    align-items: center;
    gap: 7px;
    font-weight: normal;
    cursor: pointer;
}

.gender-options input {
    accent-color: #697be8;
}

/* Submit Button */
.submit-btn {
    width: 100%;
    padding: 13px;
    background: #697be8;
    color: white;
    border: none;
    border-radius: 9px;
    font-size: 16px;
    font-weight: 600;
    cursor: pointer;
    transition: 0.3s;
}

.submit-btn:hover {
    background: #5266d8;
    transform: translateY(-2px);
}

.login-link {
    text-align: center;
    margin-top: 20px;
    color: #777;
    font-size: 14px;
}

.login-link a {
    color: #697be8;
    font-weight: 600;
    text-decoration: none;
}

.login-link a:hover {
    text-decoration: underline;
}

/* Footer */
.footer {
    text-align: center;
    padding: 20px 15px;
    color: #888;
    font-size: 13px;
    background: white;
    border-top: 1px solid #eee;
}

/* Responsive */
@media (max-width: 600px) {
    .navbar {
        padding: 18px 5%;
        flex-direction: column;
        gap: 15px;
    }

    .nav-links {
        gap: 16px;
        flex-wrap: wrap;
        justify-content: center;
    }

    .register-card {
        padding: 30px 22px;
    }

    .register-card h1 {
        font-size: 25px;
    }
}
</style>
</head>

<body>

<!-- Navbar -->
<nav class="navbar">

    <div class="logo">
        Employee<span>App.</span>
    </div>

    <div class="nav-links">
        <a href="index.jsp">Home</a>
        <a href="index.jsp#features">Features</a>
        <a href="index.jsp#about">About</a>
        <a href="register.jsp">Register</a>
        <a href="login.jsp">Login</a>
    </div>

</nav>

<!-- Registration Form -->
<section class="register-section">

    <div class="register-card">
    
    <h2 style="color:green ; text-align: center; width : 100%S">${successMsg}</h2>
    

        <h1>Employee <span>Registration</span></h1>
        
        
        <p class="subtitle">
            Create your employee account 🌸
        </p>

        <form action="process-registration" method="post">

            <div class="form-group">
                <label for="name">Full Name</label>
                <input type="text" id="name" name="name"
                    placeholder="Enter your full name"
                    required minlength="3">
            </div>

            <div class="form-group">
                <label for="email">Email Address</label>
                <input type="email" id="email" name="email"
                    placeholder="Enter your email address"
                    required>
            </div>

            <div class="form-group">
                <label for="password">Password</label>
                <input type="password" id="password" name="password"
                    placeholder="Create a password"
                    required minlength="8">
            </div>

            <div class="form-group">
                <label for="department">Department</label>
                <select id="department" name="department" required>
                    <option value="">-- Select Department --</option>
                    <option value="IT">Information Technology</option>
                    <option value="HR">Human Resources</option>
                    <option value="Finance">Finance</option>
                    <option value="Marketing">Marketing</option>
                    <option value="Sales">Sales</option>
                    <option value="Admin">Administration</option>
                </select>
            </div>

            <div class="form-group">
                <label>Gender</label>
                <div class="gender-options">
                    <label>
                        <input type="radio" name="gender"
                            value="Male" required> Male
                    </label>

                    <label>
                        <input type="radio" name="gender"
                            value="Female"> Female
                    </label>

                    <label>
                        <input type="radio" name="gender"
                            value="Other"> Other
                    </label>
                </div>
            </div>

            <div class="form-group">
                <label for="address">Address</label>
                <textarea id="address" name="address"
                    placeholder="Enter your full address"
                    required></textarea>
            </div>

            <button type="submit" class="submit-btn">
                ✨ Create Account
            </button>

        </form>

        <p class="login-link">
            Already have an account?
            <a href="login.jsp">Login here</a>
        </p>

    </div>

</section>

<!-- Footer -->
<footer class="footer">
    © 2026 Employee App | Made with ♥
</footer>

</body>
</html>
