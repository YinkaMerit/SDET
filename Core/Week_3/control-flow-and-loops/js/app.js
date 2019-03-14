console.log("JS Loaded");

// var age = prompt("How old are you?");
//
// age = parseInt(age);
//
// // if (age >= 18) {
// //     alert("Have a beer!!!You are old enough!!")
// // }
//
// if (age >= 18) {
//   alert("Have a beer!!!You are old enough!!")
//   var choice = prompt("what beer do you want? 1)Becks or 2)Grolsch?")
//
//   if (choice == "1") {
//     alert("Becks!! Good Choice")
//   }else {
//     alert("Poor Choice!")
//   }
// } else {
//   alert("Go away you're too young!!")
// }
//
// var choice = prompt("Would you like 1,2 or 3?");

// if (choice == "1") {
//   alert("1 is the best");
// } else if (choice == "2") {
//   alert("2 is great");
// } else if (choice == "3") {
//   alert("3 is fine");
// } else {
//   alert("invalid selection");
// }

// switch (choice) {
//   case "1":
//     alert("1 is the best");
//     break;
//   case "2":
//     alert("2 is great");
//     break;
//   case "3":
//     alert("3 is fine");
//     break;
//   default:
//     alert("invalid selection");
//
// }
//
// var name = prompt("what is your name?")
//
// switch (name) {
//   case "Rob":
//     alert("welcome back Rob");
//     break;
//   case "Zac":
//     alert("You're new here");
//     break;
//   default:
//     alert("I dont know who you are");
// }




//Comparitors

// > greater than
// < less than
// <= less than or equal to
// >= greater than or equal to

// == looks for equavilance in value but not type

// != not equal to

// === looks for equavilance in value and type

// && used as 'and' in an if statement

// || used as 'or' in an if statement



//Loops

// for (var i = 0; i < 100; i++) {
//   console.log("i is equal to:" +i);
// }

// var array = ["Rob", "is", "great"];
//
// for (var i = 0; i < array.length; i++) {
//   console.log(array[i]);
// }
//
// var i = 0;
// while (i < 5) {
//   console.log("this loop has ran " + i + " times");
//   i++;
// }
//
// do {

// var i = 7
//
// do {console.log("this loop has ran " + i + " times");
//   i++;
// } while (i < 5);

var object = {
  name: "rob",
  age: 28,
  city:"brum"
}

for (var key in object) {
  console.log(key + ": " + object[key] );
}

var numarray = [1,2,3,4];

for (value of numarray) {
  console.log(value);
}
