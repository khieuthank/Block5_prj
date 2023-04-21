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
        <link rel="stylesheet" href="css/styleRegister.css">
        <title>Sign Up</title>
    </head>
    <body>
        <div class="container" style="text-align: center">
            <div class="row justify-content-center">
                <div class="col-md-5">
                    <div class="card">
                        <h2 class="card-title text-center">Register</h2>
                        <div class="card-body py-md-4">
                            <form action="register" method="post">
                                <div class="form-group">
                                    <input type="text" class="form-control" placeholder="Enter Email" name="account" required>
                                </div>
                                <div class="form-group">
                                    <input type="password" class="form-control" placeholder="Enter Password" name="password" required>
                                </div>
                                <div class="form-group">
                                    <input type="password" class="form-control"  placeholder="Repeat Password" name="repassword" required>
                                </div>
                                <div class="d-flex flex-row align-items-center justify-content-between">
                                    <a href="Login.jsp"> </a>
                                    <button class="btn btn-primary" type="submit" class="signupbtn">Create Account</button>
                                </div>
                            </form>

                        </div>
                    </div>
                </div>
            </div>
        </div>
        <label>
            <p class="text-danger">${mess}</p>
        </label>
    </body>
</html>
