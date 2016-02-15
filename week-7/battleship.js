// How To Play:
// Enter a Range, and Bearing.
// If you guess the Range and Bearing of the target ship before you run out of ammo, you win.

// Pseudocode

// create a board of X's
// place a target ship on random spot on the board
//
// ask the user for a range and Bearing
//
// update board with users guess
// 
// if user range and bearing match target range and bearing
//   you win
// else
//   you missed
// end

// var player = {
//   ammo: 10,
// }

var board = [
  ["X", "X", "X", "X", "X"],
  ["X", "X", "X", "X", "X"],
  ["X", "X", "X", "X", "X"],
  ["X", "X", "X", "X", "X"],
  ["X", "X", "X", "X", "X"],
];

var targetLocation = {
  bearing: Math.floor(Math.random() * 5 + 1),
  range: Math.floor(Math.random() * 5 + 1),
};

var guess = {};

var range = 0;
var bearing = 0;

var print = function(board) {
  for (i = 0; i < board.length; i++) {
    console.log(board.length - i + ": " + board[i]);
  }
}

var makeGuess = function (bearing, range) {
  guess = {
    bearing: bearing - 1,
    range: board.length - range,
  }
}

var markBoard = function (guess) {
  board[guess.range][guess.bearing] = "0"
}

var checkGuess = function (guess) {
  if (guess.bearing == targetLocation.bearing &&
      guess.range == targetLocation.range) {
    console.log("You Win!");
    // console.log("Bearing: " + bearing)
    // console.log("Range: " + range)
    //
    // console.log("Target Location:");
    // console.log("Bearing: " + bearing)
    // console.log("Range: " + range)
  } else {
    console.log("Bearing: " + bearing)
    console.log("Range: " + range)
    console.log("You missed. Try again.");
  }
}

// Used for generating random guess
var mockGuess = function () {
  bearing = Math.floor(Math.random() * 5 + 1)
  range = Math.floor(Math.random() * 5 + 1)
}

mockGuess();

makeGuess(bearing, range)
markBoard(guess);
checkGuess(guess);

print(board);
