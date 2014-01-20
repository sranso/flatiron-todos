# Separate numbers with a comma each three digits.
require 'debugger'
def separate_with_comma(n)
  new_n = n.to_s
  str_length = new_n.length
  if str_length > 3
    commas = str_length / 3
    commas.times do |int|
      int = (int + 1) * 4
      new_n.insert(-(int), ',')
    end
  end
  new_n
end