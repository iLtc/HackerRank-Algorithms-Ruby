#!/bin/ruby

t = gets.strip.to_i
for a0 in (0..t-1)
  n,k = gets.strip.split(' ')
  n = n.to_i
  k = k.to_i
  a = gets.strip
  a = a.split(' ').map(&:to_i)
  
  count = 0
  a.each do |time|
    count += 1 if time <= 0
  end
  
  if count < k
    puts 'YES'
  else
    puts 'NO'
  end
end