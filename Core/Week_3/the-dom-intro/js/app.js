console.log("loaded");

// console.log(document.body.children[0].innerHTML);

// function changeTitle() {
// document.body.children[0].innerHTML = "This has been updated!";
// }
// setTimeout(function(What you want to happen), (time you want it to occur in ms));
//
// setTimeout(changeTitle, 5000);
//
// var pageTitle = document.getElementsByTagName('li')
//
// console.log(pageTitle);
//
// pageTitle[1].innerHTML = "second item"


//
// list.style.backgroundColor = "blue"
//
// var selector = document.querySelectorAll('li.active');
//
// console.log(selector);




//Essentially
//document.getElementById('list').appendChild(listItem)



function addListItem(value) {
  var list = document.getElementById('list');
  //Creates a new element
  var listItem =  document.createElement('li');

  listItem.innerHTML = value;
  list.appendChild(listItem)
}

var shoppingList = ["sugar", "spice", "all things nice!!"]

//Write a loop to add shopping list to unordered list
  for (var i = 0; i < shoppingList.length; i++) {
  addListItem(shoppingList[i]);
  }
// //set every other li to have class of even
// var list_item = document.body.children[1].children[0].children
// // var list_item = document.getElementsByTagName('li')
// // var list_item = document.querySelectorAll('ul li')
//
// for (var i = 1; i < list_item.length; i+=2) {
//   // list_item[i].className = "even";
//   list_item[i].classList.add("even");
// }
//
// //----------Alternative Method---------------------
//
// // var even = document.querySelectorAll('li:nth-child(even)')
// //
// // for (var i = 0; i < even.length; i++) {
// //   even.classList.add("even");
// // }
//
// // update span count to be the number of items in the list
//
// var span = document.body.children[2].children[0];
// span.innerHTML = list_item.length;
//
// console.log(span);
