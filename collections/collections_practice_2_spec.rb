require './test'

describe "#word_count" do
  it "should count the nubmer of times a word appears in a string" do
    expect(word_count("how many how times how")).to eq({"how" => 3, "many" => 1, "times" => 1})
  end
end
