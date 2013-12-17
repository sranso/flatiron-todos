# instructions: implement Array.uniq
require "debugger"
class Array

  def uniq
    uniq_array = []
    self.each do |a|
      uniq_array << a unless uniq_array.include? a
    end
    uniq_array
  end

end

p [1,2,2,3].uniq