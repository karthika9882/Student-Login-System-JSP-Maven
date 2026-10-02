
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Student Login</title>
</head>

<body>

    <h1>Student Login System</h1>

    <form method="post" action="login.jsp">

        <label>Username:</label>
        <input type="text" name="username" required>

        <br><br>

        <label>Password:</label>
        <input type="password" name="password" required>

        <br><br>

        <input type="submit" value="Login">

    </form>

    <%
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        if (username != null && password != null) {

            if (!username.trim().isEmpty() && !password.trim().isEmpty()) {

                session.setAttribute("username", username);

                response.sendRedirect("welcome.jsp");
            }
        }
    %>

</body>
</html>
