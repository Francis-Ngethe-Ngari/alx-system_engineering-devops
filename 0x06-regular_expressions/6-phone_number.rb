#!/usr/bin/env ruby

# Regex must match a 10-digit number
puts ARGV[0].scan(/^\d{1,10}$/).join
