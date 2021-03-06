<%@ page import="com.PC_Games_DB.errors.PlayerSignupError" %><%--
  Created by IntelliJ IDEA.
  User: loay_
  Date: 4/12/2021
  Time: 9:53 AM
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
    <title>Player Sign up</title>
</head>
<body>
<div class="container card">
    <br>
    <h2>Sign up as a Player</h2>
    <%
        PlayerSignupError error = (PlayerSignupError) request.getAttribute("error");
        if(error!=null){
            if(error.isPasswordError()){

            %>
    <p style="color: red">Password does not meet requirements. Try again.</p>
    <%

            }else if(error.isGamerIDError()){
    %>
    <p style="color: red">Gamer ID does not meet requirements. Try again.</p>
    <br>
    <%

            }else if(error.isDOBError()){
    %>
    <p style="color: red">You have to be above 12 years old to sign up.</p>
    <br>
    <%
            }else if(error.isEmailError()){
    %>
    <p style="color: red">Email does not meet requirements. Try again.</p>
    <br>
    <%
            }else if(error.isGamerIDTaken()){

    %>
    <p style="color: red">Gamer ID is taken. Try again.</p>
    <br>
    <%
        }
        }
    %>

    <form action="addPlayer">
        <label>Player ID: </label>
        <input type="text" name ="gamerID">
        <label><sw>Player ID must start with 'G' and followed by 8 digits. (e.g. G01234567)</sw></label>
        <br>
        <label>Gamer Name: </label>
        <input type="text" name="gamerName">
        <br>
        <label>Date of Birth: </label>
        <input type="date" name="DOB">
        <label><sw>(e.g. 01/01/1999)</sw></label>
        <br>
        <label>Email: </label>
        <input type="email" name="email">
        <br>
        <label>Password</label>
        <input type="password" name ="password">
        <label><sw>Password must be at least 8 characters.</sw></label>
        <br>
        <br>
        <input type="submit" name="signup" value="Sign up">
    </form>
    <br>
</div>
</body>
</html>
