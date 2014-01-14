# Reimplement your own version of Ruby Array's transpose method
require 'debugger'
class Array
  def my_transpose
    new_array = []
    # make initial array, [[1],[2],[3]]
    self[0].each do |sub_array|
      new_array << ([] << sub_array)
    end
    self[1..-1].each do |sub_array| # self = [[1, 2, 3], [:a, :b, :c]], sub_array = [:a, :b, :c]
      sub_array.each do |sub_array_item|
        # sub_array_item = :a
        new_array.each do |new_sub_array| # new_array = [[1], [2], [3]], new_sub_array = [1]
          new_sub_array << sub_array_item if new_array.index(new_sub_array) == sub_array.index(sub_array_item)
        end
      end
    end
    new_array
  end
end