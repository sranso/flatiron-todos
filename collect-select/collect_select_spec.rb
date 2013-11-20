# Implement your own versions of collect and select

require './collect_select_solution'

describe Array, "#my_collect" do
	it "should return an altered array" do
		expect([1,2,3].my_collect {|element| element*2}).to eq([2, 4, 6])
	end
end

describe Array, "#my_select" do
	it "should return elements of array that are true" do
		expect([1,2,3].my_select{|num| num.even?}).to eq([2])
	end
end