# Instructions:
# Count elements in an Array by returning a hash with keys of the elements and values of the amount of times they occur.

# test = ['cat', 'dog', 'fish', 'fish']

# def count(array)
#   ___
# end

# count(test) #=> { 'cat' => 1, 'dog' => 1, 'fish' => 2 })

test = ['cat', 'dog', 'fish', 'fish']

def count(array)
  hash = {}
  array.each do |item|
    if hash[item]
      hash[item] = hash[item] + 1
    else
      hash[item] = 1
    end 
  end
  hash
end

# p count(test)