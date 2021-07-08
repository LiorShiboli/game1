﻿<style>

#myAnimation {
  width: 250px;
  height: 202px;
  position: absolute;
}

#buttonBackground
{
  width: 250px;
  height: 202px;
  text-align: center;
  background-image: url('https://scontent.fsdv2-1.fna.fbcdn.net/v/t1.0-9/85115452_3516553208415956_7227288846486994944_n.jpg?_nc_cat=107&_nc_ohc=UVn2QvTN_AEAX9hZech&_nc_ht=scontent.fsdv2-1.fna&oh=947dc3266a60441298f7c8fb82cde805&oe=5ED16F15');  
}

.button
{
    width: 75px;
    height: 75px;
    border: 7px;
    background-color: red;
    border-radius: 50px;
    margin: 63 auto;
    box-shadow: 0 7px #333333;
}



body 
{
  background-image: url('https://www.steelwarehouse.com/assets/images/buckets/flr-plt-steel.jpg');
  background-repeat: no-repeat;
  background-attachment: fixed; 
  background-size: cover;
  overflow:hidden;
}
</style>
<html>

<body id =" body">
<div id = "score"></div>
<div id = "time"></div>
<div id ="myAnimation"><div id = "buttonBackground"><button class = "button" id = "button" onclick="press()">press me</button></div></div><!-- this is the button and its container -->


<script type ="text/javascript">

    disable();

    document.getElementById("score").innerHTML = score;
    var direct;
    var vx = 1, vy = 1;
    var counterMax = 400;
    var counter = 0;
    var score = 0;
    var posLeft = 600;
    var posTop = 450;
    var elem = document.getElementById("myAnimation");
    var timerTime = setInterval(timer, 10);
    var move = setInterval(movement, 10);

    document.getElementById("body").style.width = screen.width - 200;
    document.getElementById("body").style.height = screen.height - 300;

    function press(event) {



        counter = 0; //reseting time counter to make game continue.
        score++;
        if (score == 5 || score == 10 || score == 15 || score == 20 || score == 30 || score == 35 || score == 40) {
            counterMax = counterMax - 50;
        }

        posLeft = Math.floor((Math.random() * screen.width - 200) + 1);
        posTop = Math.floor((Math.random() * screen.height - 300) + 1);
        direct = Math.floor((Math.random() * 360)) + 1;
        vx = 2.5 * (Math.cos(direct * Math.PI / 180));
        vy = 2.5 * (Math.sin(direct * Math.PI / 180));
        elem.style.top = posTop;   //make the buttons position from the top between 1 and 850.
        elem.style.left = posLeft; //make the buttons position from the left between 1 and 1220.
        document.getElementById("score").innerHTML = score;
        document.getElementById("buttonBackground").style.transform = "rotate(" + direct + "deg)";
        document.getElementById("button").style.transform = "rotate(" + -direct + "deg)";
    }


    function timer() {
        counter++;
        document.getElementById("time").innerHTML = (Math.floor((counterMax - counter) / 100)) + ":" + (counterMax - counter) % 100;

        if (counter == counterMax) {
            window.alert("game over!");
            score = 0;
            clearInterval(timerTime);
            enable();

        }
    }

    function movement() {
        if (posTop >= (screen.height - 300)) {
            vy = -Math.abs(vy)
            document.getElementById("buttonBackground").style.transform = "rotate(" +  - direct + "deg)";
            direct = -direct;
            document.getElementById("button").style.transform = "rotate(" + -direct + "deg)";
        }
        if (posTop <= 0) {
            vy = Math.abs(vy)
            document.getElementById("buttonBackground").style.transform = "rotate(" + (360 - direct) + "deg)";
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
        document.onkeydown = function (e) {
            return false;
        }
    }

    function enable() {
        document.onkeydown = function (e) {
            return true;
        }
    }
</script>

</body>
</html>
