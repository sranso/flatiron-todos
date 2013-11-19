array=[30, 17, 77, 102]

def first_even(items)
  items.each do |num|
  	if num % 2 == 0
  		return num
  		exit
  	end
  end
end

puts first_even(array)