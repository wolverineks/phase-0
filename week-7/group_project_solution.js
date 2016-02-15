// As a user, I want to be able to know the mean, median, and sum of a given set of numbers

function Calc(numbers) {
  this.numbers = numbers;
  this.sumMeanMedian = function() {
    console.log(this.sum());
    console.log(this.mean());
    console.log(this.median());
  }

  this.sum = function() {
    var runningSum = 0;
    for (var num in this.numbers) {
      runningSum += this.numbers[num];
    }
    return runningSum;
  }

  this.mean = function() {
    var totalItems = this.numbers.length;
    var runningTotal = this.sum();
    return runningTotal / totalItems;
  }

  this.median = function() {
    var totalItems = this.numbers.length;
    var smallestToLargest = this.numbers.sort(compareNumbers);
    if (totalItems % 3 == 0){
      return smallestToLargest[Math.floor(totalItems / 2)];
    } else {
      var upperValue = totalItems / 2;
      var lowerValue = upperValue - 1;
      return (upperValue + lowerValue) / 2;
    }
  }

  function compareNumbers(a, b) {
    return a - b;
  }

}

// Driver code

var nums = [1];
var calc = new Calc(nums);
calc.sumMeanMedian();

var nums = [1,1];
var calc = new Calc(nums);
calc.sumMeanMedian();

var nums = [1,1,1];
var calc = new Calc(nums);
calc.sumMeanMedian();

var nums = [1,1,1,1];
var calc = new Calc(nums);
calc.sumMeanMedian();
