<%@ page import="com.PC_Games_DB.errors.PlayerEditProfileError" %><%--
  Created by IntelliJ IDEA.
  User: loay_
  Date: 4/12/2021
  Time: 9:39 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style type="text/css">
    @import "stylesheet.css";
    .container {
        display: block;
        margin: 0 auto;
        text-align: center;
    }

</style>

<html>
<head>
    <%--Logo in tab--%>
    <link rel = "icon" href ="logo2.png" type = "image/png">
    <title>Admin Login</title>

</head>
<body>
<div class="container card">
    <br>
    <h2>Login as an Admin</h2>

    <br>
    <br>
    <%
        PlayerEditProfileError error = (PlayerEditProfileError) request.getAttribute("error");
        if (error != null) {
            if (error.isOldPasswordError()) {
    %>
    <p style="color: red">Invalid Credientials. Try Again</p>
    <%
            }
        }
    %>

    <form action="getDevAdmin">
        <label>Admin ID</label>
        <input type="text" name ="adminID">
        <br>
        <br>
        <label>Password</label>
        <input type="password" name ="password">
        <br>
        <br>
        <input type="submit" name="login" value="Log in">
    </form>
    <br>
    <br>

</div>
</body>
</html>
