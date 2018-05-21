#!/usr/bin/env ruby

# My first foray into Ruby development!
# Following the guide at https://ruby.github.io/TryRuby/
puts 2 + 6
puts "Andrew"
puts "Andrew".reverse
puts "Andrew".length
puts "Andrew" * 5

# Fails because it's not a method for a number
##puts 40.reverse
# Interesting, the error happened at the beginning, so it must compile (or check) the whole thing before running?
# But then everything else happened just fine.

puts 40.to_s.reverse
# but nothing after the error appears to work. commenting out the error.

# to_s = to string 
# to_i = to integer
# to_a = to array

# Arrays
ticket = [12, 47, 35]
puts ticket # The interactive window puts the structure [12, 47, 35] but puts prints them with a line break
puts ticket.max

puts "ticket: \n" + ticket.to_s + "\n"
# Sort, return a new array
puts "ticket.sort: \n" + ticket.sort.to_s + "\n"
puts "ticket: \n" + ticket.to_s + "\n"
# Sort, in-place
puts "ticket.sort!: \n" + ticket.sort!.to_s + "\n"
puts "ticket: \n" + ticket.to_s + "\n"

puts ticket[0]
puts ticket[1]
puts ticket[2]