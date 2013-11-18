require './fizzbuzz.rb'

describe "#fizzbuzz" do |variable|
	it "should return fizzbuzz when number mod 15 = 0" do
		expect(fizzbuzz(75)).to eq("fizzbuzz")
	end
	it "should return buzz when number mod 5 = 0" do
		expect(fizzbuzz(10)).to eq("buzz")
	end
	it "should return fizz when number mod 3 = 0" do
		expect(fizzbuzz(6)).to eq("fizz")
	end
	it "should return number when number mod 5 != 0 and number mod 3 != 0" do
		expect(fizzbuzz(2)).to eq(2)		
	end
	it "should return request to enter a number when a non number is entered" do
		expect(fizzbuzz("poop")).to eq("please enter a number")
	end
end