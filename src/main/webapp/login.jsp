
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Employee Login</title>

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

/* Login Section */
.login-section {
    min-height: 82vh;
    padding: 45px 20px;
    display: flex;
    justify-content: center;
    align-items: center;
}

.login-card {
    width: 440px;
    max-width: 100%;
    padding: 40px;
    background: white;
    border-radius: 18px;
    box-shadow: 0 10px 35px rgba(82, 102, 216, 0.12);
}

.login-icon {
    width: 80px;
    height: 80px;
    margin: 0 auto 20px;
    background: #edf0ff;
    border-radius: 50%;
    display: flex;
    align-items: center;
    justify-content: center;
    font-size: 38px;
}

.login-card h1 {
    text-align: center;
    color: #303b75;
    font-size: 29px;
    margin-bottom: 10px;
}

.login-card h1 span {
    color: #697be8;
}

.subtitle {
    text-align: center;
    color: #888;
    font-size: 14px;
    margin-bottom: 30px;
}

/* Form Fields */
.form-group {
    margin-bottom: 22px;
}

.form-group label {
    display: block;
    margin-bottom: 8px;
    font-size: 14px;
    font-weight: 600;
    color: #444;
}

.form-group input {
    width: 100%;
    padding: 13px 14px;
    border: 1px solid #dfe3f3;
    border-radius: 9px;
    outline: none;
    font-size: 14px;
    background: #fcfcff;
    transition: 0.3s;
}

.form-group input:focus {
    border-color: #697be8;
    box-shadow: 0 0 0 3px rgba(105, 123, 232, 0.12);
}

/* Login Button */
.login-btn {
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

.login-btn:hover {
    background: #5266d8;
    transform: translateY(-2px);
}

/* Register Link */
.register-link {
    text-align: center;
    margin-top: 22px;
    color: #777;
    font-size: 14px;
}

.register-link a {
    color: #697be8;
    font-weight: 600;
    text-decoration: none;
}

.register-link a:hover {
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

/* Responsive Design */
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

    .login-card {
        padding: 30px 22px;
    }

    .login-card h1 {
        font-size: 25px;
    }
}
</style>
</head>

<body>

<!-- Navbar -->
<nav class="navbar">

    <div class="logo">
        Employee<span>App</span>
    </div>

    <div class="nav-links">
        <a href="index.jsp">Home</a>
        <a href="index.jsp#features">Features</a>
        <a href="index.jsp#about">About</a>
        <a href="register.jsp">Register</a>
        <a href="login.jsp">Login</a>
    </div>

</nav>

<!-- Login Form -->
<section class="login-section">

    <div class="login-card">

        <div class="login-icon">👩‍💼</div>

        <h1>Welcome <span>Back!</span></h1>

        <p class="subtitle">
            Login to your Employee App account 🌸
        </p>

        <form action="process-login" method="post">
        		<h3 style="color:red">${errormsg}</h3>

            <div class="form-group">
                <label for="email">Email Address</label>
                <input
                    type="email"
                    id="email"
                    name="email"
                    placeholder="Enter your email address"
                    required>
            </div>

            <div class="form-group">
                <label for="password">Password</label>
                <input
                    type="password"
                    id="password"
                    name="password"
                    placeholder="Enter your password"
                    required>
            </div>

            <button type="submit" class="login-btn">
                Login →
            </button>

        </form>

        <p class="register-link">
            Don't have an account?
            <a href="register.jsp">Register here</a>
        </p>

    </div>

</section>

<!-- Footer -->
<footer class="footer">
    © 2026 Employee App | Made with ♥
</footer>

</body>
</html>
