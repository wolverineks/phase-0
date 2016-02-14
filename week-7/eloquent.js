// Eloquent JavaScript

// Run this file in your terminal using `node my_solution.js`. Make sure it works before moving on!

// Program Structure
// Write your own variable and do something to it.

var test = 5;
console.log(test);
test = test + 5;
console.log(test);

// prompt("What is your favorite food?");
// alert("Hey! That's my favorite too!");

// Complete one of the exercises: Looping a Triangle, FizzBuzz, or Chess Board

for (var output = ""; output.length <= 7; output += "#") {
  console.log(output);
}

// Functions

// Complete the `minimum` exercise.

function min(a, b) {
  return (a < b) ? a : b;
};

console.log(min(1,2));

// Data Structures: Objects and Arrays
// Create an object called "me" that stores your name, age, 3 favorite foods, and a quirk below.

var me = {
  name: "sdfvsdfv",
  age: 123123,
  foods: ["!@341", "q23rq2ef", "13fq3wre"],
  quirk: "aevqadf",
}

// Introduction (Links to an external site.)

//     Did you learn anything new about JavaScript or programming in general?

// I learned that writing in 1's and 0's is possible to create small programs and build up in compleity to larger more sophsticated programs.

//     Are there any concepts you feel uncomfortable with?

// The syntax of javascript still worries me. I think diving into the source code may be bneficial to see just how it's all put together.

// Ch. 1: Values, Types, and Operators (Links to an external site.)

//     Identify two similarities and two differences between JavaScript and Ruby
//     syntax with regard to numbers, arithmetic, strings, booleans, and various
//     operators.

// All the arithmetic syntax appears to be the same between Ruby and Javascript. You add the same, subtract the same, multiply the same, divide the same.

// Ruby however, has floats and integers, while Javascript only has floats, simply called numbers.

// Ch. 2: Program Structure (Links to an external site.)

//     What is an expression?

// An expression is a fragment of code that returns a value.

//     What is the purpose of semicolons in JavaScript? Are they always
//     required?

// Semicolons are used to indicate a break between one line and the next.

//     What causes a variable to return undefined?

// A variable returns undefined if it doesnt point at anything.

//     Write your own variable and do something to it in the eloquent.js file.

// see above

//     What does console.log do and when would you use it? What Ruby method(s)
//     is this similar to?

// Console.log() evaluates whatever is in between its parentheses and prints that to the console. You would use this to keep track of things you want to read in the future such as errors in your program. It is similar to puts, print, and p in Ruby.

//     Write a short program that asks for a user to input their favorite food.
//     After they hit return, have the program respond with "Hey! That's my
//     favorite too!" (You will probably need to run this in the Chrome console
//     (Links to an external site.) rather than node since node does not support
//     prompt or alert). Paste your program into the eloquent.js file.

//     Describe while and for loops

// While loops are fragments of code that will execute until a condition no longer returns true.
//
// For loops are syntactical sugar versions of the while loop, but usually used to execute a fragment of code a specific number of times.

//     What other similarities or differences between Ruby and JavaScript did
//     you notice in this section?

// Ruby and Javascript both have functions that execute code, both have variables to store values, both have the ability to chain things, both have the ability to return values from expressions.

//     Complete at least one of the exercises (Looping a Triangle, FizzBuzz, of
//     Chess Board) in the eloquent.js file.

// Ch. 3: Functions (Links to an external site.) (Skip the sections on closure
// and recursion)

//     What are the differences between local and global variables in
//     JavaScript?

// Global variables are variables declared outside of any function. These are accessible anywhere in the program.

// Local variables are declared as parameters or inthe body of a function. These variables are only accessible inside the function. They also take precedence over global variables.

//     When should you use functions?

// You should use functions to wrap fragments of code that you want to execute later, multiple times, or in multiple contexts, or to make the code easier to read.

//     What is a function declaration?

// A functional declaration is when you assign a block of code to a variable.

//     Complete the minimum exercise in the eloquent.js file.

// see above

// Ch. 4: Data Structures: Objects and Arrays (Links to an external site.)

//     Skip the sections on the Lycanthrope's log, Computing Correlations, and
//     sections from Further Arrayology to the Global Object, but read the
//     chapter summary. What is the difference between using a dot and a bracket
//     to look up a property? Ex. array.max vs array["max"] Create an object
//     called me that stores your name, age, three favorite foods, and a quirk
//     in your eloquent.js file. What is a JavaScript object with a name and
//     value property similar to in Ruby?

// Using the bracket notation is useful if the property is a string with spaces. Using bracket notation is useful if the property is an expression that is evaluated to get the property name.
