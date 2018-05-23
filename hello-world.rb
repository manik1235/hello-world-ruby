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

# a simple method
def tame_it( number_of_shrews )
  puts "Literally " + number_of_shrews.to_s
end

tame_it( 6 )

def tame( number_of_shrews )
  number_of_shrews.times{
    puts "Tamed a shrew"
  }
  # "return" is optional
  # return number_of_shrews
  # actually, this whole this is optional because ruby returns the last value used.
  # number_of_shrews
  # In this case, number_of_shrews.times
end

puts tame 5

# Finished Summary #5

# Complete works of William Shakespeare

def get_shakey 
  {"William Shakespeare"=>{"1"=>{"title"=>"The Two Gentlemen of Verona", "finished"=>1591}, "2"=>{"title"=>"The Taming of the Shrew", "finished"=>1591}, "3"=>{"title"=>"Henry VI, Part 2", "finished"=>1591}, "4"=>{"title"=>"Henry VI, Part 3", "finished"=>1591}, "5"=>{"title"=>"Henry VI, Part 1", "finished"=>1592}, "6"=>{"title"=>"Titus Andronicus", "finished"=>1592}, "7"=>{"title"=>"Richard III", "finished"=>1593}, "8"=>{"title"=>"Edward III", "finished"=>1593}, "9"=>{"title"=>"The Comedy of Errors", "finished"=>1594}, "10"=>{"title"=>"Love's Labour's Lost", "finished"=>1595}, "11"=>{"title"=>"Love's Labour's Won", "finished"=>1596}, "12"=>{"title"=>"Richard II", "finished"=>1595}, "13"=>{"title"=>"Romeo and Juliet", "finished"=>1595}, "14"=>{"title"=>"A Midsummer Night's Dream", "finished"=>1595}, "15"=>{"title"=>"King John", "finished"=>1596}, "16"=>{"title"=>"The Merchant of Venice", "finished"=>1597}, "17"=>{"title"=>"Henry IV, Part 1", "finished"=>1597}, "18"=>{"title"=>"The Merry Wives of Windsor", "finished"=>1597}, "19"=>{"title"=>"Henry IV, Part 2", "finished"=>1598}, "20"=>{"title"=>"Much Ado About Nothing", "finished"=>1599}, "21"=>{"title"=>"Henry V", "finished"=>1599}, "22"=>{"title"=>"Julius Caesar", "finished"=>1599}, "23"=>{"title"=>"As You Like It", "finished"=>1600}, "24"=>{"title"=>"Hamlet", "finished"=>1601}, "25"=>{"title"=>"Twelfth Night", "finished"=>1601}, "26"=>{"title"=>"Troilus and Cressida", "finished"=>1602}, "27"=>{"title"=>"Sir Thomas More", "finished"=>1604}, "28"=>{"title"=>"Measure for Measure", "finished"=>1604}, "29"=>{"title"=>"Othello", "finished"=>1604}, "30"=>{"title"=>"All's Well That Ends Well", "finished"=>1605}, "31"=>{"title"=>"King Lear", "finished"=>1606}, "32"=>{"title"=>"Timon of Athens", "finished"=>1606}, "33"=>{"title"=>"Macbeth", "finished"=>1606}, "34"=>{"title"=>"Antony and Cleopatra", "finished"=>1606}, "35"=>{"title"=>"Pericles, Prince of Tyre", "finished"=>1608}, "36"=>{"title"=>"Coriolanus", "finished"=>1608}, "37"=>{"title"=>"The Winter's Tale", "finished"=>1611}, "38"=>{"title"=>"Cymbeline", "finished"=>1610}, "39"=>{"title"=>"The Tempest", "finished"=>1611}, "40"=>{"title"=>"Cardenio", "finished"=>1613}, "41"=>{"title"=>"Henry VIII", "finished"=>1613}, "42"=>{"title"=>"The Two Noble Kinsmen", "finished"=>1614}}}
end

s = get_shakey

s["William Shakespeare"].each { |key, val|
  puts key
  puts val["title"]
}
  
# Lots of chaining of methods
def count_plays(year)
  s = get_shakey["William Shakespeare"]
    .select { |k, v|
      v["finished"] == year
    }.each { |key, val|
      puts val["title"]
    }.count
end

puts count_plays(1591)

# Adding variables inside of a string, pretty printing
def print_plays(year_from, year_to)
  get_shakey["William Shakespeare"]
    .select { |k, v|
      year_from <= v["finished"] &&
      year_to   >= v["finished"]
    }.each { |k, v|
      puts "#{v["title"].ljust(30)} #{v["finished"]}"
    }
end
print_plays(1600, 1605)

# Adding variables inside of a string, pretty printing, and changing the way it prints
def print_plays(year_from, year_to)
  get_shakey["William Shakespeare"]
    .select { |k, v|
      year_from <= v["finished"] &&
      year_to   >= v["finished"]
    }.each { |k, v|
      puts "#{v["finished"]} -> #{v["title"]}"
    }
end
print_plays(1600, 1605)

# some good control expression docs
# http://ruby-doc.org/core-2.5.1/doc/syntax/control_expressions_rdoc.html

def hungry?(time_of_day_in_hours)
  if time_of_day_in_hours < 12
    puts "Me not hungry."
	false
  else
    puts "Me hungry."
    true
  end
end

def eat_an(what)
  puts "Me eat #{what}.\n"
end

eat_an 'apple' if hungry?(14)

eat_an 'apple' if hungry?(10)

# Finished through summary #6

# starting on classes!
# Blurbalizer
# it appears that class names starting with a capital letter are enforced.

# set symbols for certain parts
class Blurb
  attr_accessor :content, :time, :mood
  
  def initialize(mood, content="")
    @time = Time.now
    @content = content[0..39]
    @mood = mood
  end
end

Blurb.new.time

# Stopping at "You've Taught Your App to Reject Worthless Things"