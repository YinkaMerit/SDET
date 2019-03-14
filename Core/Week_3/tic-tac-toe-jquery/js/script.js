$(document).ready(function(){

  var squares = $("td");
  var playerTurn =$(".playerTurn");
  var counter = 0;

//Target one box

// for (var i = 0; i < squares.length; i++) {
//   squares[i];
  squares.each("click", function(event){
    console.log("this box was clicked");
    while (this.html = "") {
      if (counter % 2 == 0) {
        $(this).addClass("X");
        $(this).html("X");
        counter++;
      }else if (counter % 2 == 1) {
        $(this).addClass("O");
        $(this).html("O");
        counter++;
      }

    }
  })
// }
//
// squares.on("click",function(event){
//   for (var i = 0; i < squares.length; i++) {
//     squares[i];
//     console.log("this box was clicked");
//     $("td").addClass("X")
//   }
//
//
// })

})
