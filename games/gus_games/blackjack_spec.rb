require "./blackjack"

describe "card" do
    it "should give a number between 1 and 11" do
        expect(card).to be >=1
        expect(card).to be <=11
    end
end

describe "start" do
    it "should take three parameters" do
        expect(start(0, 1, 2)).to eq(nil)
    end
end

# describe "while_under_twentyone" do
#     it "card total should be less than 21" do
#         expect(while_under_twentyone(6)).to exit
#     end
# end

describe "hit_or_stay" do
    it "if user says hit, should deal new card" do
        Kernel.stub(:gets) {"hit\n"}
        expect(hit_or_stay(17)).to be >17
    end
end
#didn't work because the return of method hit_or_stay was exit, which is actually what
#it should return, but i don't know how to denote that...
#i DID learn about Kernel and .stub and :gets here, though.

describe "when_over_twentyone" do
    it "should" do
        
    end
end

describe "when_equals_twentyone" do
    it "should" do
        
    end
end

describe "game_over_under_twentyone" do
    it "should" do
        
    end
end