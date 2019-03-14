console.log("loaded");


//------------------Outside Vars-----------------------

// Here console.log(); can call outside a function
var outsideVariable = 5;

function printwords() {
  console.log(outsideVariable);
}

printwords();

//------------------Inside Vars-----------------------

// // Here console.log(); cant call inside a function
// function doSomething() {
//   var insideVariable = "You cant see me!!";
// }
//
// doSomething();
//
// console.log(insideVariable);

//-------------------Functions-----------------------

function first() {
  console.log("I am the first function");
}

// Can call the first function as first is outside
function second() {
  first();
  console.log("I am the second function");
}

second();


// ---------------------Nesting------------------------

var word1 = "butter";
var word2 = "yellow"

function joinWordsandPrint(string1, string2) {
  var combinedstring = string1 + string2;

  printString(combinedstring);

  function printString(string){
    console.log(string);
  }


}

joinWordsandPrint(word2, word1);
