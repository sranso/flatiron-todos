# Create a test for a method `make_list` that takes an array and returns that same array but
# as an array of strings in a numbered list.

# Run this test by typing `rspec list_maker_spec.rb` in your terminal.

# Then, create a method on array called `make_list` that iterates over the array it is
# called on and appends a number, a period, and a space to each element.

# e.g make_list(["ich", "ni", "san"]) #=> ["1. ich", "2. ni", "3. san"]

def make_list(array)
	array.collect do |x|
		"#{array.find_index(x)+1}. #{x.to_s}"
	end
end


# puts make_list(["sarah", "peeps", "forever"])
# puts make_list([1, 3, 5])


#=====FIRST ATTEMPT..====
# def make_list array
# 	num = 1
# 	array.collect do |x|
# 		num +=1
# 		"#{num}. #{x}"
# 	end
# 	array
# end

#=====CLASS NOTES====
# def make_list array
# 	array.map.with_index { |item, index| (index+1).to_s.concat(". ").concat(item)}
# end
# puts make_list([1, 2, 3])

