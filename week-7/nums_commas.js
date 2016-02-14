// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with: Kevin Sullivan, Jack Hamilton

// Pseudocode
// Example: separateComma(1569743) == "1,569,743"

// take an integer as a parameter
// turn parameter into a string

// iterate over the string from the right most number to the left most number
// initialize a reversed_result variable

// if index of character equal to a (multiple of 3) + 1
//   append comma and character to reversed_result
// else
//   append character to reversed_result
// end

// initialize result variable
// iterate over the reversed_result
// append each element of reversed_result to result

// return result

// Initial Solution

// var foo = function(bar) { bar + 'baz'; };

// var separateComma = function(number) {
// 	var str_num = number.toString();
// 	var reversed_result = [];
// 	for (var i=str_num.length - 1; i >= 0; i--){
// 		if (i % 3 + 1 == 1  && i < str_num.length - 1){
// 			reversed_result.push(",");
// 			reversed_result.push(str_num[i]);
// 		} else {
// 			reversed_result.push(str_num[i]);
// 		}
// 	}
// 	var result = [];
// 	for (var i=reversed_result.length - 1; i >= 0; i--){
// 		result.push(reversed_result[i]);
// 	}
// 	return result.join("");
// };

// var result = separateComma(1569743);
// console.log(result);

// Refactored Solution

var separateComma = function(number) {
	var str_num = number.toString();
	var reversed_result = [];
  var result = [];

  for (i in str_num) {
    reversed_result.unshift(str_num[i]);
  }

  for (i in reversed_result) {
    if (i % 3 + 1 == 1 && !(i == 0)){
      result.unshift(",");
			result.unshift(reversed_result[i]);
		} else {
			result.unshift(reversed_result[i]);
		}
  }
	return result.join('');
};


// Your Own Tests (OPTIONAL)

var result = separateComma(1569743);
console.log(result == "1,569,743");
console.log(result);



// Reflection


// What was it like to approach the problem from the perspective of JavaScript? Did you approach the problem differently?

// In this exercise I spent more time in the pseudocode stage. I felt that because I am more confident in Ruby, I am more likely to prematurely jump into the and rely heavily on my ruby skills to solve the problem.In javascript however, my skills being what they are, I spent much more time thinking about how to solve the problem first.

// What did you learn about iterating over arrays in JavaScript?

// I learned that Javascript has an interator built into the syntax of the loop.

// What was different about solving this problem in JavaScript?

// I didn't notice anything particularly different when solving the problem in Javascript.

// What built-in methods did you find to incorporate in your refactored solution?

// I used toString(), unshift(), join(), and log().
