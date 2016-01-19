#!/bin/ruby
require 'scanf'
time = gets.strip
time = time.scanf("%d:%d:%d%s")

time[0] = 0 if time[0] == 12
time[0] += 12 if time[3].upcase == 'PM'

printf("%02d:%02d:%02d", time[0], time[1], time[2])