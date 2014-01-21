function fizzbuzz() {
  for (var num = 0; num < 100; num++) {
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
fizzbuzz();