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
    <form action="/MyFirstApplication/public/registration" method="post" name="register" id="register" >
    <g:form name="register" controller="public" action="registration">
        <div class="container">
            <h1>Register</h1>

            <g:hasErrors bean="${registrationCO}">
                <div style="color: red">
                   %{-- <g:renderErrors bean="${registrationCO}"/>--}%
                   <g:message code="registrationCO.firstName.nullable.error"/>
                    <br>
                    <g:message code="registrationCO.lastName.nullable.error"/>
                    <br>
                    <g:message code="registrationCO.email.unique.error"/>
                   <br>
                    <g:message code="registrationCO.password.nullable.error"/>
                    <br>
                    <g:message code="registrationCO.confirmPassword.nullable.error"/>
                    <br>
                </div>

            </g:hasErrors>


            <g:if test="${success}">
                <span class="alert alert-success">Registration is succesfull</span>
            </g:if>

            <span class="errorMessage"></span>
            <hr>

            <label for="firstName"><b>First Name</b></label>
            <input type="text" class="form-control-sm" placeholder="Enter First Name" name="firstName" size="35" id="firstName">
            <br>
            <br>

            <label for="lastName"><b>Last Name</b></label>
            <input type="text" class="form-control-sm" placeholder="Enter Last Name" name="lastName" size="35" id="lastName">
            <br>
            <br>

            <label for="email"><b>Email</b></label>
            <input type="text" class="form-control-sm" placeholder="Enter Email" name="email" size="35" id="email">
            <br>
            <br>

            <label for="password"><b>Password</b></label>
            <input type="password" class="form-control-sm" placeholder="Enter Password" name="password" size="35"
                   id="password">
            <br>
            <br>
            <label for="confirmPassword"><b>Repeat Password</b></label>
            <input type="password" class="form-control-sm" placeholder="Repeat Password" name="confirmPassword"
                   size="35" id="confirmPassword">
            <br>
            <br>
            <hr>

            <p>By creating an account you agree to our <a href="#">Terms & Privacy</a>.</p>
            <button type="submit" class="btn btn-success" value="register" onclick="validateRegisterForm()">Register</button>
            <br>
        </div>

        <div class="container signin">
            <p>Already have an account? <a href="#">Sign in</a>.</p>
        </div>
    </g:form>

</html>