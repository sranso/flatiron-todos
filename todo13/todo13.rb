require 'debugger'
class Array

  def version_sort(array_to_sort)
    array = []
    array_to_sort.each do |item|
      array << (/.*\-(\d*\.*\d*\w*\.*\d*\.*)ext/).match(item)[1]
    end
    sorted_array = array.sort # ["1", "1.10.2", "1.11", "1.3", "1.50", "1.8.7", "1.9.3", "10", "10.1", "100", "13", "2.0", "2.0.0", "2.0.1", "2.007", "2.01", "2.012b", "2.01a", "2.0a", "2.0b", "2.1", "25", "6"]

    # Arrange by digits before first decimal
    ordered_array = []
    101.times do |i|
      next if i == 0
      subarray = [] 
      sorted_array.each do |item|
        subarray << item if (/^#{i}\..*/).match(item)
      end
      ordered_array << subarray unless subarray.empty?
    end
  end

  def rule1(ordered_array)
    ordered_array.each do |array|
      array.each do |item|
        debugger
        ().match(item)
      end
    end
  end

end

filenames = [
  "foo-1.10.2.ext",
  "foo-1.11.ext",
  "foo-1.3.ext",
  "foo-1.50.ext",
  "foo-1.8.7.ext",
  "foo-1.9.3.ext",
  "foo-1.ext",
  "foo-10.1.ext",
  "foo-10.ext",
  "foo-100.ext",
  "foo-13.ext",
  "foo-2.0.0.ext",
  "foo-2.0.1.ext",
  "foo-2.0.ext",
  "foo-2.007.ext",
  "foo-2.01.ext",
  "foo-2.012b.ext",
  "foo-2.01a.ext",
  "foo-2.0a.ext",
  "foo-2.0b.ext",
  "foo-2.1.ext",
  "foo-25.ext",
  "foo-6.ext",
]

test = Array.new
test.version_sort(filenames)
test.rule1()
# ["1.", "1.10.2.", "1.11.", "1.3.", "1.50.", "1.8.7.", "1.9.3."]
# [1., 1.3, 1.8.7, 1.9.3, 1.10.2, 1.11, 1.50]

# a number followed by a dot followed by nothing
# a number followed by a dot and followed by a number and either followed by a dot and anything else or nothing
# a number followed by a dot followed by two numbers and either followed by a dot or nothing

# version_sorted_filenames = [
#   "foo-1.ext",
#   "foo-1.3.ext",
#   "foo-1.8.7.ext",
#   "foo-1.9.3.ext",
#   "foo-1.10.2.ext",
#   "foo-1.11.ext",
#   "foo-1.50.ext",
#   "foo-2.0.ext",
#   "foo-2.0a.ext",
#   "foo-2.0b.ext",
#   "foo-2.0.0.ext",
#   "foo-2.0.1.ext",
#   "foo-2.01.ext",
#   "foo-2.1.ext",
#   "foo-2.01a.ext",
#   "foo-2.007.ext",
#   "foo-2.012b.ext",
#   "foo-6.ext",
#   "foo-10.ext",
#   "foo-10.1.ext",
#   "foo-13.ext",
#   "foo-25.ext",
#   "foo-100.ext",
# ]
# assert_equal filenames.version_sort, version_sorted_filenames
# i want to build up a sorted array, as i go
# as soon as part of the list i feel like is sorted, i want to put it in some array, delete it from teh working set

