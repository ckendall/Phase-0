// Tally Votes in JavaScript Pairing Challenge.

// I worked on this challenge with: Tim Kelly
// This challenge took me [5] hours.

// These are the votes cast by each student. Do not alter these objects here.
var votes = {
  "Alex": { president: "Bob", vicePresident: "Devin", secretary: "Gail", treasurer: "Kerry" },
  "Bob": { president: "Mary", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Cindy": { president: "Cindy", vicePresident: "Hermann", secretary: "Bob", treasurer: "Bob" },
  "Devin": { president: "Louise", vicePresident: "John", secretary: "Bob", treasurer: "Fred" },
  "Ernest": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Fred": { president: "Louise", vicePresident: "Alex", secretary: "Ivy", treasurer: "Ivy" },
  "Gail": { president: "Fred", vicePresident: "Alex", secretary: "Ivy", treasurer: "Bob" },
  "Hermann": { president: "Ivy", vicePresident: "Kerry", secretary: "Fred", treasurer: "Ivy" },
  "Ivy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Gail" },
  "John": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Kerry" },
  "Kerry": { president: "Fred", vicePresident: "Mary", secretary: "Fred", treasurer: "Ivy" },
  "Louise": { president: "Nate", vicePresident: "Alex", secretary: "Mary", treasurer: "Ivy" },
  "Mary": { president: "Louise", vicePresident: "Oscar", secretary: "Nate", treasurer: "Ivy" },
  "Nate": { president: "Oscar", vicePresident: "Hermann", secretary: "Fred", treasurer: "Tracy" },
  "Oscar": { president: "Paulina", vicePresident: "Nate", secretary: "Fred", treasurer: "Ivy" },
  "Paulina": { president: "Louise", vicePresident: "Bob", secretary: "Devin", treasurer: "Ivy" },
  "Quintin": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Bob" },
  "Romanda": { president: "Louise", vicePresident: "Steve", secretary: "Fred", treasurer: "Ivy" },
  "Steve": { president: "Tracy", vicePresident: "Kerry", secretary: "Oscar", treasurer: "Xavier" },
  "Tracy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Ullyses": { president: "Louise", vicePresident: "Hermann", secretary: "Ivy", treasurer: "Bob" },
  "Valorie": { president: "Wesley", vicePresident: "Bob", secretary: "Alex", treasurer: "Ivy" },
  "Wesley": { president: "Bob", vicePresident: "Yvonne", secretary: "Valorie", treasurer: "Ivy" },
  "Xavier": { president: "Steve", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Yvonne": { president: "Bob", vicePresident: "Zane", secretary: "Fred", treasurer: "Hermann" },
  "Zane": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Mary" }
}

// Tally the votes in voteCount.
var voteCount = {
  president: {},
  vicePresident: {},
  secretary: {},
  treasurer: {}
}

/* The name of each student receiving a vote for an office should become a property
of the respective office in voteCount.  After Alex's votes have been tallied,
voteCount would be ...
  var voteCount = {
    president: { Bob: 1 },
    vicePresident: { Devin: 1 },
    secretary: { Gail: 1 },
    treasurer: { Kerry: 1 }
  }
*/


/* Once the votes have been tallied, assign each officer position the name of the
student who received the most votes. */
var officers = {
  president: undefined,
  vicePresident: undefined,
  secretary: undefined,
  treasurer: undefined
}

// Pseudocode


// __________________________________________
// Initial Solution


// var firstObj = {
//   "bob": {pos1: "tony", pos2: "andy"},
//   "joe": {pos1: "sally", pos2: "lucy"},
//   "jesse":{pos1: "tony"}
// }


// var otherObj = {
//   pos1: {},
//   pos2: {}
// };

// // console.log(firstObj["one"]);
// // console.log(firstObj["two"]["num"]);

// // var counter = 0;

// // for (index in firstObj){
// //   console.log(index);
// //   console.log();
// //   // console.log(index[counter]);
// //   counter += 1;
// //   console.log(firstObj[index]["firstName"]);
// //   otherObj = firstObj[index].first;
// // }

// var max = function(x){
//  var index = 0;
//  for (var title in voteCount){
//    for (position in officers){
//      for (var i = 0; i < x.length; i++){
//        console.log("string");
//        if (voteCount[title][i] > index){
//          console.log(voteCount[title][i])
//          index = voteCount[title][i];
//        }
//      }
//    }
//  }
//  return index;
// }
// for (var name in votes){
//   for (var title in voteCount){
//     if (voteCount[title][votes[name][title]] === undefined){
//       voteCount[title][votes[name][title]] = 1
//     } else {
//       voteCount[title][votes[name][title]] += 1;
//     }
//   }  
// }

// for (var title in voteCount){
//   var max = 0;
//   for (var name in officers){
//     console.log(voteCount[title])
//     console.log();
//   }
   
// }




// var voteCount = {
//     president: { Bob: 1 },
//     vicePresident: { Devin: 1 },
//     secretary: { Gail: 1 },
//     treasurer: { Kerry: 1 }




// __________________________________________
// Refactored Solution

var max = function(casted_votes){
var winner = "";
var current_winning_tally = 0;
  for (var candidate in casted_votes){
    if (casted_votes[candidate] > current_winning_tally){
      current_winning_tally = casted_votes[candidate]
      winner = candidate
    }
  }
  return winner;
}
  
for (var name in votes){
  for (var title in voteCount){
    if (voteCount[title][votes[name][title]] === undefined){
      voteCount[title][votes[name][title]] = 1
    } else {
      voteCount[title][votes[name][title]] += 1;
    }
  }  
}

for (var name in voteCount){
      officers[name] = max(voteCount[name]);
}


// __________________________________________
// Reflection

// What did you learn about iterating over nested objects in JavaScript?
// I learned that I really struggled at it without having good names
// for my variables. I also learned that brackets can be good. I guess I 
// learned quite a bit its just hard to put into words for me. There was 
// a ton of experimentation of what we were actuall getting. 

// Were you able to find useful methods to help you with this?
//  the for..in.. loop was nice. I got to work with it a lot this challenge
//  I never used it before here so I got to figure out how it worked. Other
//  than that we didn't use anything different. 

// What concepts were solidified in the process of working through this challenge?
//  The biggest thing that I think, for me, was the naming of variables. 
//  The more specific that I can name them the better I can understand the code
//  and what something is.




// __________________________________________
// Test Code:  Do not alter code below this line.


function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}

assert(
  (voteCount.president["Bob"] === 3),
  "Bob should receive three votes for President.",
  "1. "
)

assert(
  (voteCount.vicePresident["Bob"] === 2),
  "Bob should receive two votes for Vice President.",
  "2. "
)

assert(
  (voteCount.secretary["Bob"] === 2),
  "Bob should receive two votes for Secretary.",
  "3. "
)

assert(
  (voteCount.treasurer["Bob"] === 4),
  "Bob should receive four votes for Treasurer.",
  "4. "
)

assert(
  (officers.president === "Louise"),
  "Louise should be elected President.",
  "5. "
)

assert(
  (officers.vicePresident === "Hermann"),
  "Hermann should be elected Vice President.",
  "6. "
)

assert(
  (officers.secretary === "Fred"),
  "Fred should be elected Secretary.",
  "7. "
)

assert(
  (officers.treasurer === "Ivy"),
  "Ivy should be elected Treasurer.",
  "8. "
)