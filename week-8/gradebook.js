/*
Gradebook from Names and Scores

I worked on this challenge with: Kevin Sullivan
                                 Luis Ybarra
This challenge took me [#] hours.

You will work with the following two variables.  The first, students, holds the names of four students.
The second, scores, holds groups of test scores.  The relative positions of elements within the two
variables match (i.e., 'Joseph' is the first element in students; his scores are the first value in scores.).

Do not alter the students and scores code.

*/

// var students = ["Joseph", "Susan", "William", "Elizabeth"]

// var scores = [ [80, 70, 70, 100],
//                [85, 80, 90, 90],
//                [75, 70, 80, 75],
//                [100, 90, 95, 85] ]

// // __________________________________________
// // Write your code below.

// // Make each student name in students a property of gradebook and assign each the value of a new object.
// var gradebook = {};

// for (var i = 0; i < students.length; i++) {
//   gradebook[students[i]] = {};
// }

// // Give each student property of gradebook its own testScores property and assign it the value of the respective students scores from scores.

// for (var i = 0; i < students.length; i++) {
//   //gradebook[students[i]].testScores = scores[i];
//  gradebook[students[i]] = { testScores: scores[i] };
// }

// // Assign an addScore property to gradebook. Give it the value of a function that accepts name and scorearguments.
// // Have addScore push the score to the value of the testScore property of the gradebook property that matches the value of the name argument.
// // gradebook[students name].testscores.push (new value)

// gradebook.addScore = function (name, score) {
//   this[name].testScores.push(score);
// }


// // Add the getAverage property to gradebook and assign it the value of a function. (This won't actually do anything just yet...)

// gradebook.getAverage = function(name) {
//   var scores = gradebook[name].testScores;
//   return average(scores);
// };

// // Create a new function average that accepts an array of integers and return the average of those integers.
// // NOTE: getAverage and average are different functions.

// var average = function(arr){
//   var summ = 0;
//   for (var j = 0; j < arr.length; j++){
//     summ += arr[j];
//   }
//   return summ / arr.length;
// };



// __________________________________________
// Refactored Solution

var students = ["Joseph", "Susan", "William", "Elizabeth"]

var scores = [ [80, 70, 70, 100],
               [85, 80, 90, 90],
               [75, 70, 80, 75],
               [100, 90, 95, 85] ]

var gradebook = {};

for (var i in students) {
  gradebook[students[i]] = {};
}

for (var i in students) {
  gradebook[students[i]].testScores = scores[i];
}

gradebook.addScore = function (name, score) {
  this[name].testScores.push(score);
}

gradebook.getAverage = function(name) {
  var scores = gradebook[name].testScores;
  return average(scores);
};

var average = function(arr){
  var summ = 0;
  for (var j in arr){
    summ += arr[j];
  }
  return summ / arr.length;
};

// __________________________________________
// Reflect



// * What did you learn about adding functions to objects?
//
// There are mutiple ways to add functions to an object. You can add it to the object in object literal syntax, or you can add it as a property using dot notation or bracket notation.
//
// * How did you iterate over nested arrays in JavaScript?
//
// We iterated over the arrays using the for syntax, then refactored to the for in syntax.
//
// * Were there any new methods you were able to incorporate? If so, what were they and how did they work?
//
// We used the method push() to add new elements to the end of an array.





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
  (gradebook instanceof Object),
  "The value of gradebook should be an Object.\n",
  "1. "
)

assert(
  (gradebook["Elizabeth"] instanceof Object),
  "gradebook's Elizabeth property should be an object.",
  "2. "
)

assert(
  (gradebook.William.testScores === scores[2]),
  "William's testScores should equal the third element in scores.",
  "3. "
)

assert(
  (gradebook.addScore instanceof Function),
  "The value of gradebook's addScore property should be a Function.",
  "4. "
)

gradebook.addScore("Susan", 80)

assert(
  (gradebook.Susan.testScores.length === 5
   && gradebook.Susan.testScores[4] === 80),
  "Susan's testScores should have a new score of 80 added to the end.",
  "5. "
)

assert(
  (gradebook.getAverage instanceof Function),
  "The value of gradebook's getAverage property should be a Function.",
  "6. "
)

assert(
  (average instanceof Function),
  "The value of average should be a Function.\n",
  "7. "
)
assert(
  average([1, 2, 3]) === 2,
  "average should return the average of the elements in the array argument.\n",
  "8. "
)

assert(
  (gradebook.getAverage("Joseph") === 80),
  "gradebook's getAverage should return 80 if passed 'Joseph'.",
  "9. "
)
