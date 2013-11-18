# prints numbers 1-100
# when the number is divisible by 3, say fizz
# when the number is divisible by 5 say buzz
# when the number is divisible by 3 and 5 say fizzbuzz

def fizzbuzz (num)
	if num % 15
		puts "fizzbuzz"
	elsif num % 3 == 0
		puts "fizz"
	elsif num % 5 == 0
		puts "buzz"
	else
		puts num
	end	
end