<%@ Page Language="C#" AutoEventWireup="true" CodeFile="gamePage.aspx.cs" Inherits="game2" %>

    <html>

    <head>

        <title>Button Game</title>

        <style type="text/css">
            #myAnimation {
                width: 250px;
                height: 202px;
                position: absolute;
            }
            
            #buttonBackground {
                width: 250px;
                height: 202px;
                text-align: center;
                background-image: url(tracksForButt.jpg.png);
            }
            
            .button {
                width: 75px;
                height: 75px;
                border: 7px;
                background-color: red;
                border-radius: 50px;
                margin: 63 auto;
                box-shadow: 0 7px #333333;
                font-family: 'Comic Sans MS';
            }
            
            #score {
                font-family: 'Comic Sans MS';
                font-size: 50px;
                color: red;
            }
            
            #time {
                font-family: 'Comic Sans MS';
                font-size: 50px;
                color: red;
            }
            
            #back {
                background-image: url('warningSign');
                border: 10px, solid;
                border-color: black;
            }
            
            body {
                background-image: url('steelBack.jpg');
                background-repeat: no-repeat;
                background-attachment: fixed;
                background-size: cover;
                overflow: hidden;
            }
        </style>

    </head>

    <body id=" body">

        <Form id="scoreSend" action="" method="post" name="scoreSend" onsubmit="">
            <input type="hidden" name="Cscore" id="Cscore" />
        </Form>


        <div id="highScore"></div>
        <div id="back">
            <div id="score"></div>
            <div id="time"></div>
        </div>
        <div id="myAnimation">
            <div id="buttonBackground"><button class="button" id="button" onclick="press()">press me</button></div>
        </div>
        <!-- this is the button and its container -->


        <script type="text/javascript">
            disable();

            document.getElementById("score").innerHTML = score;
            var direct;
            var vx = 1,
                vy = 1;
            var counterMax = 400;
            var counter = 0;
            var score = 0;
            var posLeft = Math.floor((Math.random() * (screen.width - 200)) + 1);;
            var posTop = Math.floor((Math.random() * (screen.height - 300)) + 1);
            var elem = document.getElementById("myAnimation");
            var move;
            var timerTime
            press();

            function press(event) {

                if (score == 0) {
                    timerTime = setInterval(timer, 10);
                    move = setInterval(movement, 10);
                }
                counter = 0; //reseting time counter to make game continue.
                score++;
                if (score == 5 || score == 10 || score == 15 || score == 20 || score == 30 || score == 35 || score == 40) {
                    counterMax = counterMax - 50;
                }

                posLeft = Math.floor((Math.random() * (screen.width - 200)) + 1);
                posTop = Math.floor((Math.random() * (screen.height - 300)) + 1);
                direct = Math.floor((Math.random() * 360)) + 1;
                vx = 2.5 * (Math.cos(direct * Math.PI / 180));
                vy = 2.5 * (Math.sin(direct * Math.PI / 180));
                elem.style.top = posTop; //make the buttons position from the top between 1 and 850.
                elem.style.left = posLeft; //make the buttons position from the left between 1 and 1220.
                document.getElementById("score").innerHTML = score;
                document.getElementById("buttonBackground").style.transform = "rotate(" + direct + "deg)";
                document.getElementById("button").style.transform = "rotate(" + -direct + "deg)";
            }


            function timer() {
                counter++;
                document.getElementById("time").innerHTML = (Math.floor((counterMax - counter) / 100)) + ":" + (counterMax - counter) % 100;

                if (counter == counterMax) {

                    document.getElementById('Cscore').value = score;
                    document.forms["scoreSend"].submit();
                    score = 0;
                    clearInterval(timerTime);
                    enable();
                    location.replace("gameOver.aspx");
                }
            }

            function movement() {
                if (posTop >= (screen.height - 300) || posTop <= 0) {
                    vy = -vy
                    document.getElementById("buttonBackground").style.transform = "rotate(" + -direct + "deg)";
                    direct = -direct;
                    document.getElementById("button").style.transform = "rotate(" + -direct + "deg)";
                }
                if (posLeft >= (screen.width - 200) || posLeft <= 0) {
                    vx = -vx
                    document.getElementById("buttonBackground").style.transform = "rotate(" + (360 - direct) + "deg)";
                    direct = -direct;
                    document.getElementById("button").style.transform = "rotate(" + -direct + "deg)";
                }
                posTop += vy;
                posLeft += vx;
                elem.style.top = posTop + 'px';
                elem.style.left = posLeft + 'px';

            }

            function disable() {
                document.onkeydown = function(e) {
                    return false;
                }
            }

            function enable() {
                document.onkeydown = function(e) {
                    return true;
                }
            }
        </script>

    </body>

    </html>