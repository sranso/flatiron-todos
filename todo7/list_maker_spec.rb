# Create a test for a method `make_list` that takes an array and returns that same array but
# as an array of strings in a numbered list.

# Run this test by typing `rspec list_maker_spec.rb` in your terminal.

# Then, create a method on array called `make_list` that iterates over the array it is
# called on and appends a number, a period, and a space to each element.

# e.g make_list(["ich", "ni", "san"]) #=> ["1. ich", "2. ni", "3. san"]

require './list_maker_solution'

describe "#make_list" do
	it "given array of str, should return an array of strings in a numbered list" do
		expect(make_list(["ich", "ni", "san"])).to eq(["1. ich", "2. ni", "3. san"])
	end

	it "given array of ints, should return an array of strings in a numbered list" do
		expect(make_list([1, 3, 5])).to eq(["1. 1", "2. 3", "3. 5"])
	end

	it "should take an array and return an array" do #bad thing to do?
		expect(make_list([1, 3, 5])).to be_a(Array)
	end
end