# def roll_dice
#   Array.new(5) { rand(1..6) }
# end
 
# def win? roll
#   roll.uniq.length == 1 ? true : false
# end

require './yahtzee'

describe "#roll_dice" do
	it "should create an array five slots, and each slot should be a number b/t 1-6" do
		expect(roll_dice.length).to eq(5)
	end
	# it "each slot should be a number b/t 1-6" do
	# 	expect(roll_dice[0]).to be >= 1
	# 	expect(roll_dice[0]).to be <=6
	# end
	it "sum of the slots should be b/t 5 and 30" do
		expect(roll_dice.inject{|sum,x| sum + x}).to be >= 5
		expect(roll_dice.inject{|sum,x| sum + x}).to be <=30
	end
end

describe "#win?" do
	it "if length of roll == 1, return true" do
		expect(win?([6,6,6,6,6])).to eq(true)
	end
	it "if length of roll != 1, return false" do
		expect(win?([1,2,3,3,3])).to eq(false)
	end
end