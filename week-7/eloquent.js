// Eloquent JavaScript

// Run this file in your terminal using `node my_solution.js`. Make sure it works before moving on!

// Program Structure
// Write your own variable and do something to it.
var number = 4
number += 5
// Complete one of the exercises: Looping a Triangle, FizzBuzz, or Chess Board

var string = "";
for (var x = 0; string.length < 7; x ++){
  console.log(string += "#")
};

// Functions

// Complete the `minimum` exercise.

var min = function(x,y){
	if (x < y){
      return x;
    }
  	else{
      return y;
    }
};


// Data Structures: Objects and Arrays
// Create an object called "me" that stores your name, age, 3 favorite foods, and a quirk below.
var me = {
	name: "Cody",
	age: 27,
	faveFood: ["Curry", "Pasta", "Apples"],
	quirk: "I really love rock climbing"

};


// Did you learn anything new about JavaScript or programming in general?
//  Well so far everything I knonw about JavaScript is from this book and the 
//  Devboot camp tutorial so I would say I learn a ton about JavaScript. New 
//  Syntax structure, new language all together, but I also learned that it is
//  kind of the same still. The logic is there its just the wording that has changed.

// Are there any concepts you feel uncomfortable with?
//  I felt real uncomfortable using the for loop for the first time. None of it seemed
//  Right to me so I was constantly checking the book and the guide to see if what I was
//  Doing was correct. 

// Identify two similarities and two differences between JavaScript and Ruby syntax with regard to numbers, arithmetic, strings, booleans, and various operators.
//  These are kind of the same with numbers and variables. they both can take in 
//  Numbers and string and save them to a variable and they can have the same operators regarding
//  addition, subtraction and the likes. the differences is with the naming a variable, we have to 
//  Call "var" in JavaScript each time we want to make a new variable. Boolean is also a little different
//  When checking to see if something is the same type and and value we always used the "=="
//  in Ruby, but for JavaScript they suggest using "===" because in JavaScript 5 does not equal "5"

// What is an expression?
//  An expression is a set of code that can explain something without any consequence to them.
//  An example woule be 2 > 3 this would return true. This would be considered and expression.

// What is the purpose of semicolons in JavaScript? Are they always required?
//  They are not always required but they do denote the end of a certain part of the
//  Code that you are working on. 

// What causes a variable to return undefined?
//  A variable that hasn't been assigned anything would return undefined.

// What does console.log do and when would you use it? What Ruby method(s) is this similar to?
//  console.log(something) puts what is in the paranthethesis on the screen so we can see it. I have used
//  It to see what is getting returned in my code. It is like the puts, p and print method in Ruby.

// Write a short program that asks for a user to input their favorite food. After they hit return, have the program respond with "Hey! That's my favorite too!" (You will probably need to run this in the Chrome console (Links to an external site.) rather than node since node does not support prompt or alert). Paste your program into the eloquent.js file.
//  var string = prompt("whats your favorite food?", "");
//  alert(string + " are my favorite food as well!");

// Describe while and for loops
//  They are exactly as they say they are, loops. the while loop is just like the loop in 
//  Ruby except the syntax is just a little different. we have our index counter and it runs
//  until that counter matchs criteria set by us. The for loop is basically that, but can be expressed
//  in a better way than the while loop, in my opinion. for loops have three initial parts. The variable
//  assignment, the conditions for the loop and the increment counter. 

// What other similarities or differences between Ruby and JavaScript did you notice in this section?
//  There are a lot of similarities with loops and logic and how we approach problems, but the way we write it
//  all out seems to be completely different and not quite as pretty as Ruby.

// What are the differences between local and global variables in JavaScript?
//  The difference between local and global are kind of the same in Ruby. Functions that 
//  Have declared variables in them are local variables and are only accesable within that 
//  Function, but variables declared outside of the function are global and can be used anywhere.

// When should you use functions?
//  It says in the eloquent JavaScript that functions are the bread and butter of Javascript
//  Because they can be used for so many things. They are bits of code wrapping up like a present
//  that can be presented anywhere in the code and used for a purpose. We can reduse repetition this
//  way and isolate programs better. Use them all the time from my understanding.

// What is a function declaration?
//  A function declaration is just a normal variable definition, but the variable
//  Just so happens to be a function instead of a string or other data type.

// What is the difference between using a dot and a bracket to look up a property? Ex. array.max vs array["max"]
//  Not too much difference there, but if there are strings in the aray we cant use the . notation becaseue
//  those are not valid variable names so we have to call them exactly as they are with brackets. otherwise
//  .length and ["length"] do the same thing, its just easier to use the . notation.

// What is a JavaScript object with a name and value property similar to in Ruby?
//  They are very similar to hashes is Ruby.

// // Reflection
// What are the biggest similarities and differences between JavaScript and Ruby?
//  The biggest similarities are how the code reads everything and the biggest differences
//  is how we write that code.

// Was some of your Ruby knowledge solidified by learning another language? If so, which concepts?
//  Not really, my biggest take away was from JavaScript and my quicker understanding of it because
//  of Ruby. I can now actually write the code that the methods in Ruby do for me. I never really had 
//  to think about it before now.

// How do you feel about diving into JavaScript after reading these chapters?
//  I'm a little nervous about it because it is so new and I'm not good at it. It will be fun
// because JavaScript seems so powerful and fun!



