# Anagram Detector

# Write a program that, given a word and a list of possible anagrams, 
# selects the correct one(s).

# In other words, given: "listen" and %w(enlists google inlets banana) 
# the program should return "inlets".

# PS what is %w? 
# http://stackoverflow.com/questions/1274675/ruby-what-does-warray-mean

class Anagram
  
  attr_accessor :word, :string

  def initialize(word)
    @word = word
  end

  def match(array)
    :word.to_s.include? array.to_s
  end

end

newses = Anagram.new("enlists")

puts newses.match(%w(enlists google inlets banana))