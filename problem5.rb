# Project Euler - Problem 5:
# Find the smallest positive number that is evenly divisible by all of the numbers from 1 to 20
class SmallestDivisibleOneToTwenty

  def has_all_divisors

    divisors       = [ 11, 13, 14, 16, 17, 18, 19, 20 ]
    divisible      = false
    number         = 20 * 19 * 17 * 13 * 11 * 7 * 3

    while true # we will stop since 20 * 19 * 18 ... * 4 * 3 * 2 * 1 is divisible by all number from 1 to 20
      divisors.each do |d|
        if number % d == 0        
          divisible = true
        else
          divisible = false
          break
        end
      end
      if divisible
        return number
      else
        number += 20
      end
    end

    return 0
  end
      
end

beginning_time = Time.now

smallest = SmallestDivisibleOneToTwenty.new

puts "Smallest number is #{smallest.has_all_divisors}"

end_time = Time.now

puts "Time elapsed #{(end_time - beginning_time)*1000} milliseconds"

