$(document).ready(function(){
  // Target the container,Paddle and ball
  var container = $('#container');
  var paddle = $('.paddle');
  var ball = $("#ball");

  var interval;
  var progRunning = false;

  // Set the initial postion of the ball
  var posx = 0;
  var posy = 0;
  // var xPaddle;
  // var yPaddle;
  var paddleWidth = 80;
  // var paddleHeight = 20;

  // Paddle movement

  container.on( 'mousemove', function(event) {
    var x = event.pageX - this.offsetLeft;
    var y = event.pageY - this.offsetTop;
    console.log(x);
    console.log(y);

    if (x <= 322.1) {
      paddle.css({left:x});
      paddle.css({top:"250px"});

    }

  });
  //Set ball direction
  var directionx = "+";
  var directiony = "+";

  // Gravity
  var gravity = 0.1;
  var gravityspeed = 0;

  var rot = 0

  $("#btn").click(function(){
    if (progRunning) {
      // Stop the ball
      progRunning = false;
      clearInterval(interval);
    }else {
      // Start the ball
      progRunning = true;
  // setInterval("function","time period between triggers in (ms)")
      interval = setInterval(function(){

        // find coordinates of the ball and container edges
        var ballLeft = ball.offset().left
        var ballRight = ballLeft + ball.width();
        var containerLeft = container.offset().left
        var containerRight = containerLeft + container.width();

        var ballTop = ball.offset().top
        var ballBottom = ballTop + ball.height();
        var containerTop = container.offset().top
        var containerBottom = containerTop + container.height();

        var paddleTop = paddle.offset().top;
        var paddleBottom = paddleTop + paddle.height();
        var paddleLeft = paddle.offset().left;
        var paddleRight = paddleLeft + paddleWidth;


        // rot+=1;
        // $("img").css("transform", "rotate("+ rot + "deg)" );

        //ball movement
        if (directionx === "+") {
          ball.css({"left" : posx + "px"});
          posx +=5;
        }else {
          ball.css({"left" : posx + "px"});
          posx -=5;
        }
        if (ballRight >= containerRight) {
          directionx = "-";
        }else if (ballLeft <= containerLeft) {
          directionx = "+"
        }


        if (directiony === "+") {
          ball.css({"top" : posy + "px"});
          // gravityspeed += gravity;
          // posy += gravityspeed;
          posy +=5;
        }else {
          ball.css({"top" : posy + "px"});
          // gravityspeed += gravity;
          // posy += gravityspeed;
          posy -=5;
        }
        if (ballBottom >= containerBottom) {
          directiony = "-";
          gravityspeed = -5;
        }else if (ballTop <= containerTop) {
          directiony = "+";
          gravityspeed = 0;
        }

        if (ballBottom > paddleTop) {
          directiony = "-";

        }


      }, 10)
    }
});
})
