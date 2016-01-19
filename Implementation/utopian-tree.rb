#!/bin/ruby

t = gets.strip.to_i
for a0 in (0..t-1)
  n = gets.strip.to_i
  
  h = 1
  (1..n).each do |cycle|
    h *= 2 if cycle % 2 == 1
    h += 1 if cycle % 2 == 0
  end
  puts h
end