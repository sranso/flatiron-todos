# Collections Practice

# Finish the first collections assignment if you haven't already.

# Wrap each of these problems in a method, you can also write a test for each method if you'd like to 
# practice testing.  All solutions should be generic and work for any "case" but sometimes a sample case is given.

# These problems should get progressively more difficult.

# 1. Return true if every element of the tools array starts with an "r" and false otherwise.
tools = ["ruby", "rspec", "rails"]
def start_r(array)
  array.each do |item|
    if item[0] == "r"
      true
    else
      false
    end
  end
end

# 2. Create a new array from the captain_planet array with all the elements that contain the letter "a".  
captain_planet = ["earth", "fire", "wind", "water", "heart", "animal"]
def new_array(array)
  array.collect do |item|
    if item[0] == "a"
      item
    end
  end
end
p new_array(captain_planet).compact

# 3. Identify the first element in the stuff array that begins with the letters "wa".
stuff = ["candy", :pepper, "wall", :ball, "wacky"]
def first_starts_wa(array)
  array.each do |item|
    if item[0..1] == "wa"
      return item
      exit
    end
  end
end
p first_starts_wa(stuff)

# 4. Identify all the elements in the stuff array that begins with the letters "wa".
stuff = ["candy", :pepper, "wall", :ball, "wacky"]
def starts_wa(array)
  array.collect do |item|
    if item[0..1] == "wa"
      item
    end
  end
end
p starts_wa(stuff).compact

# 5. Remove anything that's not a string from an array.
# Hint: Use the method "class"  "blake".class
array = ["sarah", 1, "string time", 3, 5]
def remove_nonstring(array)
  array.collect do |item|
    if item.class == String
      item
    end
  end
end

# 6. Change the third letter of all strings in an array.  Your solution should work for arrays 
# that have mixed types of objects inside it.
array = ["super duper", 2, "flower time", 55, :symbol, "purple", "po"]
def change_third_letter(array)
  newarray = array.collect do |item|
    if item.class == String
      item[2] = "$" unless item[2].nil?
    end
    item
  end
  newarray
end
p change_third_letter(array)

# 7. Count the number of times each word appears in a string and store that data in a hash 
# that has the word as the key and the count as the value.
def word_count(string)
  newstring = string.split
  newhash = {}
  newstring.each do |word|
    if newhash[word]
      newhash[word] += 1
    else
      newhash[word] = 1
    end
  end
  newhash
end
string = "the flatiron school is better than general assembly"

# 8. Count the number of times each hash appears in the array, remove any duplicates and add a
# :count key to each hash with the number of times it appears.
array1 = [{:name => "blake"}, {:name => "blake"}, {:name => "ashley"}]
#     becomes
#   [{:name => "blake", :count => 2}, {:name => "ashley", :count => 1}]
def remove_duplicates(array)
  new_array = []
  array.each do |item|
    item[:count] = 1
    if new_array.include? item
      new_array.map do |item2|
        if item2 == item
          item2[:count] +=1
        end
      end
    else
      new_array << item
    end
  end
  new_array
end
p remove_duplicates(array1)

# 9. Take two arrays of hashes and merge the first names and last names into a new array of hashes where each hash
# has all information about itself.

array1 = [{:first_name => "blake"},
  {:first_name => "ashley"}]
# and
array2 = [
  {
    "blake" => {:awesomeness => 10, :height => "74", :last_name => "johnson"},
  "ashley" => {:awesomeness => 9,:height => 60, :last_name => "dubs"}
  }
]
# becomes one array of two hashes
[ {
    :first_name => "blake",
    :awesomeness => 10,
    :height => "74",
    :last_name => "johnson"
  },
  {
    :first_name => "ashley",
    :awesomeness => 9,
    :height => 60,
    :last_name => "dubs"
  }
]

def onearray(array1, array2)
  array1.each do |first_name_hash| #{:first_name => "blake"}
    array2.each do |hash2| #{}
      hash2.each do |name, qualities|
        first_name_hash.merge!(qualities) if first_name_hash.values.include?(name)
      end
    end
  end
end
# p onearray(array1, array2)

# 10. Return all hashes that have a value of "cool" for the :temperature key.
[
        {
               :name => "ashley",
        :temperature => "sort of cool"
    },
        {
               :name => "blake",
        :temperature => "cool"
    }
]

def cool(array)
  array.each do |hash|
    hash.each do |key, val|
      hash if val == "cool"
    end
    hash
  end
end

# 11. Convert the nested data structure from it's current structure
{
  "flatiron school bk" => {
    :location => "NYC",
    :price => "free"
  },
  "dev boot camp" => {
    :location => "SF"
    :price => "a million dollars"
  },
  "dev boot camp chicago" => {
    :location => "Chicago",
    :price => "half a million dollars"
  },
  "general assembly" => {
    :location => "NYC",
    :price => "too much"
  },
  "some school in SF" => {
    :location => "SF",
    :price => "your soul"
  }
}

{
  "NYC" => {
    "flatiron school bk" => {
      :price => "free"
    }
    "general assembly" => {
      :price => "too much"
    }
  },
  "SF" => {
    "some school in SF" => {
      :price => "your soul"
    }
  }
}
# to a structure that organizes the schools by location.

newhash = {}
def 
  
end