<%@ Page Language="C#" AutoEventWireup="true" CodeFile="welcomepage.aspx.cs" Inherits="welcomepage" %>


<html >
<head >
    <title></title>
</head>
<body>

    <style type ="text/css">
        h1
        {
            color: red;
            font-family: 'Comic Sans MS';
            font-size: 100px;
        }

        #game
        {
            width: 75px;
            height: 75px;
            border: 7px;
            background-color: red;
            border-radius: 50px;
            margin: 63 auto;
            box-shadow: 0 7px #333333;
            font-family: 'Comic Sans MS';
        }

        div
        {
            background-repeat: no-repeat;
            background-position: center;
            background-image: url(tracksForButt.jpg.png);
        }

        button
        {
            border-color: none;
        }

        body { 
        background-image: url('steelBack.jpg'); 
        background-repeat: no-repeat; 
        background-attachment: fixed; 
        background-size: cover; 
        overflow: hidden; }

    </style>

    <a href="adminPage.aspx">Admin Page</a>

    <h1 align="center">Welcome!</h1>

    <div align="center">
    <button id="game" onclick="startGame()">Game Start</button>
    </div>

    

    <script type ="text/javascript">
        function startGame() {
            location.replace("gamePage.aspx");
        }
    </script>

</body>
</html>
