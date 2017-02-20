def prime? n
  (2..Math.sqrt(n)).none? do |f|
    n % f == 0
  end
end

beginning_time = Time.now

number = 600851475143

if prime? number
  puts number.to_s + ' is prime.'
end

factor = Math.sqrt(number).to_i + 1

if factor % 2 == 0
  factor -= 1
end

while factor > 1
  if prime? factor
    if number % factor == 0
      puts "#{factor} is largest prime factor of #{number}"
      break
    end
  end
  factor -= 2
end

end_time = Time.now

puts "Time elapsed #{(end_time - beginning_time)*1000} milliseconds"  
