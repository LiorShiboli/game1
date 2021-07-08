<%@ Page Language="C#" AutoEventWireup="false" CodeFile="gameOver.aspx.cs" Inherits="gameOver" %>

<!DOCTYPE html>



<html xmlns="http://www.w3.org/1999/xhtml" lang="en">

<head runat="server">
    <title></title>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"/>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

<style>
        h1 
        {
            color: red;
            font-family: 'Comic Sans MS';
            font-size: 100px;
        }

        #back
        {
            text-align: center;
        }

    body 
    {
        position: absolute;
        background-image: url('warningSign.jpg');
        background-repeat: no-repeat; 
        background-attachment: fixed; 
        background-size: cover; 
    }

</style>
</head>
<body>

    <div class="container" align = "center">
        <h1>Game Over</h1>
    </div>

    <div class="container" align = "center">
        <h1>your High score <%=Hscore %></h1>
    </div>

    <div class="container" align = "center">
        <h1>your current score <%=Cscore %></h1>
    </div>

</body>
</html>