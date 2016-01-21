// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with: .

// Pseudocode

//input:  an integer
//output:  a string of numbers with commas
//Steps:  Define separateComma(), reverse the input, split into an array, set up a counter that counts every three positions, put a comma in that value, rejoin it and covert into a string.

// Initial Solution

// var separateComma = function(number){
//   var reverseString = [];
//   var backToForward = [];
//   var string = number.toString();
//   for(var i = (string.length - 1); i > -1; i--){
//      reverseString.push(string[i]);
//   };
//   for(var x = 3; x <= (reverseString.length - 1); x += 3){
//    reverseString[x] = reverseString[x].concat(",");
//   };
  
//   for(var z = (reverseString.length - 1); z > -1; z--){
//      backToForward.push(reverseString[z]);
//   };
  
//   return backToForward.join("");
// };

// var num = 12346202020202020204;
// console.log(separateComma(num));
       
// Refactored Solution
function separateComma(number){
 var string = number.toString().split("").reverse();
  for(var x = 3; x <= (string.length - 1); x += 3){
      string[x] = string[x].concat(","); 
  };
  
return string.reverse().join("");
};

var num = 1234620;
console.log(separateComma(num));

// var num = 123462032456;
// console.log(separateComma(num));
// Your Own Tests (OPTIONAL)


function numberWithCommas(x) {
    return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
}

console.log(numberWithCommas(12345677))


// Reflection

// What was it like to approach the problem from the perspective of JavaScript? Did you approach the problem differently?
//  Not entirely different, but yes we did have to use a little bit more rational to figure out 
//  why certain things weren' working how they were supposed to.

// What did you learn about iterating over arrays in JavaScript?
//  I learned that for loops are a wonderful tool to go through different data
//  types in JavaScript.

// What was different about solving this problem in JavaScript?
//  I we had to set up the code with a few more functions to accomplish all that we wanted.

// What built-in methods did you find to incorporate in your refactored solution?
//  We used .split and .reverse to accomplish more of what we needed. our first had three
//  functions just to reverse and reverse again.






