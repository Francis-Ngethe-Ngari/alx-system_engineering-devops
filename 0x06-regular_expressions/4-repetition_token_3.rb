#!/usr/bin/env ruby

# Script accepts arg and passes it to regex matching method
puts ARGV[0].scan(/hbn|hbt*n/).join  
