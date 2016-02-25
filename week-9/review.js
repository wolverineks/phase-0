// Summary
//
// In this challenge you want to create a simple guessing game. Think in terms of when you were 7 and asked your friends to identify the number you were thinking...
//
// Your GuessingGame class should be initialized with an integer called answer.
//
// Define an instance method GuessingGame#guess which takes an integer called guess as its input. guess should return the symbol :high if the guess is larger than the answer, :correct if the guess is equal to the answer, and :low if theguess is lower than the answer.
//
// Define an instance method GuessingGame#solved? which returns true if the most recent guess was correct and false otherwise.
//
// In this case, we're asking you to use symbols for :low, :high, and :correct. This is partly due to the way strings and symbols are stored in memory.



// pseudocode

// create a variable to hold the answer
// set the variable to some random number
//
// ask the user to supply guess
//
// while the user guess is not equal to the answer
//
//   if users guess is higher than the answer
//     tell the user too high
//   else if the user guess is lower than the answer
//     tell the user too low
//   else
//     tell the user they are correct
//

// var answer = Math.floor(Math.random() * 1000)
//
// // Until the user supplies a number, keep asking to supply a number
// while (isNaN(userGuess)) {
//   var userGuess = parseInt(prompt("Guess a number: "));
// }
//
// // until the user guesses correctly, take more guesses and give hints
// while (userGuess != answer) {
//   if (userGuess > answer) {
//     while (isNaN(userGuess)) {
//       userGuess = parseInt(prompt("Too high. Guess again: "));
//     }
//   } else if (userGuess < answer) {
//     while (isNaN(userGuess)) {
//       userGuess = parseInt(prompt("Too low. Guess again: "));
//     }
//   }
// }
//
// // when the user guesses correctly, tell them they are right
// alert("You are correct. The answer was " + answer);


// refactor

// Set answer to some random number between 1 and 1000
var answer = Math.floor(Math.random() * 1000);
var userGuess;

var getUserGuess = function(message = "Guess a number: ")  {
  userGuess = parseInt(prompt(message));
  while (isNaN(userGuess)) {
    getUserGuess();
  }
}

getUserGuess();

// until the user guesses correctly, take more guesses and give hints
while (userGuess != answer) {
  if (userGuess > answer) {
    getUserGuess("Too high. Guess again: ");
  } else {
    getUserGuess("Too low. Guess again: ");
  }
}

// when the user guesses correctly, tell them they are right
alert("You are correct. The answer was " + answer);


///////////////////////////////////////////

// Reflection

// What concepts did you solidify in working on this challenge?

// I solidified the concepts of loops, if/else statements, recursion, and variable assignment.

// What was the most difficult part of this challenge?

// The most dificult part of the assignment was keep track of what a variable was assigned at any given time through the execution of the program.

// Did you solve the problem in a new way this time?

// The program is running automatically in the browser this time, vs running manually in a ruby console. They really arent solving the same problem. They were solved differently as they were in different environments. However, they did include similar elements, such a an if/else statment.

// Was your pseudocode different from the Ruby version? What was the same and what was different?

// The pseudocode was most definitly different than with the solution in ruby. These solutions were in different environments, so they involved different solutions. They involved some similarities.
