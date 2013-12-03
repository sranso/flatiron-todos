require 'debugger'
class Array
  def version_sort(array_to_sort)
    #get data from files
    array = []
    array_to_sort.each do |item|
      array << (/.*\-(\d*\.*\d*\w*\.*\d*\.*)ext/).match(item)[1]
    end

    #split items into arrays of arrays
    array_of_arrays = []
    array.each do |item|
      array_of_arrays << item.split(".")
    end

    #make all arrays the same size
    array_of_arrays.select do |array|
      while array.size < 3
        array << ""
      end
    end

    sorted_array = array_of_arrays.sort do |a,b|
#[["1", "", "", ""], ["1", "10", "2", ""], ["1", "11", "", ""], ["1", "3", "", ""], ["1", "50", "", ""], ["1", "8", "7", ""], ["1", "9", "3", ""], ["10", "", "", ""], ["10", "1", "", ""], ["100", "", "", ""], ["13", "", "", ""], ["2", "0", "", ""], ["2", "0", "0", ""], ["2", "0", "1", ""], ["2", "007", "", ""], ["2", "01", "", ""], ["2", "012b", "", ""], ["2", "01a", "", ""], ["2", "0a", "", ""], ["2", "0b", "", ""], ["2", "1", "", ""], ["25", "", "", ""], ["6", "", "", ""]]
      if (a[0] <=> b[0]) == 0
        if (a[1] <=> b[1]) == 0
          a[2] <=> b[2]
        else
          a[0] <=> b[0]
        end
      else
        a[1] <=> b[1]
      end
    end
    p sorted_array
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


