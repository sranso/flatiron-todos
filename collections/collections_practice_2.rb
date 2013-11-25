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

# 6. Change the third letter of all strings in an array.  Your solution should work for arrays that have mixed
# types of objects inside it.

# 7. Count the number of times each word appears in a string and store that data in a hash that has the word as
# the key and the count as the value.

#   string = "the flatiron school is better than general assembly"

# 8. Count the number of times each hash appears in the array, remove any duplicates and add a :count key to each
# hash with the number of times it appears.
#   [{:name => "blake"}, {:name => "blake"}, {:name => "ashley"}]
#     becomes
#   [{:name => "blake", :count => 2}, {:name => "ashley", :count => 1}]

# 9. Take two arrays of hashes and merge the first names and last names into a new array of hashes where each hash
# has all information about itself.

[
       {
        :first_name => "blake"
    },
       {
        :first_name => "ashley"
    }
]
# and
[
       {
         "blake" => {
            :awesomeness => 10,
                 :height => "74",
              :last_name => "johnson"
        },
        "ashley" => {
            :awesomeness => 9,
                 :height => 60,
              :last_name => "dubs"
        }
    }
]

# becomes
[
       {
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
# to a structure that organizes the schools by location.