# 8. Count the number of times each hash appears in the array, remove any duplicates and add a
# :count key to each hash with the number of times it appears.
array1 = [{:name => "blake"}, {:name => "blake"}, {:name => "ashley"}]
#     becomes
#   [{:name => "blake", :count => 2}, {:name => "ashley", :count => 1}]
require 'debugger'

def remove_duplicates(array)
  new_array = []
  array.each do |item|
    item[:count] = 1
    if new_array.include? item
      item[:count] += 1
      new_array << item
    else
      new_array << item
    end
  end
  new_array.map do |item2|
    item2.each do |k, v|
      
    end
  end
  
end


p remove_duplicates(array1)


