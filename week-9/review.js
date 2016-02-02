//check leap years
// psuedocode
// input: array or numbers
// output TRUE or FALSE for the numbers if they are a leap year, year or not.
// steps: #1. create a funtion that will take an array of numbers
// #2 Iterate through array and check if it is TRUE of False.
// #3 Have different arrays for TRUE and FALSE numbers
// #4 RETURN the TRUE array

var leapYear = function(arrayOfYears){
  confirmedLeapYear = [];
  deniedLeapYear = [];
  for (var index in arrayOfYears){
    if (arrayOfYears[index] % 4 ===0 && arrayOfYears[index] % 100 != 0 || arrayOfYears % 400 === 0){
      confirmedLeapYear.push(arrayOfYears[index])
    }
    else{
      deniedLeapYear.push(arrayOfYears[index])
    }
  }
}

leapYear([2016,2015,2014,2013,2012]);
console.log("These are the true leap years:",confirmedLeapYear.join(", "));
console.log("These are not leap years:", deniedLeapYear.join(", "));

// What concepts did you solidify in working on this challenge?
//  I really wanted to continue using the FOR IN loop because I never really got it completely. I think this helped out

// What was the most difficult part of this challenge?
//  Trying to figure out why some of my code didn't want to run with the join method that I have.

// Did you solve the problem in a new way this time?
//  A little different this time. I made it separate the leap years from the none and put it out that way.

// Was your pseudocode different from the Ruby version? What was the same and what was different?
//  It was a little different, in the fact that I wanted arrays for the return of each separate leap year or none leap year.
