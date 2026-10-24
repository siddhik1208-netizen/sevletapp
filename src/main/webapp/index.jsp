

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Employee App</title>

<style>
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: 'Segoe UI', sans-serif;
    scroll-behavior: smooth;
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
    position: sticky;
    top: 0;
    z-index: 100;
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
    font-weight: 500;
    transition: 0.3s;
}

.nav-links a:hover {
    color: #697be8;
}

/* Welcome Section */
.main {
    min-height: 78vh;
    display: flex;
    justify-content: center;
    align-items: center;
    padding: 50px 20px;
}

.card {
    width: 650px;
    max-width: 100%;
    padding: 50px 35px;
    background: white;
    text-align: center;
    border-radius: 20px;
    box-shadow: 0 10px 35px rgba(82, 102, 216, 0.10);
}

.icon {
    width: 85px;
    height: 85px;
    background: #edf0ff;
    border-radius: 50%;
    display: flex;
    justify-content: center;
    align-items: center;
    font-size: 40px;
    margin: 0 auto 25px;
}

.card h1 {
    font-size: 32px;
    color: #303b75;
    margin-bottom: 15px;
}

.card h1 span {
    color: #697be8;
}

.card p {
    color: #777;
    font-size: 16px;
    line-height: 1.8;
    margin-bottom: 30px;
}

/* Buttons */
.buttons {
    display: flex;
    justify-content: center;
    gap: 15px;
    flex-wrap: wrap;
}

.btn {
    display: inline-block;
    padding: 13px 28px;
    border-radius: 9px;
    text-decoration: none;
    font-size: 15px;
    font-weight: 600;
    transition: 0.3s;
}

.register {
    background: #697be8;
    color: white;
}

.register:hover {
    background: #5266d8;
    transform: translateY(-2px);
}

.login {
    background: #fff0f2;
    color: #e66f86;
    border: 1px solid #ffd7de;
}

.login:hover {
    background: #ffe1e6;
    transform: translateY(-2px);
}

/* Features Section */
.features {
    padding: 70px 8%;
    text-align: center;
    background: #edf0ff;
}

.section-title {
    font-size: 32px;
    color: #303b75;
    margin-bottom: 12px;
}

.section-title span {
    color: #697be8;
}

.subtitle {
    color: #777;
    font-size: 15px;
    margin-bottom: 40px;
}

.feature-container {
    display: grid;
    grid-template-columns: repeat(4, minmax(0, 1fr));
    gap: 22px;
}

.feature-card {
    background: white;
    padding: 30px 18px;
    border-radius: 16px;
    box-shadow: 0 5px 20px rgba(82, 102, 216, 0.08);
    transition: 0.3s;
}

.feature-card:hover {
    transform: translateY(-7px);
    box-shadow: 0 10px 25px rgba(82, 102, 216, 0.15);
}

.feature-icon {
    width: 70px;
    height: 70px;
    background: #edf0ff;
    border-radius: 50%;
    display: flex;
    justify-content: center;
    align-items: center;
    font-size: 32px;
    margin: 0 auto 20px;
}

.feature-card h3 {
    color: #5266d8;
    font-size: 17px;
    margin-bottom: 12px;
}

.feature-card p {
    color: #777;
    font-size: 14px;
    line-height: 1.7;
}

/* About Section */
.about {
    padding: 60px 20px;
    text-align: center;
    background: white;
}

.about h2 {
    font-size: 30px;
    color: #303b75;
    margin-bottom: 15px;
}

.about h2 span {
    color: #697be8;
}

.about p {
    max-width: 650px;
    margin: auto;
    color: #777;
    line-height: 1.8;
}

/* Footer */
.footer {
    text-align: center;
    padding: 22px 15px;
    color: #888;
    font-size: 13px;
    background: white;
    border-top: 1px solid #eee;
}

/* Responsive Design */
@media (max-width: 900px) {
    .feature-container {
        grid-template-columns: repeat(2, minmax(0, 1fr));
    }
}

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

    .nav-links a {
        font-size: 14px;
    }

    .card {
        padding: 35px 20px;
    }

    .card h1 {
        font-size: 26px;
    }

    .card p {
        font-size: 14px;
    }

    .buttons {
        flex-direction: column;
        align-items: center;
    }

    .btn {
        width: 220px;
    }

    .feature-container {
        grid-template-columns: 1fr;
    }

    .features {
        padding: 50px 7%;
    }

    .section-title {
        font-size: 27px;
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
        <a href="#features">Features</a>
        <a href="#about">About</a>
        <a href="register.jsp">Register</a>
        <a href="login.jsp">Login</a>
    </div>

</nav>

<!-- Welcome Section -->
<main class="main" id="home">

    <div class="card">

        <div class="icon">👩‍💼</div>

        <h1>Welcome to <span>Employee App</span></h1>

        <p>
            Your work journey starts here! 🌸<br>
            Create an account or log in to continue.<br>
            We make your experience simple and convenient.
        </p>

        <div class="buttons">

            <a href="register.jsp" class="btn register">
                ✨ Register Now
            </a>

            <a href="login.jsp" class="btn login">
                Login →
            </a>

        </div>

    </div>

</main>

<!-- Features Section -->
<section class="features" id="features">

    <h2 class="section-title">
        Our <span>Features</span>
    </h2>

    <p class="subtitle">
        Simple tools for a better employee experience.
    </p>

    <div class="feature-container">

        <div class="feature-card">
            <div class="feature-icon">👩‍💼</div>
            <h3>Employee Management</h3>
            <p>
                Keep employee information organized
                in one convenient place.
            </p>
        </div>

        <div class="feature-card">
            <div class="feature-icon">🕒</div>
            <h3>Attendance Tracking</h3>
            <p>
                Make attendance and work-hour
                management easier.
            </p>
        </div>

        <div class="feature-card">
            <div class="feature-icon">👤</div>
            <h3>Profile Management</h3>
            <p>
                View and manage employee
                profile information.
            </p>
        </div>

        <div class="feature-card">
            <div class="feature-icon">🔐</div>
            <h3>Secure Login</h3>
            <p>
                Access your account through
                the login page.
            </p>
        </div>

    </div>

</section>

<!-- About Section -->
<section class="about" id="about">

    <h2>About <span>Us</span></h2>

    <p>
        Employee App is designed to provide a simple
        and convenient experience for employees.
        Register, log in, and manage your employee
        information through a clean and user-friendly interface.
    </p>

</section>

<!-- Footer -->
<footer class="footer">
    © 2026 Employee App | Made with ♥
</footer>

</body>
</html>
