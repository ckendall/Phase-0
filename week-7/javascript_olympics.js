 // JavaScript Olympics

// I paired [with: Aaron Opsahl, Cody Kendall] on this challenge.

// This challenge took me [] hours.


// Bulk Up


// var athletes = {name: ["Sarah", "Phelps"],
//                 event: ["Ladies Singles","Swimming"]};

// function addWin(athletes){
//   for (var i = 0; i < athletes.name.length; i ++)
//    console.log(athletes.name[i] + (" won the ") + athletes.event[i]);
// };

// addWin(athletes)
  
// Jumble your words

// var string = "Lets jumble our words";

// function jumble(string){
//   var stringArray = [];
//   for(var i = 0; i < string.length; i++){
//     stringArray.push(string[i])
//   };
//   console.log(stringArray.reverse().join(''))
// };

// jumble(string);
// 2,4,6,8

// var numbers = [1, 2, 3, 4, 5, 6, 7, 8];


// function even(nums) {
//   for (var i = 0; i < nums.length; i++)
//     if (nums[i] % 2 === 0){
//       console.log(nums[i])
//     };
// };


// even(numbers);
// "We built this city"
var Athlete = function(name, age, sport, quote){
  this.name = name;
  this.age = age;
  this.sport = sport;
  this.quote = quote;
}

var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!")
console.log(michaelPhelps.constructor === Athlete)
console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote)

// Reflection
// What JavaScript knowledge did you solidify in this challenge?
//  I keep on solidifying my logic skills and trying to break code down so that I can 
//  understand it. 
// What are constructor functions?
//   Constructor functions are instances of another function so they can be manipulated
//   and they don't harm the original function.
// How are constructors different from Ruby classes (in your research)?
//  My pair and I were talking about this and they are kind of like classes in the fact
//  that they are like instances, but not quite becasue they can be called anywhere. 
//  They more maluable than classes and dont need inheritance to be used. I see
//  them as being easier use than classes.




