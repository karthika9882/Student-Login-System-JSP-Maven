
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Welcome Student</title>
</head>

<body>

    <%
        String username = (String) session.getAttribute("username");

        if (username != null) {
    %>

        <h1>Login Successful</h1>

        <h2>Welcome, <%= username %>!</h2>

    <%
        } else {
    %>

        <h3>Please login first.</h3>

        <a href="login.jsp">Go to Login</a>

    <%
        }
    %>

</body>
</html>

