#!/usr/bin/env ruby

# Script accepts arg and passed it to regex for matching
puts ARGV[0].scan(/hb?t?n/).join
