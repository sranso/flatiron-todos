// prints numbers 1-100
// when the number is divisible by 3, say fizz
// when the number is divisible by 5 say buzz
// when the number is divisible by 3 and 5 say fizzbuzz

for (var i = 1; i <= 100; i++)
{
	if (i % 3 == 0 && i % 5 == 0) {console.log("fizzbuzz")}
	else if (i % 3 == 0) {console.log("fizz")}
	else if (i % 5 == 0) {console.log("buzz")}
	else {console.log(i)}
};