# Anagram Detector

# Write a program that, given a word and a list of possible anagrams, 
# selects the correct one(s).

# In other words, given: "listen" and %w(enlists google inlets banana) 
# the program should return "inlets".

# PS what is %w? 
# http://stackoverflow.com/questions/1274675/ruby-what-does-warray-mean

class Anagram

  def initialize(word)
    @word = word
  end

  def match(array)
    new_array = []
    array.collect do |item|
        if item.chars.sort == @word.chars.sort
            new_array << item
        end
    end
    new_array
  end

end

# newses = Anagram.new("listen")

# puts newses.match(%w(enlists word inlets banana))
