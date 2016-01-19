#!/bin/ruby

n = gets.strip.to_i
arr = gets.strip
arr = arr.split(' ').map(&:to_i)

positive = negative = zero = 0.0

arr.each do |num|
  case 
    when num > 0
      positive += 1
    
    when num == 0
      zero += 1
    
    else
      negative += 1
  end
end

puts positive / n
puts negative / n
puts zero / n