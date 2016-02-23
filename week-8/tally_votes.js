// Tally Votes in JavaScript Pairing Challenge.

// I worked on this challenge with:
// This challenge took me [#] hours.

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

// iterate over the list of votes
// for each vote in votes, iterate over the vote
// for each position the vote is voting for, add 1 to the candidates total

// iterate over the candidates in the voteCount
// for each candidate, check if it has a higher value than the current leading candidate
// set leading candidate to the corresponding position in officers

// __________________________________________
// Initial Solution


// // Tallying up all the votes
// for (voter in votes) {
//   for (var position in officers) {
//     voteCount[position][voter] = 0;
//     for (var prop in votes) {
//
//       if (votes[prop][position] == voter) {
//         voteCount[position][voter]++;
//       }
//     };
//   }
// }
//
// // iterate over voteCount with name of postion
// // Choosing a winner for each postion
//
// var pVotes = 0;
//
// for (var candidate in voteCount["president"]) {
//   if (voteCount["president"][candidate] > pVotes) {
//     officers["president"] = candidate;
//     pVotes = voteCount["president"][candidate];
//   }
// }
//
// var vpVotes = 0;
//
// for (var candidate in voteCount["vicePresident"]) {
//   if (voteCount["vicePresident"][candidate] > vpVotes) {
//     officers["vicePresident"] = candidate;
//     vpVotes = voteCount["vicePresident"][candidate];
//   }
// }
//
// var sVotes = 0;
//
// for (var candidate in voteCount["secretary"]) {
//   if (voteCount["secretary"][candidate] > sVotes) {
//     officers["secretary"] = candidate;
//     sVotes = voteCount["secretary"][candidate];
//   }
// }
//
// var tVotes = 0;
//
// for (var candidate in voteCount["treasurer"]) {
//   if (voteCount["treasurer"][candidate] > tVotes) {
//     officers["treasurer"] = candidate;
//     tVotes = voteCount["treasurer"][candidate];
//   }
// }
///////////////////////////////////////////////////////////////////////



// __________________________________________
// Refactored Solution

// Tallying up all the votes
for (var voter in votes) {
  for (var position in officers) {
    voteCount[position][voter] = 0;
    for (var prop in votes) {
      if (votes[prop][position] == voter) {
        voteCount[position][voter]++;
      }
    };
  }
}

// iterate over voteCount with name of postion
// Choosing a winner for each postion

var pVotes = 0;

for (var candidate in voteCount["president"]) {
  if (voteCount["president"][candidate] > pVotes) {
    officers["president"] = candidate;
    pVotes = voteCount["president"][candidate];
  }
}

var vpVotes = 0;

for (var candidate in voteCount["vicePresident"]) {
  if (voteCount["vicePresident"][candidate] > vpVotes) {
    officers["vicePresident"] = candidate;
    vpVotes = voteCount["vicePresident"][candidate];
  }
}

var sVotes = 0;

for (var candidate in voteCount["secretary"]) {
  if (voteCount["secretary"][candidate] > sVotes) {
    officers["secretary"] = candidate;
    sVotes = voteCount["secretary"][candidate];
  }
}

var tVotes = 0;

for (var candidate in voteCount["treasurer"]) {
  if (voteCount["treasurer"][candidate] > tVotes) {
    officers["treasurer"] = candidate;
    tVotes = voteCount["treasurer"][candidate];
  }
}

// __________________________________________
// Reflection


// What did you learn about iterating over nested objects in JavaScript?
//
// I learned that iterating over nested objects in javascript is easier than I thought. After doing it a few times, I find myself just making them work. It is important to keep track of the variable names, and how each iteration is calling the local variable.
//
// Were you able to find useful methods to help you with this?
//
// I didn't use any special methods for this exercise. However, using the for/in syntaz did help reduce the total amount of code.
//
// What concepts were solidified in the process of working through this challenge?
//
// I definintley solidified nested loops. Each step was solved with a nested loop.

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
