# Reimplement your own version of Ruby Array's transpose method
require 'debugger'
class Array
  def my_transpose
    new_array = []
    self[0].each do |sub_array|
      new_array << ([] << sub_array)
    end
    self[1..-1].each do |sub_array|
      
    end
    new_array
  end
end

p [[1, 2, 3], [:a, :b, :c]].my_transpose #=> [[1, :a], [2, :b], [3, :c]]
# [[1,2], [3,4], [5,6]].transpose #=> [[1, 3, 5], [2, 4, 6]]
# [].transpose #=> []