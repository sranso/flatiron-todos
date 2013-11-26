require "debugger"
# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value
def key_for_min_value(hash)
  lowest_val = 10**10000
  hash.each do |key1, value1|
    lowest_val = value1 unless value1 > lowest_val
  end
  hash.key(lowest_val)
end

# p key_for_min_value({:blake => 500, :ashley => 2, :adam => 1})