#!/bin/ruby

t = gets.strip.to_i
for a0 in (0..t-1)
  n = gets.strip.to_i
  
  five = n
  three = 0
  
  if five % 3 != 0
    begin
      five -= 1
      three += 1
    end until (five % 3 == 0 && three % 5 == 0) || five < 0
  end
    
  if five >= 0
    (1..five).each {print "5"}
    (1..three).each {print "3"}
    puts
  else
    puts -1
  end
end