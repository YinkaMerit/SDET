// Calculator

var tryagain = true;

while (tryagain) {

  var result = null;

  //User Input

  var option_choice = prompt("Would you like (1) Basic Functions or (2) Advanced Functions?");

  while (option_choice != 1 && option_choice !=2) {
    prompt("Invalid Selecion.Would you like (1) Basic Functions or (2) Advanced Functions?");
  }

  if (option_choice == 1) {
    //Basic Operations

    var operation_choice = prompt("Do you want (a)ddition, (s)ubtraction, (m)ultiplication oe (d)ivision?");

    var num1 = parseInt(prompt("What is your 1ST number?"));
    var num2 = parseInt(prompt("What is your 2ND number?"));

    switch (operation_choice) {
      case "a":
      //Addition
        result = num1 + num2;
        break;
      case "s":
      //Subtraction
        result = num1 - num2;
        break;
      case "m":
      //Multiplication
        result = num1 * num2;
        break;
      case "d":
      //Division
        result = num1 / num2;
        break;
      default:
        console.log("Something went wrong");
    }

  } else {
    //Advanced Operations
    var operation_choice = prompt("Do you want (p)ower, (s)quare root?");

    if (operation_choice == "s") {
      var num1 = parseInt(prompt("What is your number?"));
    }else if (operation_choice != "s") {
        var num1 = parseInt(prompt("What is your 1st number?"));
        var num2 = parseInt(prompt("What is your 2nd number?"));
    }

    // var num1 = parseInt(prompt("What is your 1st number?"));
    // //Dont promt for second number if square root is selected
    // if (operation_choice != "s") {
    //   var num2 = parseInt(prompt("What is your 2nd number?"));
    // }


    //Power
    if (operation_choice == "p") {
      result = Math.pow(num1, num2);
    }
    //Square Root
    else if (operation_choice == "s") {
      result = Math.sqrt(num1);
    }

  }

  //Display Answer
  if (result != null) {
    alert("Ypur answer is " + result);

  }

  //This works because pressing q makes tryagain false therefore the while loops stop running
  tryagain = !prompt("press enter to continue, or (q) to quit");
}
