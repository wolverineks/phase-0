// JavaScript Olympics

// I paired [by myself, with:] on this challenge. Kevin Sullivan, Mitch Kroska

// This challenge took me [#] hours.


// Warm Up
/*
Method takes one argument:Array of Athletes
Array consist of athlete: event pairs
Method will iterate through Array
 add "win" property to current Athlete which will
 be a function that takes the Athlete name and athlete event

var functionName = function () {}

function FunctionName () {};

fnction (array, athlete, win); => "So and So won their event"
*/
// var athletes = [
//   {
//   name: "Athlete #1",
//   event: "hurdles"
//   },
//   {
//   name: "Athlete #2",
//   event: "relay"
//   },
//   {
//   name: "Athlete #3",
//   event: "swimming"
//   },
// ]


// var addWin = function (athletes) {

//   for (var i in athletes) {
//     athletes[i].win = function () {
//       console.log(this.name + " won the " + this.event);
//     };
//   };
//   console.log(athletes);
// };

// addWin(athletes);
// athletes[0].win();
// athletes[1].win();
// athletes[2].win();

// Bulk Up

// Jumble your words
/*
Function that takes in one argument:String
 init empty Array name reversed
 iterate throught the string
   prepend current character to index 0 of reversed Array
 convert array to string and return
*/
// function reverse(phrase) {
//   var reversed = [];
//   for (var i = 0; i < phrase.length; i++) {
//     reversed.unshift(phrase[i]);
//   };
//   return reversed.join('');
// }
// console.log(reverse("hello"));
// console.log(reverse("Cats are cool!"));

// 2,4,6,8

// a function that takes an array
// initialize an empty array
// iterates over the array
// if element is even, add to array
// return array
// var numbers = [3,3,3,3,4,4,4,5,6,7,8,4,6,2,322345,34,12]

// function justEvens (numbers) {
//   var evens = []

//   for (var i in numbers) {
//     if ( numbers[i] % 2 == 0 ) {
//       evens.push(numbers[i]);
//     }
//   }
//   return evens;
// }
// console.log(justEvens(numbers));

// console.log( numbers.reduce(function(previousValue, currentValue, currentIndex, array) {
//     return currentValue % 2 == 0;
//   });)
// "We built this city"


// contructor
// function Athlete(name, age, sport, quote){
//   this.name = name;
//   this.age = age;
//   this.sport = sport;
//   this.quote = quote;
// };

var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!")
console.log(michaelPhelps.constructor === Athlete)
console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote)



// Reflection
//
// What JavaScript knowledge did you solidify in this challenge?
//
// I solidified the use of objects and functions.
//
// What are constructor functions?
//
// Constructor functions are functions that are used to make objects.
//
// How are constructors different from Ruby classes (in your research)?
//
// Constructors are simpler in syntax, and more lightweight than classes in Ruby. 
