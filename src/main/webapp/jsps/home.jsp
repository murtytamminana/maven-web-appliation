 <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.net.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>TANGO DEV OPS - Home Page</title>
    <link href="images/kkfunda.jpg" rel="icon" type="image/x-icon">

    <!-- Simple CSS for better appearance -->
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            background: #f4f4f9;
            color: #333;
        }
        header {
            background: #0073e6;
            color: #fff;
            padding: 20px;
            text-align: center;
        }
        header h1 {
            margin: 5px 0;
        }
        hr {
            border: 0;
            height: 2px;
            background: #0073e6;
            margin: 20px 0;
        }
        section {
            padding: 20px;
            text-align: center;
        }
        section h2 {
            color: #0073e6;
        }
        .info {
            background: #fff;
            border-radius: 8px;
            padding: 15px;
            margin: 15px auto;
            width: 60%;
            box-shadow: 0px 4px 8px rgba(0,0,0,0.1);
        }
        .contact {
            display: flex;
            justify-content: center;
            align-items: center;
            gap: 15px;
            margin: 20px 0;
        }
        .contact img {
            width: 80px;
            border-radius: 50%;
        }
        .contact span {
            font-weight: bold;
            line-height: 1.6;
        }
        footer {
            background: #0073e6;
            color: #fff;
            padding: 15px;
            text-align: center;
        }
        footer small a {
            color: #fff;
            text-decoration: underline;
        }
    </style>
</head>
<body>

    <!-- Header -->
    <header>
        <h1>Welcome to Tango DevOps</h1>
        <h1>KK FUNDA</h1>
    </header>

    <!-- Server Info -->
    <section>
        <div class="info">
            <h2>Server Information</h2>
            <%
                InetAddress inetAddress = InetAddress.getLocalHost();
                String ip = inetAddress.getHostAddress();
            %>
            <p><strong>Server Host Name:</strong> <%= inetAddress.getHostName() %></p>
            <p><strong>Server IP Address:</strong> <%= ip %></p>
        </div>

        <!-- Client Info -->
        <div class="info">
            <h2>Client Information</h2>
            <p><strong>Client IP Address:</strong> <%= request.getRemoteAddr() %></p>
            <p><strong>Client Host Name:</strong> <%= request.getRemoteHost() %></p>
        </div>
    </section>

    <hr>

    <!-- Contact Section -->
    <section class="contact">
        <img src="images/kkfunda.jpg" alt="KK FUNDA Logo">
        <span>
            KK FUNDA, <br>
            Martha Halli, Bangalore<br>
            +91-9676831734, +91-9676831734<br>
            <a href="mailto:kkeducationblr@gmail.com">kkeducationblr@gmail.com</a><br>
            <a href="mailto:kkeducation@gmail.com">Mail to KK FUNDA</a>
        </span>
    </section>

    <hr>

    <!-- Services -->
    <section>
        <h2>Services</h2>
        <p><a href="services/employee/getEmployeeDetails">Get Employee Details</a></p>
    </section>

    <!-- Footer -->
    <footer>
        <p>KK FUNDA Training & Development Center</p>
        <small>Copyright © 2024 by 
            <a href="https://google.com/" target="_blank">KK FUNDA</a>
        </small>
    </footer>

</body>
</html>
