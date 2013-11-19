def apple_picker array
	array.each do |fruit|
		if fruit == "apple"
			puts "apple"
		end
	end
end

apple_picker(["apple", "orange", "apple"])