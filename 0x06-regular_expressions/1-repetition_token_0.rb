#!/usr/bin/env ruby

# Script accepts one arguement and passes it to a regular
# expression matching method.
puts ARGV[0].scan(/hbt{2,5}n/).join
