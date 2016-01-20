#!/bin/ruby

n = gets.strip.to_i
arr = gets.strip
arr = arr.split(' ').map(&:to_i)

def min_stick arr
  min = arr[0]
  
  arr.each {|stick| min = stick if min > stick}
  
  return min
end

begin
  min = min_stick(arr)
  total = 0
  
  arr.each_with_index do |stick, i|
    arr[i] -= min
    total += 1
  end
  
  puts total
  arr.delete(0)
end while arr.length > 0