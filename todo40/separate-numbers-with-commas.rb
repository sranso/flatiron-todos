# Separate numbers with a comma each three digits.
require 'debugger'
def separate_with_comma(n)
  new_n = n.to_s
  if new_n.length > 3
    commas = new_n.length / 3
    commas.times do |int|
      # debugger
      int = (int + 1) * 4
      new_n.insert(-(int), ',')
    end
  end
  new_n
end