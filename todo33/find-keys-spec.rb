require_relative 'find-keys.rb'

describe 'keys_of' do
  it 'should return these values ex 1' do
    expect ({a: 1, b: 2, c: 3}).keys_of(1).should eq([:a])
  end

  it 'should return these values ex 2' do
    expect ({a: 1, b: 2, c: 3, d: 1}).keys_of(1).should eq([:a, :d])
  end

  it 'should return these values ex 3' do
    expect ({a: 1, b: 2, c: 3, d: 1}).keys_of(1, 2).should eq([:a, :d, :b])
  end

end