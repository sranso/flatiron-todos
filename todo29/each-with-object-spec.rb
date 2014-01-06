require './each with object'
require 'rspec'

describe 'even_sum' do
  it 'should return only even-numbered strings' do
    expect even_sum(["cat", "dog"]).should eq([])
  end

  it 'should reverse the string' do
    expect even_sum(["bird"]).should eq(["drib"])
  end
end