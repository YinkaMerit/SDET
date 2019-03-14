// create a variable called firstName that contains a string
var firstName = "Yinka";
// create an array that contains three names
// use your firstName variable for the third name

var namesArray = ["Matt", "John", firstName];

// create a variable called numberOfNames that contains the number of people in your names array
var numberOfNames = namesArray.length;

// create a variable called age and put an appropriate data type in it
var age = 18;

// create a variable called younger that contains a third of this age
var younger = age/3;

// create a null variable called empty
var empty = null;
// create a variable called phoneNumber and store this number 07888777396
// ( think about what type of data would be best for this )
var phoneNumber = "07888777396";
// create a variable called friend
// extract the second value from your namesArray and put it in friend
var friend = namesArray[1];
// create a variable called sentence that contains the following sentence:
// I'm not a number, I'm fairly sure I'm a String
var sentence = "I'm not a number, I'm fairly sure I'm a String";

// create a variable called sentenceLength that contains the length of the sentence
var sentenceLength = sentence.length;

// BONUS
// Research how to create a JSON object called person
// Use the person object tests to add the correct data - a name propety that contains the firstName variable, a friends property that contains the namesArray variable, a phoneNumber property that contains the phoneNumber variable, a bestFriend property that contains the friend variable and a quote property that contains the sentence variable

var person = {
  name: firstName,
  age: age,
  friends: namesArray,
  phoneNumber: phoneNumber,
  bestFriend: friend,
  quote: sentence
}
