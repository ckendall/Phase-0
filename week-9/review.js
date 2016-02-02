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