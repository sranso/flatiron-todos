# Separate numbers with a comma each three digits.

def separate_with_comma(n)
  new_n = n.to_s
  if new_n.length > 3
    new_n.insert(-4, ',')
  end
  new_n
end