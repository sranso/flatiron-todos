class Array
  def version_sort(array_to_sort)
    holder_array = []
    array_to_sort.each do |item|
      holder_array << (/.*\-(\d*\.*\d*\w*\.*\d*)\.ext/).match(item)
    end
    holder_array
    sorted_array_singledigits = []
    sorted_array_manydigits = []
    holder_array.each do |item_sort|
      # puts item_sort[1]
      sorted_array_singledigits << item_sort[1] if (/^\d\.|^\d$/).match(item_sort[1])
      sorted_array_manydigits << item_sort[1] if (/^\d{2}|^\d{3}\.*/).match(item_sort[1])
    end
    puts (sorted_array_singledigits.sort).concat(sorted_array_manydigits.sort)
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

