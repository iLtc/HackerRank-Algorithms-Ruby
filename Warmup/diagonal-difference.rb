#!/bin/ruby

n = gets.strip.to_i
a = Array.new(n)
for a_i in (0..n-1)
    a_t = gets.strip
    a[a_i] = a_t.split(' ').map(&:to_i)
end

first = second = 0

(0..n-1).each do |i|
  first += a[i][i]
  second += a[i][n-i-1]
end

puts (first - second).abs