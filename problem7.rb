# Project Euler - Problem 7:
# Determine the 10001st prime number

require 'prime'

class FirstPrimes

  def calculate_first_primes_upto n

    primes = Prime.first n
    puts "The 10001st prime number is #{ primes.last}"
  end

end

beginning_time = Time.now

first_primes = FirstPrimes.new

first_primes.calculate_first_primes_upto 10001

end_time = Time.now

puts "Time elapsed #{(end_time - beginning_time)*1000} milliseconds"

