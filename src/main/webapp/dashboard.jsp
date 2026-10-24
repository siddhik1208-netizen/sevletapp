
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Employee Dashboard</title>

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

/* Navbar - Same as Other Pages */
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

/* Dashboard Container */
.container {
    max-width: 1200px;
    margin: auto;
    padding: 35px 25px;
}

/* Welcome Banner */
.welcome-banner {
    background: linear-gradient(120deg, #5266d8, #8995f5);
    color: white;
    padding: 35px;
    border-radius: 18px;
    display: flex;
    justify-content: space-between;
    align-items: center;
    gap: 20px;
    box-shadow: 0 8px 25px rgba(82, 102, 216, 0.18);
}

.welcome-banner h1 {
    font-size: 29px;
    margin-bottom: 10px;
}

.welcome-banner h1 span {
    color: #ffe0e6;
}

.welcome-banner p {
    font-size: 15px;
    line-height: 1.8;
    color: #f1f2ff;
}

.banner-icon {
    font-size: 70px;
}

/* Section Heading */
.section-title {
    color: #303b75;
    font-size: 23px;
    margin: 32px 0 20px;
}

/* Overview Cards */
.stats {
    display: grid;
    grid-template-columns: repeat(3, minmax(0, 1fr));
    gap: 22px;
}

.stat-card {
    background: white;
    padding: 25px;
    border-radius: 15px;
    box-shadow: 0 5px 20px rgba(82, 102, 216, 0.06);
    border: 1px solid #eef0ff;
    transition: 0.3s;
}

.stat-card:hover {
    transform: translateY(-5px);
}

.stat-icon {
    width: 50px;
    height: 50px;
    border-radius: 12px;
    background: #edf0ff;
    display: flex;
    align-items: center;
    justify-content: center;
    font-size: 25px;
    margin-bottom: 18px;
}

.stat-card h3 {
    font-size: 14px;
    color: #777;
    margin-bottom: 10px;
}

.stat-card .value {
    font-size: 19px;
    font-weight: bold;
    color: #5266d8;
    overflow-wrap: anywhere;
}

/* Profile and Actions Layout */
.content-grid {
    display: grid;
    grid-template-columns: 1.2fr 0.8fr;
    gap: 22px;
    margin-top: 28px;
}

.panel {
    background: white;
    padding: 28px;
    border-radius: 15px;
    box-shadow: 0 5px 20px rgba(82, 102, 216, 0.06);
}

.panel h2 {
    color: #303b75;
    font-size: 21px;
    margin-bottom: 22px;
}

/* Employee Profile */
.profile-row {
    display: flex;
    justify-content: space-between;
    gap: 15px;
    padding: 14px 0;
    border-bottom: 1px solid #eee;
    font-size: 14px;
}

.profile-row:last-child {
    border-bottom: none;
}

.profile-label {
    color: #777;
    font-weight: 600;
}

.profile-value {
    color: #5266d8;
    text-align: right;
    overflow-wrap: anywhere;
}

/* Quick Actions */
.action-link {
    display: flex;
    align-items: center;
    gap: 13px;
    padding: 15px;
    margin-bottom: 13px;
    border-radius: 10px;
    background: #f8f9ff;
    text-decoration: none;
    color: #444;
    transition: 0.3s;
}

.action-link:hover {
    background: #edf0ff;
    color: #5266d8;
    transform: translateX(4px);
}

.action-icon {
    font-size: 23px;
}

/* Footer */
.footer {
    text-align: center;
    padding: 22px 15px;
    margin-top: 20px;
    background: white;
    color: #888;
    font-size: 13px;
    border-top: 1px solid #eee;
}

/* Responsive Design */
@media (max-width: 850px) {
    .content-grid {
        grid-template-columns: 1fr;
    }

    .stats {
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

    .container {
        padding: 25px 15px;
    }

    .welcome-banner {
        padding: 25px 20px;
    }

    .welcome-banner h1 {
        font-size: 23px;
    }

    .banner-icon {
        font-size: 45px;
    }

    .stats {
        grid-template-columns: 1fr;
    }

    .panel {
        padding: 22px 18px;
    }

    .profile-row {
        flex-direction: column;
        gap: 6px;
    }

    .profile-value {
        text-align: left;
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

<!-- Dashboard Main Content -->
<main class="container">

    <!-- Welcome Banner -->
    <section class="welcome-banner">

        <div>
            <h1>Welcome, <span>${name}</span>! 👋</h1>

            <p>
                Welcome to your Employee Dashboard.<br>
                View your profile and manage your employee account.
            </p>
        </div>

        <div class="banner-icon">👩‍💼</div>

    </section>

    <!-- Overview -->
    <h2 class="section-title">Dashboard Overview</h2>

    <section class="stats">

        <div class="stat-card">
            <div class="stat-icon">👤</div>
            <h3>Employee Name</h3>
            <div class="value">${name}</div>
        </div>

        <div class="stat-card">
            <div class="stat-icon">🏢</div>
            <h3>Department</h3>
            <div class="value">${department}</div>
        </div>

        <div class="stat-card">
            <div class="stat-icon">📧</div>
            <h3>Email Address</h3>
            <div class="value">${email}</div>
        </div>

    </section>

    <!-- Profile and Quick Actions -->
    <section class="content-grid">

        <!-- Employee Profile -->
        <div class="panel">

            <h2>👤 Employee Profile</h2>

            <div class="profile-row">
                <span class="profile-label">Full Name</span>
                <span class="profile-value">${name}</span>
            </div>

            <div class="profile-row">
                <span class="profile-label">Email Address</span>
                <span class="profile-value">${email}</span>
            </div>

            <div class="profile-row">
                <span class="profile-label">Department</span>
                <span class="profile-value">${department}</span>
            </div>

            <div class="profile-row">
                <span class="profile-label">Gender</span>
                <span class="profile-value">${gender}</span>
            </div>

            <div class="profile-row">
                <span class="profile-label">Address</span>
                <span class="profile-value">${address}</span>
            </div>

        </div>

        <!-- Quick Actions -->
        <div class="panel">

            <h2>⚡ Quick Actions</h2>

            <a href="index.jsp" class="action-link">
                <span class="action-icon">🏠</span>
                <span>Back to Home</span>
            </a>

            <a href="register.jsp" class="action-link">
                <span class="action-icon">✨</span>
                <span>Employee Registration</span>
            </a>

            <a href="login.jsp" class="action-link">
                <span class="action-icon">🔐</span>
                <span>Employee Login</span>
            </a>

            <a href="logout" class="action-link">
                <span class="action-icon">🚪</span>
                <span>Logout</span>
            </a>

        </div>

    </section>

</main>

<!-- Footer -->
<footer class="footer">
    © 2026 Employee App | Made with ♥
</footer>

</body>
</html>
