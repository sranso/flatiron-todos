# Instructions:
# Count elements in an Array by returning a hash with keys of the elements and values of the amount of times they occur.

# test = ['cat', 'dog', 'fish', 'fish']

# def count(array)
#   ___
# end

# count(test) #=> { 'cat' => 1, 'dog' => 1, 'fish' => 2 })

test = ['cat', 'dog', 'fish', 'fish']
test2 = 34

def count(array)
  unless array.respond_to? :count
    raise ArgumentError,
      "cannt count items in a #{ array.class }"
  end
  hash = {}
  array.each do |item|
    hash[item] = array.count(item)
  end
  hash
end

# p count(test2)