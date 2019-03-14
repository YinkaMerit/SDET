
// DOM: Document Object Model. Use DOMContentLoaded when you wanna place the js before the body.

document.addEventListener("DOMContentLoaded",function(){
  console.log("This code is ran when the page is finished loading!!!");

// Find the button on the page
  // var button1 = document.getElementById("btn1");
  //
  // button1.addEventListener("click",function(event){
  //   console.log(this);
  // });

var buttons = document.getElementsByClassName("buttonrow");
  console.log(buttons);

for (var i = 0; i < buttons.length; i++) {
  var button = buttons[i];

  button.addEventListener("click", function(event){
    console.log(this.value + " was clicked");
  });
}

//The event is essentially when an action has occured e.g. "click" running that through a function meaning running the funtion with that event.
//Because of this you can use 'this' which refers to the event that occured.




function addClassOnClick(){
  button.classList.add("btnclicked");
  console.log("button was clicked");
}

// // Adds a click listener to the button
//   // button1.addEventListener(event,response)
//
//   button1.addEventListener("click", addClassOnClick);
//
// Function to add a class th a button
  // function addClassOnClick(){
  //   button1.classList.add("btnclicked");
  //   console.log("btn1 was clicked");
  // }

// Select the form on the page
  var form = document.getElementById("form");

//Adds event listener for the form with submitted
//Note if the submit button is outside the even will be "click"
  form.addEventListener("submit", function(event){
    console.log("form submitted");

    event.preventDefault();

    var firstnameField = document.getElementById("firstname");

// value:stuff in button, innerHTML:stuff in the html

    if (firstnameField.value) {
      form.submit();
    }else {
      console.log("You must enter a name");
    }
  })


  //Bubbling

  //get all divs
  var div1 = document.getElementById("div1")
  var div2 = document.getElementById("div2")
  var div3 = document.getElementById("div3")

  //add Events

  div1.addEventListener("click",function(event){
    console.log("div1 was clicked");
  });
  div2.addEventListener("click",function(event){
    console.log("div2 was clicked");

    event.stopPropagation();//stops anything past it from happening,event on div1 still there but div2 acts as a barrier.
  });
  div3.addEventListener("click",function(event){
    console.log("div3 was clicked");
    
  });

})
