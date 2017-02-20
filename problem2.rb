# Project Euler - Problem 2:
# Find the sum of the even-valued terms in the Fibonacci sequence whose values do not exceed four million.
class Fibonacci

  def fibon(n)
    if n == 0
      return 0
    end
    if n == 1
      return 1
    end
    prev_2 = 0
    prev_1 = 1
    for i in 2..n
      value  = prev_1 + prev_2
      prev_2 = prev_1
      prev_1 = value
    end
    return value
  end
end

instance = Fibonacci.new

beginning_time = Time.now

i = 0
sum = 0

while true
  fn = instance.fibon(i)
  break if fn > 4000000
  if fn  % 2 == 0
    sum += fn
    puts fn
  end
  i += 1
end

end_time = Time.now

puts "Sum of even Fibonacci number to 4 million:"
puts sum
puts "Time elapsed #{(end_time - beginning_time)*1000} milliseconds"
