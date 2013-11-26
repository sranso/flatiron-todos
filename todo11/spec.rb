require_relative "./key for min value"

describe "smallest hash value" do
  it "should return the smallest value from this hash" do
    expect(key_for_min_value({:sarah => 3, :kate => 1, :ariel => 55})).to eq(:kate)
  end

  it "should return the smallest value from this hash, take 2" do
    expect(key_for_min_value({:gus => -5, :chris => -500, :nisha => 0})).to eq(:chris)
  end

  it "should return nil for an empty hash" do
    expect(key_for_min_value({})).to eq(nil)
  end

end
