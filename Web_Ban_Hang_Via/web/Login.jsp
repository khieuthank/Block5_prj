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

    <body class="align" style="background: #ddd">

        <div class="grid">

            <form action="login" method="post" class="form login">

                <div class="form__field">
                    <label for="login__username"><svg class="icon">
                        <use xlink:href="#icon-user"></use>
                        </svg><span class="hidden">Username</span></label>
                    <input autocomplete="username" id="login__username" type="text" name="username" class="form__input" placeholder="Username" required>
                </div>

                <div class="form__field">
                    <label for="login__password"><svg class="icon">
                        <use xlink:href="#icon-lock"></use>
                        </svg><span class="hidden">Password</span></label>
                    <input id="login__password" type="password" name="password" class="form__input" placeholder="Password" required>
                </div>

                <div class="form__field">
                    <input type="submit" value="Sign In">
                </div>


            </form>

            <label>
                <p class="text-danger">${mess}</p>
            </label>

            <a href="Home.jsp" style="text-decoration: none; background: #ea4c88"><button type="button" class="cancelbtn" >Cancel</button></a>

        </div>



    </body>
</html>