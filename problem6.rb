# Project Euler - Problem 6:
# Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.
class SquareDifference

  def sum_of_squares n=100
    array =(1..n).to_a
    array.inject(0) { |result, element| result + element*element }
  end

  def square_of_sum n=100
    array =(1..n).to_a
    sum = array.inject(0) { |result, element| result + element }
    sum * sum
  end

end

beginning_time = Time.now

square_difference = SquareDifference.new

difference = square_difference.square_of_sum - square_difference.sum_of_squares

puts "Difference is #{difference}"

end_time = Time.now

puts "Time elapsed #{(end_time - beginning_time)*1000} milliseconds"

