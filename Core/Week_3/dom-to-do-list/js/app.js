document.addEventListener("DOMContentLoaded",function(){
  console.log("This is code is ran when the page is finished loading!!!");

  countListItems();

//form to capture info
var submitBtn = document.getElementById("additem")
var formText = document.getElementById("newitem")

submitBtn.addEventListener("click",
function(event){
  event.preventDefault();
  var userInput = formText.value;
  addListItem(userInput);
  countListItems();
  formText.value = "";
});
//add items to List

function addListItem(item){
  var ul = document.getElementById("list");
  var li = document.createElement("li");
  li.innerHTML = item;
  ul.appendChild(li);
}

//update count items left to do

function countListItems(){
  var listItems = document.getElementsByTagName("li");
  var counter = document.getElementById("count");

  counter.innerHTML = listItems.length;
}


// Remove last item from listItems
var remove = document.getElementById("removeitem")

remove.addEventListener("click",
  function(){
    var ul = document.getElementById("list");
    var listItems = document.getElementsByTagName("li");
    if (listItems.length !=0) {
      ul.removeChild(listItems[listItems.length-1]);
    }
    countListItems();
})

















})
