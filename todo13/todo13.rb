require 'debugger'
class Array
  def version_sort(array_to_sort)
    holder_array = []
    array_to_sort.each do |item|
      holder_array << (/.*\-(\d*\.*\d*\w*\.*\d*\.*)ext/).match(item)
      # holder_array << (/.*\-(\d*\.*\d*\w*\.*\d*)\.ext/).match(item)
    end
    sort_first = []
    holder_array.each do |item|
      sort_first << item[1]
    end
    sort_second = sort_first.sort # ["1", "1.10.2", "1.11", "1.3", "1.50", "1.8.7", "1.9.3", "10", "10.1", "100", "13", "2.0", "2.0.0", "2.0.1", "2.007", "2.01", "2.012b", "2.01a", "2.0a", "2.0b", "2.1", "25", "6"]
    
    # Arrange by digits before first decimal
    all_ones = [] # 1.
    sort_second.each do |item|
      all_ones << item[0..-1] if (/^1\.\.*/).match(item[0..-1])
    end # ["1.10.2", "1.11", "1.3", "1.50", "1.8.7", "1.9.3"]

    all_ones_1 = []
    all_ones.each do |item|
      all_ones_1 << item[2..-1]
    end
    puts all_ones_1.sort

    all_twos = [] # 2.
    sort_second.each do |item|
      all_twos << item[0..-1] if (/^2\.\.*/).match(item[0..-1])
    end # ["2.0", "2.0.0", "2.0.1", "2.007", "2.01", "2.012b", "2.01a", "2.0a", "2.0b", "2.1"]
    
    all_six = [] # 6.
    sort_second.each do |item|
      all_six << item[0..-1] if (/^6\.\.*/).match(item[0..-1])
    end # ["6."]
    
    all_tens = [] # 10.
    sort_second.each do |item|
      all_tens << item[0..-1] if (/^10\.\.*/).match(item[0..-1])
    end
    
    all_hundreds = []
    sort_second.each do |item|
      all_hundreds << item[0..-1] if (/^100\.\.*/).match(item[0..-1])
    end
    
    all_thirteenss = []
    sort_second.each do |item|
      all_thirteenss << item[0..-1] if (/^13\.\.*/).match(item[0..-1])
    end

    all_twentyfives = []
    sort_second.each do |item|
      all_twentyfives << item[0..-1] if (/^25\.\.*/).match(item[0..-1])
    end
    
    # =====
    # holder_array
    # sorted_array_singledigits = []
    # sorted_array_manydigits = []
    # holder_array.each do |item_sort|
    #   # puts item_sort[1]
    #   sorted_array_singledigits << item_sort[1] if (/^\d\.|^\d$/).match(item_sort[1])
    #   sorted_array_manydigits << item_sort[1] if (/^\d{2}|^\d{3}\.*/).match(item_sort[1])
    # end
    # puts (sorted_array_singledigits.sort).concat(sorted_array_manydigits.sort)
    # =====
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

