def remove_duplicates(array)
  new_array = []
  array.each do |item|
    item[:count] = 1
    if new_array.include? item
      new_array.each do |arrayitem|
        arrayitem
      end
      item[:count] +=1
    else
      new_array << item
    end
  end
  new_array.compact
end
array1 = [{:name => "blake"}, {:name => "blake"}, {:name => "ashley"}]
p remove_duplicates(array1)