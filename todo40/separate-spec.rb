require_relative 'separate-numbers-with-commas'

describe 'separate_with_comma' do
  it 'should return these values to' do
    expect separate_with_comma(1).should eq("1")
  end

  it 'should return these values to' do
    expect separate_with_comma(1000).should eq("1,000")
  end

  it 'should return these values to' do
    expect separate_with_comma(10000).should eq("10,000")
  end

  it 'should return these values to' do
    expect separate_with_comma(1000000000).should eq("1,000,000,000")
  end

end