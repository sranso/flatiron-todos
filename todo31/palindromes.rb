# A palindrome is a string that is written the same forward as it is in reverse. Write a method to return the longest palindrome in a given string
require "debugger"

class String

  def longest_palindrome
    stage = []
    pali = []
    counter = 0
    until counter == self.length
      temp = []
      self.split(//)[counter..-1].each do |char|
        temp << char
        fusion = temp.join("")
        stage << fusion
        stage.each do |word|
          pali << word if word == word.reverse && word.length > 1
        end
      end
      counter += 1
    end
    winner(pali)
  end

  def winner(pali)
    winner = "a"
    pali.each do |contestant|
      winner = contestant if contestant.length > winner.length
    end
    winner
  end

end
p "afbbbfjdjklgdfdhfdkjfffhhfffjkdfhdhkyejejfjkd".longest_palindrome #=> "dhfdkjfffhhfffjkdfhd"