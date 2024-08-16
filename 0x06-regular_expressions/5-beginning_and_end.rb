#!/usr/bin/env ruby

# Regex must match exactly a string the starts with h and ends with n,
# and can have any single char in between.
puts ARGV[0].scan(/^h.n$/).join
