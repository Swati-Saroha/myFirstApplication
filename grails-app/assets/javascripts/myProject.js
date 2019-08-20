function validateRegisterForm() {
    var firstPassword = document.getElementById("password").value;
    var secondPassword = document.getElementById("confirmPassword").value;
    var email = document.getElementById("email").value;
    var nameFisrt = document.getElementById("firstName").value;
    var nameSecond = document.getElementById("lastName").value;

    if (nameFisrt == null || nameFisrt === "") {
        alert("firstName is required");
        return false;
    }else if (nameSecond == null || nameSecond === "") {
        alert("lastName is required");
        return false;
    } else if (email == null || email === "") {
        alert("Email is required");
        return false;
    } else if (firstPassword == null || firstPassword === "") {
        alert("Password is required...");
        return false;
    } else if (secondPassword === null || secondPassword === "") {
        alert("confirm password is required...");
        return false;

    } else if (firstPassword !== secondPassword) {
        alert("Password doesn't match");
        return false;
    } else {
        //registration form submit
        return true;
    }
}

function validateLoginForm() {
    var username1 = document.getElementById("username").value;
    var password1 = document.getElementById("password").value;

    if (username1 == null || username1 === "") {
        alert("This field is required...");
        return false;
    } else if (password1 == null || password1 === "") {
        alert("This field is required...");
        return false;
    } else {
        //login form submit
        return true;
    }
}

