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
  attr_reader :hash

  def initialize(hash)
    @hash = hash
  end

  def [](key) # find a value
    @hash[key.to_sym]
  end

  def []=(key, value) # add or change or set a key-value pair
    @hash[key] = value
  end

  def find_all_a # find all values that have keys beginning with the letter a
    values = []
    # keys = @hash.keys
    @hash.keys.each do |key|
      if key.to_s[0] == "a"
        values << @hash[key]
      end
    end
    values
  end
end

a = FakeHashWrapper.new({:sarah => "lady", :kate => "another lady", :a => "test"})
# p a["sarah"]
p a.find_all_a

