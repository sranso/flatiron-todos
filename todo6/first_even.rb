array=[30, 17, 20, 77, 102]

def first_even(items)
  items.each do |num|
  	if num % 2 == 0
  		return num
  		exit
  	end
  end
end

#if you want it sorted first...
def first_even_sorted(items)
  items.sort.each do |num|
    if num % 2 == 0
      return num
      exit
    end
  end
end

puts first_even_sorted(array)