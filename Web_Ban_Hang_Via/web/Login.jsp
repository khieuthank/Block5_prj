<%-- 
    Document   : Login
    Created on : 11-04-2023, 15:13:40
    Author     : trung
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="StyleCss/styleLogin.css">
        <title>Login</title>
    </head>
    <body>

        <h2>Login Form</h2>

        <form action="login" method="post">
            

            <div class="container">
                <label for="uname"><b>Username</b></label>
                <input type="text" placeholder="Enter Username" name="username" required>

                <label for="psw"><b>Password</b></label>
                <input type="password" placeholder="Enter Password" name="password" required>

                <button type="submit">Login</button>
                <label>
                   <p class="text-danger">${mess}</p>
                </label>
            </div>

            <div class="container" style="background-color:#f1f1f1">
                <button type="button" class="cancelbtn"><a href="Home.jsp" style="text-decoration: none">Cancel</a></button>
                <span class="psw">Forgot <a href="#">password?</a></span>
            </div>
        </form>
    </body>
</html>