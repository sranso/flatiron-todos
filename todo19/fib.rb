# prereqs: arrays, methods, conditional logic
# create a method that returns the nth number of the fibonacci sequence
# fib sequence = 0,1,1,2,3,5,8,13 etc, assume the 1st element is 0
# (the first number), the 2nd element is 1, the third element is 1
require 'debugger'
def fibo_finder(n)
  array = Array.new(n + 1){ |num| num = 0 }
  array[1] = 1
  array[2] = 1
  (n + 1).times do |num|
    next if num == 0 || num == 1 || num == 2
    array[num] = array[num-1] + array[num-2]
  end
  puts array 
  array[n]
end