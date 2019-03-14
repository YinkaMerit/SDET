$(document).ready(function(){

var interval;
var progRunning = false;

// Target the ball object
var ball = $("#ball");

// Target the container

var container = $("#container");

// Set the initial postion of the ball
var posx = 0;
var posy = 0;

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

      rot+=1;


      $("img").css("transform", "rotate("+ rot + "deg)" );

      //ball movement
      if (directionx === "+") {
        ball.css({"left" : posx + "px"});
        posx +=20;
      }else {
        ball.css({"left" : posx + "px"});
        posx -=20;
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
        posy +=15;
      }else {
        ball.css({"top" : posy + "px"});
        // gravityspeed += gravity;
        // posy += gravityspeed;
        posy -=15;
      }
      if (ballBottom >= containerBottom) {
        directiony = "-";
        gravityspeed = -5;
      }else if (ballTop <= containerTop) {
        directiony = "+";
        gravityspeed = 0;
      }


    }, 10)
  }
});





















});
