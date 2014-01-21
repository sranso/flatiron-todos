function fizzbuzz(num) {
  for (var i = 0; i < num.length; i++) {
    num[i]
    if (num % 15 == 0) {
      console.log("Fizz Buzz");
    }
    else if (num % 3 == 0) {
      console.log("Fizz");
    }
    else if (num % 5 == 0) {
      console.log("Buzz");
    }
    else { console.log (num); }
  };
}