console.log("page loaded");
var a = 5, b = 10;
var c = 2, d = 8;

// function mutliplyTwoNumbers() {
//   var result = 3 * 10;
//   console.log(result);
// }
//
// mutliplyTwoNumbers()
//


function mutliplyTwoNumbers(a, b) {
  var result = a * b;
  console.log(result);
}

mutliplyTwoNumbers(a, b)



function mutliplyTwoNumbers(num1, num2) {
  var result = num1 * num2;
  console.log(result);
}

mutliplyTwoNumbers(c, d)


//Camel - thisIsCamelCase
//Capital - ThisIsCapitalCase
//snake - this_is_snake_case
//kebab - this-is-kebab-case


var additionresult =  function(){
  num1 = prompt("give me the first number");
  num2 = parseInt(prompt("give me the second number"));
  //info is always returned as a string
  console.log(typeof num1, typeof num2);
  return num1 + num2;
}

console.log(additionresult());

alert("this is an alert!!!");
