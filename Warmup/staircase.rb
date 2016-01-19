#!/bin/ruby

n = gets.strip.to_i

(1..n).each do |i|
  (1..(n-i)).each {print ' '}
  ((n-i+1)..(n)).each {print '#'}
  puts
end