<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="models.Employee" %>
<!DOCTYPE html>
<html>
<head>
    <title>Employee Details</title>
     <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: rgba(0, 0, 0, 0.4);
        }

        .modal-container {
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
        }

        .modal-content {
            background-color: #fff;
            border-radius: 5px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
            padding: 20px;
            max-width: 600px;
            width: 80%;
        }

        h1 {
            color: #333;
            text-align: center;
        }

        h2 {
            color: #555;
            margin-top: 20px;
        }

        p {
            color: #777;
            margin: 5px 0;
        }

        .error-message {
            color: #ff0000;
            font-weight: bold;
            margin-top: 20px;
        }

        .close {
            color: #aaa;
            float: right;
            font-size: 28px;
            font-weight: bold;
            cursor: pointer;
        }
    </style>
</head>
<body>
    <h1>Employee Details</h1>
    <%
        Employee employee = (Employee) request.getAttribute("employee");
        String error = (String) request.getAttribute("error");
        
        if (employee != null) {
    %>
            <h2>Employee ID: <%= employee.getEmplId() %></h2>
            <p>First Name: <%= employee.getEmplFirstname() %></p>
            <p>Last Name: <%= employee.getEmplLastname() %></p>
            <p>Basic salary: <%= employee.getBasic_sal() %></p>
            <p>Fixed salary: <%= employee.getFixed_sal() %></p>
            <p>Variable salary: <%= employee.getVariable_sal() %></p>
 
    <%
        } else if (error != null) {
    %>
            <p class="error-message"><%= error %></p>
    <%
        }
    %>
</body>
</html>
