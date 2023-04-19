<%-- 
    Document   : Register
    Created on : 14-04-2023, 07:38:16
    Author     : trung
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="StyleCss/styleRegister.css">
        <title>Sign Up</title>
    </head>
    <body>
        <form action="register" method="post" style="border:1px solid #ccc">
            <div class="container">
                <h1>Sign Up</h1>
                <p>Please fill in this form to create an account.</p>
                <hr>

                <label for="email"><b>Email or Phone Number</b></label>
                <input type="text" placeholder="Enter Email" name="account" required>

                <label for="psw"><b>Password</b></label>
                <input type="password" placeholder="Enter Password" name="password" required>

                <label for="psw-repeat"><b>Repeat Password</b></label>
                <input type="password" placeholder="Repeat Password" name="repassword" required>

                <label>
                    <input type="checkbox" checked="checked" name="remember" style="margin-bottom:15px"> Remember me
                </label>         

                <div class="clearfix">
                    <a href="Home.jsp" style="text-decoration: none"><button type="button" class="cancelbtn" >Cancel</button></a>
                    <button type="submit" class="signupbtn">Sign Up</button>
                </div>
            </div>
        </form>
    </body>
</html>
