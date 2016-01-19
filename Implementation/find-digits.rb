#!/bin/ruby

t = gets.strip.to_i
for a0 in (0..t-1)
  number_s = gets.strip
  number_i = number_s.to_i
  
  count = 0
  number_s.split("").each do |num|
    num = num.to_i
    
    count += 1if num != 0 && number_i % num == 0
  end
  puts count
end