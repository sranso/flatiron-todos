require './magiceightball'

describe "#ask_user" do
    it "if user responds Y or Yes, should receive a message" do
        expect(ask_user(Y)).to eq()
    end

end