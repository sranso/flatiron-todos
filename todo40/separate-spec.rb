require_relative 'separate-numbers-with-commas'

describe 'separate_with_comma' do
  it 'should return these values to' do
    expect separate_with_comma(1).to eq("1")
  end

  it 'should return these values to' do
    expect separate_with_comma(1000).to eq("1,000")
  end

  it 'should return these values to' do
    expect separate_with_comma(10000).to eq("10,000")
  end

end