class Multiplesof3and5

  def multiplesof3and5
    sum = 0
    1.upto(999) do |i|
      if ( i % 3 == 0) and ( i % 5 == 0)
        sum += i
      elsif ( i % 3 == 0) and (i % 5 != 0)
        sum += i
      elsif ( i % 5 == 0) and ( i % 3 != 0)
        sum += i
      end
    end
    return sum
  end

end

instance = Multiplesof3and5.new

beginning_time = Time.now

puts instance.multiplesof3and5

end_time = Time.now

puts "Time elapsed #{(end_time - beginning_time)*1000} milliseconds"

