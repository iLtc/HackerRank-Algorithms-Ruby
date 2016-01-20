#!/bin/ruby

n = gets.strip.to_i
s = gets.strip
k = gets.strip.to_i

s.split('').each do |char|
  case
    when char.ord >= 65 && char.ord <= 90
      tmp = char.ord + k
      while tmp > 90
        tmp -= 26
      end
      print tmp.chr
    
    when char.ord >= 97 && char.ord <= 122
      tmp = char.ord + k
      while tmp > 122
        tmp -= 26
      end
      print tmp.chr
    
    else
      print char
  end
end