require './deli'

sarah = Deli.new

describe Deli do
   describe "#take_a_number" do
    it "should" do
       expect(sarah.take_a_number(["sarah", "keith", "kate"])).to eq(["1. sarah", "2. keith", "3. kate"])
    end
   end

   describe "#now_serving" do
    it "should return a new array without the first person in line, and updating everyone else's number" do
        expect(sarah.now_serving(["1. sarah", "2. keith", "3. kate"])).to eq(["1. keith", "2. kate"])
    end
   end

end