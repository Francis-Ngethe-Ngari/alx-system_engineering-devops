#!/usr/bin/env ruby

# check if arguement is passed
if ARGV.length != 1
  puts 'Usage:./0-simply_match_school.rb <string>'
  exit
end

# Take arguement from command line
text = ARGV[0]

# Regular Expression pattern
pattern = /School/

# Check if a match
if text.match?(pattern)
  puts 'Match found'
else
  puts 'Match not found!'
end
