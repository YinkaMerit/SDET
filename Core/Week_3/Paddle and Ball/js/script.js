$(document).ready(function(){
// Mouse position
  var mouseX = 0;
  var mouseY = 0;
  var containerPos = getPosition(container);

  var paddleX = 50;
  var paddleY = 50;

  var posX = "";
  var posY = "";

  var container = document.querySelector('#container');
  var paddle = document.querySelector('.paddle');

  container.addEventListener('mousemove',function(event){
    var offset = $(this).offset();
    var posxBox =  (event.pageX - offset.left);
    var posyBox =  (event.pageY - offset.top);

  })

  // container.addEventListener('mousemove',setMousePosition,false)

  function setMousePosition(event) {
    mouseX = event.clientX - containerPos.x;
    mouseY = event.clientY - containerPos.y;
    $(".paddle").css({left:mouseX})
  }


  function getPosition(element) {
    var xPosition = 0;
    var yPosition = 0;

    while (element) {
      xPosition += (element.offsetLeft - element.scrollLeft + element.clientLeft);
      yPosition += (element.offsetTop - element.scrollTop + element.clientTop);
      element = element.offsetParent;
    }
    return {
      x: xPosition,
      y: yPosition
    };
  }

  // function setMousePosition(event) {
  // mouseX = event.clientX;
  // mouseY = event.clientY;
  // relative("x");
  // relative("y");
  // }
  //
  // function relative(axis) {
  // if(axis == "x"){
  // //if the object is to the right
  // if(mouseX-paddleX < 0){
  // posX = "to the right of";
  // paddleX += (mouseX-paddleX)/3;
  // }
  // //if its to the left
  // if(mouseX-paddleX > 0){
  // posX = "to the left of";
  // paddleX += (mouseX-paddleX)/3;
  // }
  // //if its on it
  // if(mouseX==paddleX){
  // posX = "on";
  // }
  // }
  // if(axis == "y"){
  // //if the object is to the below
  // if(mouseY-paddleY > 0){
  // posY = "beneath";
  // paddleY += (mouseY-paddleY)/3
  // }
  // //if its above
  // if(mouseY-paddleY <  0){
  // posY = "above";
  // paddleY += (mouseY-paddleY)/3
  // }
  // //if its on it
  // if(mouseY==paddleY){
  // posY = "on";
  // }
  // }
  // }

  //
  // // object to make a HTML element to follow mouse cursor ( https://coursesweb.net/ )
  // var movingPaddle = {
  //   mouseXY: {},  // will contain the X, Y mouse coords inside its parent
  //
  //   // Get X and Y position of the elm (from: vishalsays.wordpress.com/ )
  //   getXYpos: function(elm) {
  //     x = elm.offsetLeft;        // set x to elm’s offsetLeft
  //     y = elm.offsetTop;         // set y to elm’s offsetTop
  //
  //     elm = elm.offsetParent;    // set elm to its offsetParent
  //
  //     //use while loop to check if elm is null
  //     // if not then add current elm’s offsetLeft to x, offsetTop to y and set elm to its offsetParent
  //     while(elm != null) {
  //       x = parseInt(x) + parseInt(elm.offsetLeft);
  //       y = parseInt(y) + parseInt(elm.offsetTop);
  //       elm = elm.offsetParent;
  //     }
  //
  //     // returns an object with "xp" (Left), "=yp" (Top) position
  //     return {'xp':x, 'yp':y};
  //   },
  //
  //   // Returns object with X, Y coords inside its parent
  //   getCoords: function(e) {
  //     var xy_pos = this.getXYpos(e.target);
  //
  //     // if IE
  //     if(navigator.appVersion.indexOf("MSIE") != -1) {
  //       var standardBody = (document.compatMode == 'CSS1Compat') ? document.documentElement : document.body;
  //
  //       x = event.clientX + standardBody.scrollLeft;
  //       y = event.clientY + standardBody.scrollTop;
  //     }
  //     else {
  //       x = e.pageX;
  //       y = e.pageY;
  //     }
  //
  //     x = x - xy_pos['xp'];
  //     y = y - xy_pos['yp'];
  //
  //     return {'xp':x, 'yp':y};
  //   }
  // };
  //
  //
  // // registers 'mousemove' event to container
  // container.addEventListener('mousemove', function(e){
  //   mouseXY = movingPaddle.getCoords(e);
  //   paddle.style.left = mouseXY.xp + 8 +'px';
  //   paddle.style.top = mouseXY.yp - 8 +'px';
  // });
  //
  //
  //
  //
  //
  //
  //
  //
  //
  //

})
