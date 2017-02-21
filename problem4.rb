# Project Euler - Problem 4:
# Find the largest palindrom made from the product of two 3-digit numbers
class Palindrome

  def is_palindrome? n
    return n.to_s == n.to_s.reverse
  end

  def find_largest_palindrome highest_n

    i = highest_n

    largest_palindrome = 0

    while i.to_s.size >= highest_n.to_s.size
      j = highest_n - (highest_n - i) # higher j's already calculated
      while j.to_s.size >= highest_n.to_s.size
        product = i * j
        if product < largest_palindrome
          break
        end
        if is_palindrome? product
          if product > largest_palindrome
            largest_palindrome = product
            factor1 = i
            factor2 = j
            break
          end
        end
        j -= 1
      end
      i -= 1
    end
    return largest_palindrome, factor1, factor2
  end
  
end

HIGHEST_N = 999

palindrome = Palindrome.new

beginning_time = Time.now

largest_palindrome = palindrome.find_largest_palindrome HIGHEST_N

puts "Largest palindrome: #{largest_palindrome[0]}"
puts "Factors: #{largest_palindrome[1]}, #{largest_palindrome[2]}"

end_time = Time.now

puts "Time elapsed #{(end_time - beginning_time)*1000} milliseconds"
