# Let's make an object that behaves like a hash today!

# I'd like to be able to find keys in the hash regardless of whether they are strings or symbols.

# For example

# obj = {:blake => "the best"}
# obj["blake"] #=> "the best"

# I'd like to be able to set values in our fake hash.
# I'd like to be able to find all values that have keys beginning with the letter a.
# I'd like to be able to get all the keys in the hash in a descending alphabetized array.
require 'debugger'
class FakeHashWrapper

  def initialize(*hash)
    @hash = hash
  end

  def [](key)
    @hash.each do |hash_item|
      hash_item[key.to_sym]
    end
  end

  def [](key)=(value)
    @hash.each do |hash_item|
      hash_item[key.to_sym] = value
    end
  end


end

a = FakeHashWrapper.new({:sarah => "lady", :kate => "another lady"})
p a["sarah"]