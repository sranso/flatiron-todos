# prints numbers 1-100
# when the number is divisible by 3, say fizz
# when the number is divisible by 5 say buzz
# when the number is divisible by 3 and 5 say fizzbuzz

def fizzbuzz (num)
	if num % 15 == 0
		"fizzbuzz"
	elsif num % 3 == 0
		"fizz"
	elsif num % 5 == 0
		"buzz"
	elsif num.to_i == 0
		"please enter a number"
	else
		num
	end	
end

# puts fizzbuzz(75)
# puts fizzbuzz(10)
# puts fizzbuzz(6)
# puts fizzbuzz(2)
# puts fizzbuzz("poop")