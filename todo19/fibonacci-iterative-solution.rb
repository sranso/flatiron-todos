
def fibo_finder(n)
  if n == 0
    return 0
  elsif n == 1
    return 1
  else
    sequence = [0,1]
    (n - 1).times do
      sequence << sequence[-1] + sequence[-2]
    end
  end
  return sequence.last
end

# another solution
# def fibo_finder(n)
#   if n == 0
#     0
#   else
#     fib_nums = [0, 1]
#     2.upto(n) do |num|
#       fib_num = fib_nums[-1] + fib_nums[-2]
#       fib_nums << fib_num
#     end
#     fib_nums[-1]
#   end
# end