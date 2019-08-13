<%--
  Created by IntelliJ IDEA.
  User: ongraph
  Date: 12/08/19
  Time: 4:09 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<asset:stylesheet href="login.css"/>
<asset:stylesheet href="bootstrap.css"/>
<asset:stylesheet href="bootstrap.min.css"/>
<asset:javascript src="bootstrap.js"/>
<asset:javascript src="bootstrap.min.js"/>
<asset:javascript src="myProject.js"/>


<head>
    <title>Login Page</title>
</head>

<body>
<div style="text-align:center">

    <g:form name="login" controller="public" action="register">
        <fieldset>
            <legend>User Information:</legend>
            <label for="username">Username:</label>
            <input type="text" id="username" name="username">
            <br>
            <label for="password">Password:</label>
            <input type="password" id="password" name="password">
            <br>

            <div id="lower">
                <input type="button" class="btn btn-success" value="Login" onclick="validateLoginForm()">
                <a href="${createLink(controller: 'public', action: 'register')}">Register</a>
            </div>
        </fieldset>
    </g:form>
</div>
</body>
</html>