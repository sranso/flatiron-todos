# Implement your own versions of collect and select
# CHALLENGE:
# Implement these methods as instance methods on the array class.

class Array
	def my_collect
		i = 0
		new_array = []
		while i < self.length
			new_array << (yield self[i])
			i += 1
		end
		new_array
	end


	def my_select
		i = 0
		new_array = []
		while i < self.length
			if (yield self[i]) == true
				new_array << (self[i])
				i += 1
			else
				i +=1
			end
		end
		new_array
	end
end

array_new = [1, 2, 3]
# array_new.my_collect { |element| element*2 }
puts array_new.my_select { |num| num.even? }
