class Woodchuck
	attr_accessor :chuck_count
	@@woodchuck_count = 0 #class variable. this value could not change!!
	WOODCHUCKS = [] #constant. it will always be an array, but the value of the array can change! you can add/remove

	def initialize #instance method
		@chuck_count = 0 #instance var
		@@woodchuck_count += 1
		WOODCHUCKS << self
	end

	def chuck_wood #instance
		@chuck_count +=1
	end

	def what_is_self #instance
		self
	end

	def self.what_is_self #class method
		self
	end

	def self.woodchuck_count
		@@woodchuck_count
	end
	
end

# p bunnies.chuck_wood
# p bunnies.what_is_self.class
# p Woodchuck.what_is_self.class
# p Woodchuck.woodchuck_count
# Woodchuck::WOODCHUCKS.each do |woodchuck|
# 	woodchuck.chuck_wood
# end

rand(10).times do |i|
	Woodchuck.new
end

Woodchuck::WOODCHUCKS.each do |woodchuck|
	rand(10).times do |i|
		woodchuck.chuck_wood
	end
end

p Woodchuck::WOODCHUCKS
p Woodchuck.woodchuck_count



