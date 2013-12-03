require 'debugger'
class Array

  # def initialize(orig_array)
    
  # end

  def version_sort
    array_to_sort = []
    new_array = []

    #get data from files
    self.each do |item|
      array_to_sort << (/foo-(\d*)\.{0,1}(\d*)\.{0,1}(\d*)([a-z]{0,1})\.ext/).match(item)
    end

    #sort array_to_sort
    sorted = array_to_sort.sort do |array1, array2|
      if (array1[1].to_int <=> array2[1].to_int) == 0
        if (array1[2].to_int <=> array2[2].to_int) == 0
          if (array1[3].to_int <=> array2[3].to_int) == 0
            (array1[4] <=> array2[4])
          else
            (array1[3].to_i <=> array2[3].to_i)
          end
        else
          (array1[2].to_i <=> array2[2].to_i)
        end
      else
        (array1[1].to_i <=> array2[1].to_i)
      end
    end

    #add sorted file names to new array
    sorted.each do |array|
      new_array << array[0]
    end

    #return new array
    new_array
  end
end

class String
  def to_int
    self.to_i unless self == ""
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
