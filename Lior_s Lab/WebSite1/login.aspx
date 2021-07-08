<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>
<html>

<head>

<title></title>

<script type ="text/javascript">

    function checkFunc() {
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

    function SignUp() {
        location.replace("register.aspx");
    }
</script>

</head>

<body>

<style type ="text/css">

input, [type = "email"], [type = "password"], [type = "text"]{
    width: 350px;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #262626;
  border-radius: 100px;
  box-sizing: border-box;
  font-family: 'Comic Sans MS';
}

label
{
    color: white;
    font-family: 'Comic Sans MS';
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

button
{
    font-family: 'Comic Sans MS';
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #262626;
  border-radius: 100px;
  box-sizing: border-box;
}

p{font-family: 'Comic Sans MS';}

</style>

<form id = "login" action="" method="post" name = "login" onsubmit = "">
<label for = "uName">User Name:</label>
<div id = "uNameD"></div>
<input type = "text" id = "uName" name = "uName" placeholder = "Enter Userame" onblur = "checkUName()"/><br />
<label for = "psw">Password:</label>
<div id = "pswd"></div>
<input type = "password" id = "psw" name = "psw" placeholder = "Enter Password" onblur = "checkPsw()"/><br />   <%= incorrect %><br />
<input type = "submit" name = "login" value = "Sign In" />
</form>

<p>Don't have an account?</p><button onclick = "SignUp()">Sign Up</button>

</body>



</html>