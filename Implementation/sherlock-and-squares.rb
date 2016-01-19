#!/bin/ruby

t = gets.strip.to_i
for i in (0..t-1)
  a, b = gets.strip.split(' ')
  a = a.to_i
  b = b.to_i
  
  if (a ** (1.0/2)).to_i < (a ** (1.0/2))
    num = (a ** (1.0/2)).to_i + 1
  else
    num = (a ** (1.0/2)).to_i
  end
  
  count = 0
  
  begin
    count += 1 if num ** 2 <= b
    num += 1
  end while num ** 2 <= b
  
  puts count
end