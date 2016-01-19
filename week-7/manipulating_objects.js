
 // Manipulating JavaScript Objects

// I worked on this challenge: [by myself, with: ]

// There is a section below where you will write your code.

// DO NOT ALTER THIS OBJECT BY ADDING ANYTHING WITHIN THE CURLY BRACES!
var terah = {
  name: "Terah",
  age: 32,
  height: 66,
  weight: 130,
  hairColor: "brown",
  eyeColor: "brown"
}
// __________________________________________
// Write your code below.


var adam = {};
adam.name = "Adam";
terah.spouse = adam;
terah.weight = 125;
delete terah.eyeColor;
terah.spouse.spouse = terah;
terah.children = {};
var carson = {};
terah.children.carson = carson;
carson.name = "Carson";
var carter = {};
terah.children.carter = carter;
carter.name = "Carter";
var colton = {};
terah.children.colton = colton;
colton.name = "Colton";
adam.children = terah.children;



// __________________________________________
// Reflection: Use the reflection guidelines
//
//What tests did you have trouble passing? What did you do to make it pass? Why did that work?
// The hardest test for me to pass was getting the spouses all correct. I didn't exactly realize what
// it wanted me to do. I kept putting just one .spouse in it and was like "what do you want me to do!"
// but it just wanted me to have it be a circular thing. I looked at the test to see exactly what it 
// wanted me to do and tried to implement that. It worked becasue I knew what it was finally asking.
//
//How difficult was it to add and delete properties outside of the object itself?
// It wasn't too difficult once I knew how to kind of do it. I didn't completely understand
// that when I had my empty object carson I could just add it. When I had it declared
// I didn't know how to put it in children so I tried assigning it like this. terah.children = carter
// and that was wrong. Then I played around with it a little bit and found that adding a .something
// and assinging that is the way to go so I ended up with terah.children.carson = carson. deleteing was 
// easy enough, however. 
//
//What did you learn about manipulating objects in this challenge?
// I learned how to add and delete objects in this challenge. I never knew how 
// really to do that!


// __________________________________________
// Driver Code:  Do not alter code below this line.
function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}

assert(
  (adam instanceof Object),
  "The value of adam should be an Object.",
  "1. "
)

assert(
  (adam.name === "Adam"),
  "The value of the adam name property should be 'Adam'.",
  "2. "
)

assert(
  terah.spouse === adam,
  "terah should have a spouse property with the value of the object adam.",
  "3. "
)

assert(
  terah.weight === 125,
  "The terah weight property should be 125.",
  "4. "
)

assert(
  terah.eyeColor === undefined || null,
  "The terah eyeColor property should be deleted.",
  "5. "
)

assert(
  terah.spouse.spouse === terah,
  "Terah's spouse's spouse property should refer back to the terah object.",
  "6. "
)

assert(
  (terah.children instanceof Object),
  "The value of the terah children property should be defined as an Object.",
  "7. "
)

assert(
  (terah.children.carson instanceof Object),
  "carson should be defined as an object and assigned as a child of Terah",
  "8. "
  )

assert(
  terah.children.carson.name === "Carson",
  "Terah's children should include an object called carson which has a name property equal to 'Carson'.",
  "9. "
)

assert(
  (terah.children.carter instanceof Object),
  "carter should be defined as an object and assigned as a child of Terah",
  "10. "
  )

assert(
  terah.children.carter.name === "Carter",
  "Terah's children should include an object called carter which has a name property equal to 'Carter'.",
  "11. "
)

assert(
  (terah.children.colton instanceof Object),
  "colton should be defined as an object and assigned as a child of Terah",
  "12. "
  )

assert(
  terah.children.colton.name === "Colton",
  "Terah's children should include an object called colton which has a name property equal to 'Colton'.",
  "13. "
)

assert(
  adam.children === terah.children,
  "The value of the adam children property should be equal to the value of the terah children property",
  "14. "
)

console.log("\nHere is your final terah object:")
console.log(terah)