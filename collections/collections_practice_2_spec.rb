require './test'

#7
describe "#word_count" do
  it "7 should count the nubmer of times a word appears in a string" do
    expect(word_count("how many how times how")).to eq({"how" => 3, "many" => 1, "times" => 1})
  end
end

#8
describe "#" do
  it "should count the number of times each hash appears in the array" do
    expect(remove_duplicates()).to eq()
  end
  it "should remove any duplicates" do
    expect(remove_duplicates([{:name => "blake"}, {:name => "blake"}, {:name => "ashley"}])).to eq([{:name => "blake"}, {:name => "ashley"}])
  end
  it "should compute this hash to equal this" do
    expect(remove_duplicates()).to eq()
  end
end