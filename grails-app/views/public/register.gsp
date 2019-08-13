<%--
  Created by IntelliJ IDEA.
  User: ongraph
  Date: 13/08/19
  Time: 10:32 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<asset:stylesheet href="bootstrap.css"/>
<asset:stylesheet href="bootstrap.min.css"/>
<asset:javascript src="myProject.js"/>
<asset:javascript src="bootstrap.js"/>
<asset:javascript src="bootstrap.min.js"/>
<head>
    <title>Registration Form</title>
</head>

<div style="text-align:center">
    <form name="register" action="register">
        <div class="container">
            <h1>Register</h1>

            <p>Please fill in this form to create an account.</p>
            <span class="errorMessage"></span>
            <hr>

            <label for="email"><b>Email</b></label>
            <input type="text" placeholder="Enter Email" name="email" id="email">
            <br>
            <br>

            <label for="password"><b>Password</b></label>
            <input type="password" placeholder="Enter Password" name="password" id="password">
            <br>
            <br>
            <label for="confirmPassword"><b>Repeat Password</b></label>
            <input type="password" placeholder="Repeat Password" name="confirmPassword" id="confirmPassword">
            <br>
            <br>
            <hr>

            <p>By creating an account you agree to our <a href="#">Terms & Privacy</a>.</p>
            <button type="submit" class="btn btn-success" onclick="validateRegisterForm()">Register</button>
            <br>
        </div>

        <div class="container signin">
            <p>Already have an account? <a href="#">Sign in</a>.</p>
        </div>
    </form>

</html>