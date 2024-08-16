#!/usr/bin/env ruby

# Script accepts arg and passed it to regex for matching
puts ARGV[0].scan(/h[b]tn/).join
