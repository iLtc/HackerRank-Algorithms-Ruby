#!/bin/ruby

t = gets.strip.to_i
for a0 in (0..t-1)
  n,c,m = gets.strip.split(' ')
  n = n.to_i
  c = c.to_i
  m = m.to_i
  
  count = n / c
  wrappers = count
  
  begin
    new_count = wrappers / m
    wrappers -= (m - 1) * new_count
    count += new_count
  end while wrappers >= m
  
  puts count
end