# 1. Write a method to shorten a string based on the allowed substitutes
substitutes = {
  'to' => '2',
  'two' => '2',
  'too' => '2',
  'for' => '4',
  'four' => '4',
  'be' => 'b',
  'you' => 'u',
  'at' => '@',
  'and' => '&'
}
def shorten_string(string, substitutes)
  split_string = string.split(" ")
  new_string = []
  split_string.each do |word|
    substitutes.each do |k, v|
      if word == k
        word = v
        new_string << word
      else
        new_string << nil
      end
    end
  end
  new_string.join(" ")
end
string = "Hey guys, can anyone teach me how to be cool? I really want to be the best at everything, you know what I mean? Tweeting is super fun you guys!!!!"
puts shorten_string(string, substitutes)

# 2. Write a method that iterates over the list of tweets, shortens them, and
# prints the results to the screen



# 3.  Modify your program to only do the substitutions if the tweet is longer
#  than 140 characters


# 4. Modify your program to truncate the tweet to 140 characters if it's still
#  too long after substitution