# Project Euler - Problem 7:
# Determine the 10001st prime number

require 'prime'

beginning_time = Time.now

primes = Prime.first 10001

puts "The 10001st prime number is #{ primes.last}"

end_time = Time.now

puts "Time elapsed #{(end_time - beginning_time)*1000} milliseconds"

