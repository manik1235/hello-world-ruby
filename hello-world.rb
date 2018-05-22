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

## Summary #2

# The given example variable:
poem = """My toast has flown from my hand
And my toast has gone to the moon.
But when I saw it on television,
Planting our flag on Halley's comet,
More still did I want to eat it."""
# Hey! triple quotes work in Ruby like they do in Python!

puts poem + "\n\n"

# Replaces all instances of "toast" with "honeydew". Global Substitute
puts poem.gsub("toast", "honeydew") + "\n\n"

# Replaces first instances of "toast" with "honeydew". Substitute
puts poem.sub("toast", "honeydew") + "\n\n"

puts poem.reverse + "\n\n"

# Splits it into an array of the lines and reverses them. Joins a new line on to the end of each line in the array
puts poem.lines.reverse.join("\n")

# ruby docs for strings
# http://ruby-doc.org/core-2.5.1/String.html

## Summary #3

# Empty Hash
books = {}

# Apparently multiline comments with =begin and =end are annoying in ruby, so use # at the beginning of each line.
# Here’s our rating system:

  # :splendid → a masterpiece
  # :quite_good → enjoyed, sure, yes
  # :mediocre → equal parts great and terrible
  # :quite_not_good → notably bad
  # :abyssmal → steaming wreck

puts books
books["Gravitys Rainbow"] = :splendid
# puts the whole hash
puts books
# puts just the rating of the given item
puts books["Gravitys Rainbow"]

# A colon in front of the word makes it a "symbol", which are cheaper than strings, because they're stored only once.
books["The deep end"] = :abyssmal
books["Living colors"] = :mediocre

puts books
puts books.length

# Replace/update the rating for "Gravitys Rainbow"
books["Gravitys Rainbow"] = :quite_not_good

puts books
puts books.length

puts books.keys
puts books.values
# Appears to print the keys and values in the same order, but I'm doubting that's guaranteed...

# Example books from "Are You Harsh?"
# Either set works, just one is strings and one is symbols. Not sure why they chose one over the other.
books = {"Gravitys Rainbow"=>"splendid", "The deep end"=>"abyssmal", "Living colors"=>"mediocre", "Bumblebees"=>"mediocre"}
#books = {"Gravitys Rainbow"=>:splendid, "The deep end"=>:abyssmal, "Living colors"=>:mediocre, "Bumblebees"=>:mediocre}
puts books

ratings = Hash.new {0}

books.values.each { |rate|
	ratings[rate] += 1
}

puts ratings

# From the lesson
# Don’t worry if you don’t understand everything that is going on here. It will be revealed later.
# I am very curious about the pipes... looks like; for each value in books, take that rating as the key to ratings. increase it
# 	by one. I think the Hash.new {0} sets it as the default type to integers, because if I change it to {"0"} it throws
#	an error about not being able to implicitly convert.

# Ah so they're called 'Blocks'
5.times { print "Odelay! " } # The spaces before and after the {}'s are there by convention, apparently. 
							 # A style guide would be nice to find. 
               # Here's the first result! https://github.com/bbatsov/ruby-style-guide

# This outputs the memory location of the method, I think               
puts 5.times

5.times { |time|
  puts time  
}

# Reached Summary #4