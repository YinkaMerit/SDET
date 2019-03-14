// // add item to list
//
// var parent = document.getElementById("list");
// var li = document.createElement("li");
//
// li.innerHTML = "this is another item";
//
// parent.appendChild(li);

//-----------------jQuery-------------------------
$(function(){
  //
  // $("ul li");

  // var newItem = $("<li>learn jQuery</li>")

  // $("#list").prepend(newItem)

  updateCount();
  addDoneListener();
  function updateCount(){
    var listLength = $(".todo").length;
    console.log(listLength);
    $("#count").html(listLength);
  }

  function randomItem(){
    var items = ["Go to Greggs", "Play Football", "Play Kingdom Hearts"];

    var random = Math.floor(Math.random()*(items.length));
    return items[random];
  }

  $("#btn").click(function(){
    var newItem = randomItem();
    $("#list").append("<li class='todo'>"+ newItem+"<button type='button' name='button' class='markdone'>Mark as Done</button></li>");
    updateCount();
    addDoneListener();
  })

  function addDoneListener(){
    $(".markdone").click(function(){
      $(this).hide();
      $(this).parent().addClass("done");
      $(this).parent().removeClass("todo");
      updateCount();
    })
  }

  //
  // $("h1").css("background-color","lavender").html("this has been updated")

  // var items = document.getElementsByTagName("li")
  //
  // for (var i = 0; i < items.length; i++) {
  //   items[i];
  //   items[i].classList.add("done");
  // }

  // $("#list li").addClass("done")

  // var button = document.getElementById("btn")
  // button.addEventListener("click", function(){
  //   alert("Stop clicking me!!!!")
  // })

  // //
  // $("#btn").on("click", function(){
  //   alert("Stop clicking me!!!!")
  // })

  // //.click standard event
  // $("#btn").click(function(){
  //   alert("Stop clicking me!!!!")
  // })

































}
)
