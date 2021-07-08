<html>

<head>
</head>

<body>

<style>

input, [type = "email"], [type = "password"], [type = "text"]{
    width: 350px;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #262626;
  border-radius: 100px;
  box-sizing: border-box;
}

label
{
    color: white;
    font-family: Calibri;
    font-size: large;
    background-color: #007a99;
    padding: 1.5px 6px;
    border: 1px solid #262626;
    border-radius: 50px;
}

div
{
    padding: 4px;
}

</style>
<p id = "form">
<form id = "signUp" name = "signUp" onsubmit = "">
<label for = "fName">First Name:</label>
<div id = "fNameD"></div>
<input type = "text" id = "fName" name = "fName" placeholder = "Enter First Name" onblur = "checkFName()"/><br />
<label for = "lName">Last Name:</label>
<div id = "lNameD"></div>
<input type = "text" id = "lName" name = "lName" placeholder = "Enter Last Name" onblur = "checkLName()"/><br />
<label for = "uName">User Name:</label>
<div id = "uNameD"></div>
<input type = "text" id = "uName" name = "uName" placeholder = "Enter Userame" onblur = "checkUName()"/><br />
<label for = "email">Email:</label>
<div id = "emaild"></div>
<input type = "text" id = "email" name = "email" placeholder = "Enter Email" onblur = "checkEmail()"/><br />
<label for = "psw">Password:</label>
<div id = "pswd"></div>
<input type = "password" id = "psw" name = "psw" placeholder = "Enter Password" onblur = "checkPsw()"/><br />
<label for = "rPsw">Repeat Password:</label>
<div id = "rPswD"></div>
<input type = "password" id = "rPsw" name = "rPsw" placeholder = "Re-enter Password" onblur = "repPsw()"/><br />
<input type = "submit" value = "Sign In" />
</form>
</p>
</body>

  <script type =" text/javascript">

    function checkFunc() {
    }
    function checkFName() {
    var fName = document.getElementById("fName").value;
    if (fName.length <= 1) {
    document.getElementById("fName").style.borderColor = "red";
    document.getElementById("fNameD").innerHTML = "plese enter a first name more than 1 charecters in length";
    document.getElementById("fNameD").style.color = "red";
    }
    else {
    document.getElementById("fName").style.borderColor = "green";
    document.getElementById("fNameD").innerHTML = "";
    document.getElementById("fNameD").style.color = "green";
    }
    }
    function checkLName() {
    var lName = document.getElementById("lName").value;
    if (lName.length <= 1) {
    document.getElementById("lName").style.borderColor = "red";
    document.getElementById("lNameD").innerHTML = "plese enter a last name more than 1 charecters in length";
    document.getElementById("lNameD").style.color = "red";
    }
    else {
    document.getElementById("lName").style.borderColor = "green";
    document.getElementById("lNameD").innerHTML = "";
    document.getElementById("lNameD").style.color = "green";
    }
    }

    function checkUName() {
    var uName = document.getElementById("uName").value;
    if (uName.length <= 1) {
    document.getElementById("uName").style.borderColor = "red";
    document.getElementById("uNameD").innerHTML = "plese enter a user name more than 1 charecters in length";
    document.getElementById("uNameD").style.color = "red";
    }
    else {
    document.getElementById("uName").style.borderColor = "green";
    document.getElementById("uNameD").innerHTML = "";
    document.getElementById("uNameD").style.color = "green";
    }
    }

    function checkEmail() {
    var email = document.getElementById("email").value;
    var regex = /^[a-zA-Z0-9]*[.]*[a-zA-Z0-9]+@(gmail|yahoo|walla).(com|co.[a-z]{2})$/;
    if (!(regex.test(email))) {
    document.getElementById("email").style.borderColor = "red";
    document.getElementById("emaild").innerHTML = "enter valid email adress";
    document.getElementById("emaild").style.color = "red";
    }
    else {
    document.getElementById("email").style.borderColor = "green";
    document.getElementById("emaild").innerHTML = "";
    document.getElementById("emaild").style.color = "green";
    }
    }
    function checkPsw() {
    var psw = document.getElementById("psw").value;
    var regex = /[0-9]/
    var regex2 = /[A-Z]/
    if (psw.length < 6 && !(regex.test(psw)) && !(regex2.test(psw))) {
    document.getElementById("psw").style.borderColor = "red";
    document.getElementById("pswd").innerHTML = "passwords must be atleast 6 characters in length and contain 1 capital letter and 1 number";
    document.getElementById("pswd").style.color = "red";
    }
    else {
    document.getElementById("psw").style.borderColor = "green";
    document.getElementById("pswd").innerHTML = "";
    document.getElementById("pswd").style.color = "red";
    }
    }
    function repPsw() {
    var psw = document.getElementById("psw").value;
    var rPsw = document.getElementById("rPsw").value;
    if (psw != rPsw) {
    document.getElementById("rPsw").style.borderColor = "red";
    document.getElementById("rPswD").innerHTML = "passwords must match";
    document.getElementById("rPswD").style.color = "red";
    }
    else if (psw == rPsw) {
    document.getElementById("rPsw").style.borderColor = "green";
    document.getElementById("rPswD").innerHTML = "";
    document.getElementById("rPswD").style.color = "red";
    }
    }

</script>

</html>