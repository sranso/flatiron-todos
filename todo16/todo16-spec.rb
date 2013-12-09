require './todo16'
require 'rspec'

RSpec.configure do |config|
  # Use color in STDOUT
  config.color_enabled = true

  # Use color not only in STDOUT but also in pagers and files
  config.tty = true

  # Use the specified formatter
  config.formatter = :progress # :progress, :html, :textmate
end

describe '#count' do

  it 'should return a hash that counts number of times each element 
  appears in the array' do
    count(['cat', 'dog', 'fish', 'fish']).should eq({ 'cat' => 1, 'dog' => 1, 'fish' => 2 })
  end

end